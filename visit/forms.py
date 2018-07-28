from django import forms
from django.forms import Widget
from django.contrib.admin import widgets
from .models import Prescription, MedicineBrand
from admin_reports import Report
import datetime

class PaymentReportForm(forms.Form):
	from_date = forms.DateField(label = "From:", widget=widgets.AdminDateWidget())
	to_date = forms.DateField(label = "To:", widget=widgets.AdminDateWidget())
	
class PaymentReport(Report):
	def aggregate(self, from_date=None, to_date=None, **kwargs):
		# ~ visit-total = Visit.objects.aggregate(Sum(Visit.visit_amount))
		# ~ medic-total = Visit.objects.aggregate(Sum(Visit.medicine_amount))
		Visit.objects.aggregate(Sum(Visit.visit_amount))
		Visit.objects.aggregate(Sum(Visit.medicine_amount))
		fields = [Visit.patient, Visit.visit_amount, Visit.medicine_amount]
		has_totals = True
		title = "Payments Report"
		list_per_page = 20
		form_class = PaymentReportForm
		return

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
		widgets = {
			'diagnosis': forms.TextInput(attrs = {'size': 30}),
			'remarks': forms.TextInput(attrs = {'size': 30}),
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
			'hearing_test': forms.Select(attrs = {'size': 30}),
			'hearing_result': forms.Select(attrs = {'size': 30}),
			'hearing_text': forms.TextInput(attrs = {'size': 30}),
		}

class PrescriptionForm(forms.ModelForm):
	class Meta:
		model =  Prescription
		fields = ('medicine_brand', 'medicine_generic','medicine_dose','medicine_duration_days', 'medicine_reminder','medicine_quantity')
		widgets = {
			'medicine_brand': forms.Select(attrs = {'size': 15}),
			'medicine_generic': forms.Select(attrs = {'size': 15}),
			'medicine_dose': forms.Select(attrs = {'size': 10}),
			'medicine_duration_days': forms.TextInput(attrs = {'size': 5}),
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
			
