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
from reportlab.lib.pagesizes import A5 , HALF_LETTER
from reportlab.lib.units import mm, inch
from reportlab.pdfbase.pdfmetrics import stringWidth
from reportlab.rl_config import defaultPageSize
from reportlab.lib import colors

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
	
	fs19 = 19 #1
	fs17 = 17 #2
	fs14 = 14 #3
	fs12 = 12 #4
	fs11 = 11 #5
	
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


	lw1 = stringWidth(l1,'Helvetica-Bold', fs19)
	lw2 = stringWidth(l2, 'Helvetica', fs12)

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
	
	pr1.PageSize = HALF_LETTER
	#pr1.pagesize = A5
	
	''' This draws the header info on the prescription form.
	y = up from bottom
	x = distance from left side
	'''

	pr1.setLineWidth(.5)

	## This generates the doctor's information
	### Line 1 = Doctor Name

	
	width , height  = HALF_LETTER
	x = 20
	y = 270
	pr1.setFont('Helvetica-Bold', fs19)
	pr1.drawString(*coord(x, y, mm), str(l1))
		
	### Line 2 Diplomate
	pr1.setFont('Helvetica', fs12)
	x = 28
	y -= 5 # 270
	pr1.drawString(*coord(x, y, mm), str(l2))
	
	### Line 3 Main Hospital
	pr1.setFont('Helvetica-Bold', fs12)
	x = 15
	y -= 15 # 260
	pr1.drawString(*coord(x, y, mm), str(l3)) ## Main Hosp

	### Line 4 Mon-Fri AM line
	pr1.setFont('Helvetica', fs11)
	y -= 5 # 250
	pr1.drawString(*coord(x, y, mm), 'Mon. - Fri. :')
	pr1.drawString(*coord(x + 20, y, mm), str(l4)) ## AM Hours

	### Line 5 Mon - Fri PM line
	y -= 5
	pr1.drawString(*coord(x + 20, y, mm), str(l5)) ## PM hours
	## Affils
	pr1.setFont('Helvetica-Bold', fs12)
	pr1.drawString(*coord(x + 90, y, mm), 'HOSPITAL AFFILIATIONS')

	### Line 6 Sat AM line
	pr1.setFont('Helvetica', fs11)
	y -= 5
	pr1.drawString(*coord(x, y, mm), 'Saturday :')
	pr1.drawString(*coord(x + 20, y, mm), str(l4)) ## AM Hours

	### Line 6a NOPH
	pr1.setFont('Helvetica', fs11)
	pr1.drawString(*coord(x + 90, y, mm), 'NOPH')

	### Line 7 Telephone
	y -= 5
	pr1.setFont('Helvetica', fs11)
	pr1.drawString(*coord(x, y, mm), 'Tel. No. :')
	pr1.drawString(*coord(x + 20, y, mm), str(l6))

	### Line 7a Holy Child Hosp
	pr1.setFont('Helvetica', fs11)
	pr1.drawString(*coord(x + 90, y, mm), 'Holy Child Hospital')

	### Line between heading & patient
	pr1.setFont('Helvetica', fs12)
	y -= 5
	pr1.line(x * mm, y * mm, x + 170 * mm, y * mm)
	y -= 1
	pr1.line(x * mm, y * mm, x + 170 * mm, y * mm)
	
	## This generates the patient's information
	pr1.setFont('Helvetica', fs11)
	y -= 5
	pr1.drawString(*coord(x, y, mm),'Patient')
	pr1.line(x + 25*mm, y*mm, 90*mm, y*mm)
	pr1.drawString(*coord(x + 15,y,mm), vi_pat)
	
	pr1.drawString(*coord(105, y, mm), 'Age')
	pr1.line(113*mm, y*mm, 124*mm, y*mm)
	pr1.drawString(*coord(115, y, mm), age)
	
	pr1.drawString(*coord(126, y, mm), 'Sex')
	pr1.line(134*mm, y*mm, 143*mm, y*mm)
	pr1.drawString(*coord(136, y, mm), vi_gen)

	y -= 6

	pr1.drawString(*coord(x, y, mm), 'Address')
	pr1.line(x + 27 *mm, y*mm, 90*mm, y*mm)
	pr1.drawString(*coord(x + 15, y, mm), vi_twn)

	pr1.drawString(*coord(105, y, mm), 'Date')
	pr1.line(115*mm, y*mm, 140*mm, y*mm)
	pr1.drawString(*coord(115, y, mm), today)

	x += 10
	y -= 5
	
	pr2 = Prescription.objects.filter(visit_id = vi.id)
	for pr in pr2:
		y -= 5
		mr = str(pr.medicine_reminder) + " for " + str(pr.medicine_duration_days) + " days."
		
		pr1.setFont('Helvetica-Bold', fs12)
		pr1.setFillColor(colors.green)
		pr1.drawString(*coord(x, y, mm), str(pr.medicine_generic))
		
		pr1.setFont('Helvetica', fs11)
		pr1.setFillColor(colors.black)
		pr1.drawString(*coord(x + 40, y, mm), str(pr.medicine_dose))
		
		pr1.drawString(*coord(x + 80, y ,mm), str(pr.medicine_quantity))

		pr1.setFillColor(colors.blue)
		pr1.drawString(*coord(x + 10, y - 5, mm), str(pr.medicine_brand))
		pr1.setFillColor(colors.black)
		
		pr1.drawString(*coord(x, y - 10, mm), str(mr))
		
		pr1.line(x*mm, (y - 15)*mm, 120*mm, (y - 15)*mm )

		y = y - 20

	### Prescription footer data
	x = 85
	y = 30
	pr1.setFont('Helvetica', fs12)
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



