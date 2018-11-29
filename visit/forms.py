from django import forms
from django.core.exceptions import ValidationError

from django.forms import Widget, TextInput
from django.contrib.admin import widgets
from .models import Prescription, MedicineBrand, Visit
import datetime

class VisitForm(forms.ModelForm):
	class Meta:
		model = Visit
		fields = ('visit_date', 'patient', 'visit_payment', 'medicine_payment')


class BiopsyForm(forms.ModelForm):
	class Meta:
		widgets = {
			'biopsy_name': forms.Select(attrs = {'size': 25}),
			'biopsy_location': forms.Select(attrs = {'size': 25}),
			'biopsy_result': forms.Select(attrs = {'size': 25}),
		}

class ComplaintForm(forms.ModelForm):
	class Meta:
		widgets = {
			'complaintname': forms.Select(attrs = {'size': 25}),
			'location': forms.Select(attrs = {'size': 25}),
			'finding': forms.CheckboxSelectMultiple(attrs = {'size': 25}),
			'treatment': forms.CheckboxSelectMultiple(attrs = {'size': 25}),

		}

class DiagnosisForm(forms.ModelForm):
	class Meta:
		widget = {
			'diagnosis': forms.TextInput(attrs = {'size': 100}),
			'remarks': forms.TextInput(attrs = {'size': 100}),
		}


class ExamForm(forms.ModelForm):
	class Meta:
		widgets = {
			'exam': forms.Select(attrs = {'size': 30}),
			'exam_type': forms.Select(attrs = {'size': 30}),
			'exam_result': forms.Select(attrs = {'size': 30}),
			'exam_text': forms.TextInput(attrs = {'size': 30}),
		}

class HearingForm(forms.ModelForm):
	class Meta:
		widgets = {
			'hearing_test': forms.Select(attrs = {'size': '50'}),
			'hearing_result': forms.Select(attrs = {'size': '50'}),
			'hearing_text': forms.TextInput(attrs = {'size': '50'}),
		}

class PrescriptionForm(forms.ModelForm):
	class Meta:
		model =  Prescription
		fields = ('medicine_brand', 'medicine_generic','medicine_dose','medicine_duration_days', 'medicine_reminder','medicine_quantity')
		widgets = {
			'medicine_brand': forms.Select(attrs = {'size': 25}),
			'medicine_generic': forms.Select(attrs = {'size': 25}),
			'medicine_dose': forms.Select(attrs = {'size': 25}),
			'medicine_duration_days': forms.TextInput(attrs = {'size': 10}),
			'medicine_reminder': forms.TextInput(attrs = {'size': 50}),
			'medicine_quantity': forms.TextInput(attrs = {'size': 25}),
		}

		def __init__(self, *args, **kwargs):
			super().__init__(*args, **kwargs)
			self.fields['medicine_brand'].queryset = MedicineBrand.objects.none()

			if 'medicinegeneric' in self.data:
				try:
					medicinegeneric_id = int(self.data.get('medicinegeneric'))
					self.fields['medicinebrand'].queryset = medicinebrand.objects.filter(medicinegeneric_id=medicinegeneric_id).order_by('name')
				except (ValueError, TypeError):
					pass  # invalid input from the client; ignore and fallback to empty medicinebrand queryset
			elif self.instance.pk:
				self.fields['medicinebrand'].queryset = self.instance.medicinegeneric.medicinebrand_set.order_by('name')

