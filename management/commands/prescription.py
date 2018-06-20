# scripts/prescription.py

# ~ import os
# ~ import django

#os.environ("DJANGO_SETTINGS_MODULE", "medrec.settings")

#django.settings.configure()
#django.setup()
from django.core.management.base import BaseCommand, CommandError
from django.http import HttpResponse
#from django.db import models

from visit.models import * # Visit, Prescription
from patient.models import Patient

import datetime
from datetime import date

from reportlab.lib.pagesizes import HALF_LETTER
from reportlab.lib.units import mm
from reportlab.pdfgen import canvas

#def run():
#class Command(BaseCommand):
''' This is where the code goes'''
help = 'Generate & print prescription forms'
#def handle(self, *args, **options):
vi = Visit.objects.latest('id')
vi_id = vi.id
print(vi_id)
vi_pat = vi.patient
print(vi_pat)
pa_id = vi.patient.id
print(pa_id)
vi.patient.town
vi.patient.gender
age = (date.today() - vi.patient.date_of_birth) / 365.25

pr = Prescription.objects.filter(visit_id = vi.id)
for p in pr:
	print(p.medicine_generic, p.medicine_brand, p.medicine_dose)
	print(p.medicine_quantity, p.medicine_reminder)

#def prescription(request):
response = HttpResponse(content_type='application/pdf')
response['Content-Disposition'] = 'attachment; filename= "prescription.pdf"'
pr1 = canvas.Canvas("prescription.pdf")
''' This draws the header info on the prescription form.'''
pr1.drawString(159, 22, vi.patient)
pr1.drawString(159,105,mm.age)
pr1.drawString(159,120,mm,vi.patient.gender)
pr1.drawString(154,22,mm,vi.patient.town)
pr1.drawString(154, 105, mm, date.today())

pr1.showPage()
pr1.save()
response.write(pdf)
#return response

	
