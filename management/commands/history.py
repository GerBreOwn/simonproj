# scripts/history.py

from django.db import models
from visit.models import *
import datetime
from datetime import date

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
		
	
