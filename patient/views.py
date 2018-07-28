from io import BytesIO
from django.core.management.base import BaseCommand, CommandError
from django.contrib.admin.views.decorators import staff_member_required
from django.http import HttpResponse

from visit.models import Visit, Prescription
from doctor.models import Doctor, Hospital
from patient.models import Patient

import datetime
from datetime import date
from dateutil.relativedelta import *

from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import HALF_LETTER
from reportlab.lib.units import mm
from reportlab.pdfbase.pdfmetrics import stringWidth
from reportlab.rl_config import defaultPageSize


''' This is where the code goes'''
@staff_member_required
def prescription_view(request):
	response = HttpResponse(content_type='application/pdf')
	response['Content-Disposition'] = 'attachment; filename="prescription.pdf"'

	buffer = BytesIO()

	help = 'Generate & print prescription forms'
	## Doctor data
	dr = Doctor.objects.get(id = 1)
	l1 = dr.first_name + " " + dr.last_name + " " + dr.suffix
	l2 = dr.diplomate
	l3 = dr.hosp_main
	l4 = dr.hours_am
	l5 = dr.hours_pm
	l6 = dr.telephone
	l7 = dr.lic_no
	l8 = dr.ptr_no
	l9 = dr.s2_no


	lw1 = stringWidth(l1,'Helvetica-Bold', 14)
	lw2 = stringWidth(l2, 'Helvetica', 9)

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
		x, y = x * unit, y * unit
		return x, y

	#pr1 = canvas.Canvas("prescription.pdf",pagesize = HALF_LETTER)
	pr1 = canvas.Canvas(buffer)
	#pr1 = canvas.Canvas(response)
	
	pr1.pagesize = HALF_LETTER
	
	''' This draws the header info on the prescription form.
	y = up from bottom
	x = distance from left side
	'''

	pr1.setLineWidth(.5)

	## This generates the doctor's information
	### Line 1 = Doctor Name

	pr1.setFont('Helvetica', 14)

	x = 10
	y = 200
	pr1.drawString(*coord(x, y, mm), str(l1))
	#pr1.drawCentredString(x, y, str(l1))
	
	### Line 2 Diplomate
	pr1.setFont('Helvetica', 10)
	x = 20
	y = 194
	pr1.drawString(*coord(x, y, mm), str(l2))
	
	### Line 3 Main Hospital
	pr1.setFont('Helvetica', 12)
	x = 10
	y = 188
	pr1.drawString(*coord(x, y, mm), str(dr.hosp_main))

	### Line 4 Mon-Fri AM line
	pr1.setFont('Helvetica', 10)
	y = 183
	pr1.drawString(*coord(x, y, mm), 'Mon. - Fri. :')
	pr1.drawString(*coord(x + 20, y, mm), str(l4))

	### Line 5 Mon - Fri PM line
	y = 179
	pr1.drawString(*coord(x + 20, y, mm), str(l5))
	## Affils
	pr1.setFont('Helvetica', 11)
	pr1.drawString(*coord(82, y, mm), 'HOSPITAL AFFILIATIONS')

	### Line 6 Sat AM line
	pr1.setFont('Helvetica', 10)
	y = 175
	pr1.drawString(*coord(x, y, mm), 'Saturday :')
	pr1.drawString(*coord(x + 20, y, mm), str(l4))

	### Line 6a NOPH
	pr1.setFont('Helvetica', 8)
	pr1.drawString(*coord(82, y, mm), 'NOPH')

	### Line 7 Telephone
	y = 171
	pr1.setFont('Helvetica', 10)
	pr1.drawString(*coord(x, y, mm), 'Tel. No. :')
	pr1.drawString(*coord(x + 20, y, mm), str(l6))

	### Line 7a Holy Child Hosp
	pr1.setFont('Helvetica', 8)
	pr1.drawString(*coord(82, y, mm), 'Holy Child Hospital')

	### Line between heading & patient
	pr1.setFont('Helvetica', 10)
	x = 10
	pr1.line(10*mm, 169*mm, 130*mm, 169*mm)
	pr1.line(10*mm, 168*mm, 130*mm, 168*mm)
	
	## This generates the patient's information
	pr1.setFont('Helvetica', 10)
	pr1.drawString(*coord(10, 153, mm),'Patient')
	pr1.line(24*mm, 153*mm, 90*mm, 153*mm)
	pr1.drawString(*coord(24,153,mm), vi_pat)
	
	pr1.drawString(*coord(98, 153, mm), 'Age')
	pr1.line(105*mm, 153*mm, 115*mm, 153*mm)
	pr1.drawString(*coord(107, 153, mm), age)
	
	pr1.drawString(*coord(116, 153, mm), 'Sex')
	pr1.line(122*mm, 153*mm, 130*mm, 153*mm)
	pr1.drawString(*coord(124, 153, mm), vi_gen)

	pr1.drawString(*coord(10, 147, mm), 'Address')
	pr1.line(24*mm, 147*mm, 90*mm, 147*mm)
	pr1.drawString(*coord(24, 147, mm), vi_twn)

	pr1.drawString(*coord(98, 147, mm), 'Date')
	pr1.line(107*mm, 147*mm, 130*mm, 147*mm)
	pr1.drawString(*coord(108, 147, mm), today)

	x = 135
	y = 22
	pr2 = Prescription.objects.filter(visit_id = vi.id)
	for pr in pr2:
		pr1.drawString(*coord(y, x, mm), str(pr.medicine_generic))
		pr1.drawString(*coord(y + 30, x, mm), str(pr.medicine_dose))
		pr1.drawString(*coord(y + 80, x ,mm), str(pr.medicine_quantity))
		pr1.drawString(*coord(y + 15, x - 5, mm), str(pr.medicine_brand))
		pr1.drawString(*coord(y, x - 10, mm), str(pr.medicine_reminder))
		x -= 25

	pr1.showPage()
	pr1.save()
	pdf = buffer.getvalue()
	buffer.close()
	response.write(pdf)
	return response



