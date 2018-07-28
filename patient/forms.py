from django import forms
from django.contrib.admin import widgets
from django.forms import Widget

class PatientForm(forms.ModelForm):
	class Meta:
		widgets = {
			'last_name': forms.TextInput(attrs = {'size': 25}),
			'first_name': forms.TextInput(attrs = {'size': 25}),
			'middle_initial': forms.TextInput(attrs = {'size': 1}),
			'address': forms.TextInput(attrs = {'size': 25}),
			'town': forms.TextInput(attrs = {'size': 25}),
			'date_of_birth': forms.TextInput(attrs = {'size': 25}, validators=[present_or_future_date]),
			'email': forms.TextInput(attrs = {'size': 25}),
			'occupation': forms.TextInput(attrs = {'size': 25}),
		}
class ImageForm(forms.ModelForm):
	class Meta:
		model = Image
		fields = ["last_name", "first_name", "pat_pic"]
