import os
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
from reportlab.lib.pagesizes import A5 #, HALF_LETTER
from reportlab.lib.units import mm, inch
from reportlab.pdfbase.pdfmetrics import stringWidth
from reportlab.rl_config import defaultPageSize

from reportlab.pdfbase import pdfdoc
pdfdoc.PDFCatalog.OpenAction = '<</S/JavaScript/JS(this.print\({bUI:true,bSilent:false,bShrinkToFit:true}\);)>>'

''' This is where the code goes'''
@staff_member_required
def prescription_view(request):
	response = HttpResponse(['content'],content_type='application/pdf')
	response['Content-Disposition'] = 'inline; filename="prescription.pdf"'

	PAGE_HEIGHT = defaultPageSize[1]; PAGE_WIDTH = defaultPageSize[0]
	BottomMargin = 0.4 * inch
	TopMargin = 0.4 * inch
	LeftMargin = .1 * inch  
	RightMargin = .1 * inch
	ContentBottomMargin = TopMargin + 0.25 * inch
	ContentTopMargin = BottomMargin + 0.35 * inch
	ContentLeftMargin = LeftMargin 
	ContentRightMargin = RightMargin 
	
	fs1 = 14 + 5
	fs2 = 12 + 5
	fs3 = 10 + 5
	fs4 = 9 + 5
	fs5 = 8 + 5
	
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


	lw1 = stringWidth(l1,'Helvetica-Bold', fs1)
	lw2 = stringWidth(l2, 'Helvetica', fs4)

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

	def coord(x,y,unit=mm):
		x, y = x * unit, y * unit
		return x, y

	#pr1 = canvas.Canvas("prescription.pdf",pagesize = HALF_LETTER)
	#pr1 = canvas.Canvas(buffer)
	pr1 = canvas.Canvas(response)
	
	#pr1.PageSize = HALF_LETTER
	pr1.pagesize = A5
	
	''' This draws the header info on the prescription form.
	y = up from bottom
	x = distance from left side
	'''

	pr1.setLineWidth(.5)

	## This generates the doctor's information
	### Line 1 = Doctor Name

	pr1.setFont('Helvetica', fs1)

	x = 10
	y = 200
	
	pr1.drawString(*coord(x, y, mm), str(l1))
		
	### Line 2 Diplomate
	pr1.setFont('Helvetica', fs3)
	x = 20
	y = 194
	pr1.drawString(*coord(x, y, mm), str(l2))
	
	### Line 3 Main Hospital
	pr1.setFont('Helvetica', fs2)
	x = 10
	y = 186
	pr1.drawString(*coord(x, y, mm), str(l3)) ## Main Hosp

	### Line 4 Mon-Fri AM line
	pr1.setFont('Helvetica', fs5)
	y = 179
	pr1.drawString(*coord(x, y, mm), 'Mon. - Fri. :')
	pr1.drawString(*coord(x + 20, y, mm), str(l4)) ## AM Hours

	### Line 5 Mon - Fri PM line
	y = 175
	pr1.drawString(*coord(x + 20, y, mm), str(l5)) ## PM hours
	## Affils
	pr1.setFont('Helvetica', fs2)
	pr1.drawString(*coord(82, y, mm), 'HOSPITAL AFFILIATIONS')

	### Line 6 Sat AM line
	pr1.setFont('Helvetica', fs5)
	y = 171
	pr1.drawString(*coord(x, y, mm), 'Saturday :')
	pr1.drawString(*coord(x + 20, y, mm), str(l4)) ## AM Hours

	### Line 6a NOPH
	pr1.setFont('Helvetica', fs5)
	pr1.drawString(*coord(82, y, mm), 'NOPH')

	### Line 7 Telephone
	y = 167
	pr1.setFont('Helvetica', fs5)
	pr1.drawString(*coord(x, y, mm), 'Tel. No. :')
	pr1.drawString(*coord(x + 20, y, mm), str(l6))

	### Line 7a Holy Child Hosp
	pr1.setFont('Helvetica', fs5)
	pr1.drawString(*coord(82, y, mm), 'Holy Child Hospital')

	### Line between heading & patient
	pr1.setFont('Helvetica', fs3)
	x = 10
	pr1.line(10*mm, 166*mm, 135*mm, 166*mm)
	pr1.line(10*mm, 165*mm, 135*mm, 165*mm)
	
	## This generates the patient's information
	pr1.setFont('Helvetica', fs5)
	pr1.drawString(*coord(10, 153, mm),'Patient')
	pr1.line(27*mm, 153*mm, 90*mm, 153*mm)
	pr1.drawString(*coord(27,153,mm), vi_pat)
	
	pr1.drawString(*coord(98, 153, mm), 'Age')
	pr1.line(105*mm, 153*mm, 115*mm, 153*mm)
	pr1.drawString(*coord(108, 153, mm), age)
	
	pr1.drawString(*coord(116, 153, mm), 'Sex')
	pr1.line(122*mm, 153*mm, 130*mm, 153*mm)
	pr1.drawString(*coord(124, 153, mm), vi_gen)

	pr1.drawString(*coord(10, 147, mm), 'Address')
	pr1.line(27*mm, 147*mm, 90*mm, 147*mm)
	pr1.drawString(*coord(27, 147, mm), vi_twn)

	pr1.drawString(*coord(98, 147, mm), 'Date')
	pr1.line(107*mm, 147*mm, 130*mm, 147*mm)
	pr1.drawString(*coord(108, 147, mm), today)

	x = 22
	y = 135
	
	pr2 = Prescription.objects.filter(visit_id = vi.id)
	for pr in pr2:
		
		mr = str(pr.medicine_reminder) + " for " + str(pr.medicine_duration_days) + " days."
		
		pr1.drawString(*coord(x, y, mm), str(pr.medicine_generic))
		
		pr1.drawString(*coord(x + 30, y, mm), str(pr.medicine_dose))
		
		pr1.drawString(*coord(x + 80, y ,mm), str(pr.medicine_quantity))
		
		pr1.drawString(*coord(x + 10, y - 5, mm), str(pr.medicine_brand))
		
		pr1.drawString(*coord(x, y - 10, mm), str(mr))
		
		pr1.line(x*mm, (y - 15)*mm, 120*mm, (y - 15)*mm )

		y = y - 20

	### Prescription footer data
	x = 85
	y = 30

	pr1.line(x*mm, y*mm, (x + 35)*mm, y*mm)
	pr1.drawString(*coord(x + 40, y, mm), 'M.D.')
	
	pr1.drawString(*coord(x, y - 4, mm), "Lic No.:")
	pr1.drawString(*coord(x + 18, y - 4, mm), str(l7))
	pr1.line((x + 18)*mm, (y - 4)*mm, (x + 40)*mm, (y - 4)*mm)

	pr1.drawString(*coord(x, y - 8, mm), "PTR No.")
	pr1.drawString(*coord(x + 18, y - 8, mm), str(l8))
	pr1.line((x + 18)*mm, (y - 8)*mm, (x + 40)*mm, (y - 8)*mm )

	pr1.drawString(*coord(x, y - 12, mm), "S2 No:")
	pr1.drawString(*coord(x + 18, y - 12, mm), str(l9))
	pr1.line((x + 18)*mm, (y - 12)*mm, (x + 40)*mm, (y - 12)*mm )
	
	# ~ p1 = os.popen('lpr', 'w')
	# ~ p1.write(str(pr1))
	# ~ p1.close()
	pr1.showPage()
	pr1.save()
	pdf = buffer.getvalue()
	buffer.close()
	response.write(pdf)
	return response



