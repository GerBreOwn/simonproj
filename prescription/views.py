from django.shortcuts import render
from django.http import HttpResponse

import datetime
from datetime import date
from dateutil.relativedelta import *

from visit.models import * 

from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import HALF_LETTER
from reportlab.lib.units import mm


# Create your views here.

def coord(x,y,unit=1):
	x, y = x* unit, y * unit
	return x, y

def prescription_pdf(request):
	response = HttpResponse(content_type = 'application/pdf')
	response['Content-Disposition'] = 'attachment; filename = "prescription.pdf"'
	
	vi = Visit.objects.latest('id')
	vi_id = vi.id
	vi_pat = str(vi.patient)
	pa_id = vi.patient.id
	vi_twn = str(vi.patient.town)
	vi_gen = str(vi.patient.gender)
	dob = vi.patient.date_of_birth
	age = str(relativedelta(date.today(), dob).years)
	today = str(date.today())
	
	pr1 = canvas.Canvas(response)
	
	pr1.setpagesize(HALF_LETTER)
	pr1.setFont('Helvetica', 10)
	pr1.setLineWidth(.5)
	
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
		x -= 20
	pr1.showPage()
	pr1.save()
	response.write(pdf)
	return response
	
