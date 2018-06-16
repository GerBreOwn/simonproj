from django import forms
from django.forms import Widget

class BiopsyForm(forms.ModelForm):
	class Meta:
		widgets = {
			'biopsy_name': forms.Select(attrs = {'size': 25}),
			'biopsy_result': forms.Select(attrs = {'size': 25}),
			'biopsy_location': forms.Select(attrs = {'size': 25})
			
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
			'diagnosis': forms.Textarea(attrs = {'rows':5, 'cols':10}),
			'remarks': forms.Textarea(attrs = {'rows':5, 'col': 10}),
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
		widgets = {
			'medicine': forms.Select(attrs = {'size': 30}),
			'medicine_dose': forms.Select(attrs = {'size': 30}),
			'medicine_duration': forms.TextInput(attrs = {'size': 5}),
			'reminder': forms.TextInput(attrs = {'size': 30}),
		}
