#Admin file for Visit

from django.urls  import reverse
from django.forms import TextInput, Textarea
from django.db import models
from django.contrib import admin
from django.contrib.admin import site
from django.contrib.admin import site as admin_site

admin.site.site_title = 'Medical Records Administration'
admin.site.site_header = 'Medical Records Visits Administration'

# Register your models here.

from .models import  Biopsy,  BiopsyLocation, BiopsyName, BiopsyResult, Complaint, Dose, Diagnosis, Exam, Finding, HearingTest, Treatment, Prescription, Location, ComplaintName, Hearing, ExamName, Reminder, MedicineBrand, MedicineGeneric,  Patient, MedicinePayment, HearingResult, NumOfDays, MedicineQuantity, Visit, VisitPayment

from .forms import BiopsyForm, ComplaintForm, DiagnosisForm, ExamForm

mymodels = [ Dose, Diagnosis, HearingTest, Treatment, ComplaintName, BiopsyName, BiopsyResult, BiopsyLocation, Location, Hearing, ExamName, Reminder, MedicineBrand, MedicineGeneric, Finding, VisitPayment, MedicinePayment, HearingResult, NumOfDays, MedicineQuantity] 

def register_hidden_models(*model_names):
	for m in model_names:
		ma = type(
			str(m)+'Admin',
			(admin.ModelAdmin,),
			{
				'get_model_perms': lambda self, request: {}
			})
		admin.site.register(m, ma)

register_hidden_models(mymodels)

class BiopsyAdminInline(admin.TabularInline):
	model = Biopsy
	classes = ['collapse']
	extra = 1

class ComplaintAdminInline(admin.TabularInline):
	model = Complaint
	extra = 1

class DiagnosisAdminInline(admin.TabularInline):
	model = Diagnosis
	classes = ['collapse']
	extra = 1	
	
class ExamAdminInline(admin.TabularInline):
	model = Exam
	classes = ['collapse']
	extra = 1

class FindingAdminInline(admin.TabularInline):
	model = Finding
	extra = 1

class HearingAdminInline(admin.TabularInline):
	model = Hearing
	classes = ['collapse']
	extra = 1

def prescription_detail(obj):
	return '<a href="{}">View</a>'.format(
		reverse('prescriptions:admin_prescription_detail', args=[obj.id]))
	prescription_detail.allow_tags = True

def prescription_pdf(obj):
	return '<a href="{}">PDF</a>'.format(
		reverse('prescription:admin_prescription_pdf', args=[obj.id]))
prescription_pdf.allow_tags = True
prescription_pdf.short_description = 'Prescription PDF'


class PrescriptionAdminInline(admin.StackedInline):
	model = Prescription
	extra = 1


@admin.register(Visit)
class VisitAdmin(admin.ModelAdmin):
	view_on_site = False
	fieldsets = (
	('Date & Patient:', {
   'fields': ('visit_date', 'patient', 'visit_payment', 'medicine_payment')
   }),
   )

	inlines = (ComplaintAdminInline,
		PrescriptionAdminInline, 
		DiagnosisAdminInline, 
		BiopsyAdminInline, 
		HearingAdminInline, 
		ExamAdminInline 
		) 
