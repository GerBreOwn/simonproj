# scripts/prescription.py

from django.core.management.base import BaseCommand, CommandError
from django.http import HttpResponse

#from .visit.models import * 
from .models import Visit, Prescription
from .doctor.models import *

import datetime
from datetime import date
from dateutil.relativedelta import *

from reportlab.lib.pagesizes import HALF_LETTER
from reportlab.lib.units import mm
from reportlab.pdfgen import canvas
from reportlab.pdfbase.pdfmetrics import stringWidth
from reportlab.rl_config import defaultPageSize
PAGE_WIDTH  = defaultPageSize[0]
PAGE_HEIGHT = defaultPageSize[1]


''' This is where the code goes'''
help = 'Generate & print prescription forms'
## Doctor data
dr = Doctor.objects.filter(id = 1)
for d1 in dr:
	print(d1.first_name, d1.last_name, d1.suffix)
	l1 = d1.first_name + d1.last_name + d1.suffix
	l2 = d1.diplomate
	l3 = d1.hosp_main
	l4 = d1.hours_am
	l5 = d1.hours_pm
	l6 = d1.telephone
	l7 = d1.lic_no
	l8 = d1.ptr_no
	l9 = d1.s2_no

	
lw1 = stringWidth(l1)	
lw2 = stringWidth(l2)


	
	
## Hospital data
	
	
## Visit data
vi = Visit.objects.latest('id')
vi_id = vi.id
vi_pat = str(vi.patient)
pa_id = vi.patient.id
vi_twn = str(vi.patient.town)
vi_gen = str(vi.patient.gender)
dob = vi.patient.date_of_birth
age = str(relativedelta(date.today(), dob).years)
today = str(date.today())

def coord(x,y,unit=1):
	x, y = x* unit, y * unit
	return x, y

## This generates the PDF file
	
response = HttpResponse(content_type='application/pdf')
response['Content-Disposition'] = 'attachment; filename= "prescription.pdf"'
pr1 = canvas.Canvas("prescription.pdf",pagesize = HALF_LETTER)
''' This draws the header info on the prescription form.'''

pr1.setLineWidth(.5)

## This generates the doctor's information
### Line 1 = Doctor Name

pr1.setFont('Helvetica', 14)
x = 200
pdf_text_object = canvas.beginText((PAGE_WIDTH - lw1) / 2.0, x)
pdf_text_object.textOut(l1)

### Line 2 Diplomate
pr1.setFont('Helvetica', 10)
x = 194
pdf_text_object = canvas.beginText((PAGE_WIDTH - lw2) / 2.0, x)
pdf_text_object.textOut(l2)

### Line 3 Main Hospital
pr1.setFont('Helvetica', 12)
x = 185
pr1.drawString(*coord(22,x, mm), l3)

### Line 4 Mon-Fri AM line
pr1.setFont('Helvetica', 10)
x = 183
pr1.drawString(*coord(22, x, mm), 'Mon. - Fri. :')
pr1.drawString(*coord(30, x, mm), l4)

### Line 5 Mon - Fri PM line
x = 180
pr1.drawString(*coord(30, x, mm), l5)
## Affils
pr1.setFont('Helvetica', 12)
pr1.drawString(*coord(90, x, mm), 'HOSPITAL AFFILIATIONS')

### Line 6 Sat AM line
pr1.setFont('Helvetica', 10)
x = 174
pr1.drawString(*coord(22, x, mm), 'Saturday :')
pr1.drawString(*coord(30, x, mm), l4)

### Line 7 Telephone
x = 171
pr1.drawString(*coord(22, x, mm), 'Tel. No. :')
pr1.drawString(*coord(30, x, mm), l6)

## This generates the patient's information
pr1.setFont('Helvetica', 10)
pr1.drawString(*coord(22,153,mm), vi_pat)
pr1.drawString(*coord(107, 153, mm), age)
pr1.drawString(*coord(122, 153, mm), vi_gen)
pr1.drawString(*coord(22, 145, mm), vi_twn)
pr1.drawString(*coord(106, 145, mm), today)

x = 135
y = 22
pr = Prescription.objects.filter(visit_id = vi.id)
for p in pr:
	pr1.drawString(*coord(y, x, mm), str(p.medicine_generic))
	pr1.drawString(*coord(y + 30, x, mm), str(p.medicine_dose))
	pr1.drawString(*coord(y + 80, x ,mm), str(p.medicine_quantity))
	pr1.drawString(*coord(y + 15, x - 5, mm), str(p.medicine_brand))
	pr1.drawString(*coord(y, x - 10, mm), str(p.medicine_reminder))
	x -= 30

	pr1.showPage()
	pr1.save()
	response.write(pdf)
#	return response

	
