# scripts/history.py

import os
import django

#BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.environ.default("DJANGO_SETTINGS_MODULE", "medrec.settings")

#django.settings.configure()
django.setup()

from django.db import models
from visit.models import Visit
import datetime
from datetime import date
from reportlab.pdfgen import canvas
from django.http import HttpResponse


def run():
	''' This is where the code goes'''
	
	vi = Visit.objects.latest('id')
	vi.id
	
	vi.patient
	vi.patient.id
	vi.patient.town
	vi.patient.gender
	age = (date.today() - vi.patient.date_of_birth) / 365.25
	
	pr = Prescription.objects.filter(visit_id = vi.id)
	for p in pr:
		print(p.medicine_generic, p.medicine_brand, p.medicine_dose)
		print(p.medicine_quantity, p.medicine_reminder)
		
def prescription(request):
	response = HttpResponse(content_type='application/pdf')
	response['Content-Disposition'] = 'attachment; filename= "prescription.pdf"'
	pr1 = canvas.Canvas(response)
	''' This draws the header info on the prescription form.'''
	pr1.drawstring(159, 22, mm, vi.patient)
	pr1.drawstring(159,105,mm.age)
	pr1.drawstring(159,120,mm,vi.patient.gender)
	pr1.drawstring(154,22,mm,vi.patient.town)
	pr1.drawstring(154, 105, mm, date.today())
	
	''' The list of prescriptions goes here.'''
	
	''' The pdf generation goes here.'''
	pr1.showPage()
	pr1.save()
	response.write(pdf)
	return response
	
