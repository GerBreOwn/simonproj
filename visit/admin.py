#Admin file for Visit

from django.forms import TextInput, Textarea
from django.db import models
from django.contrib import admin
from django.contrib.admin import site
from django.contrib.admin import site as admin_site
from djangoql.admin import DjangoQLSearchMixin

#from django.core.urlresolvers import reverse

admin.site.site_title = 'Medical Records Administration'
admin.site.site_header = 'Medical Records Visits Administration'

# Register your models here.

from .models import  Biopsy, Complaint, Dose,   Exam, HearingTest, HearingResult, Visit, Finding, Treatment, Prescription, Location, ComplaintName, BiopsyName, Hearing, ExamName, Reminder, Medicine,  Patient, VisitCharge, MedicineCharge

from .forms import BiopsyForm, ComplaintForm, ExamForm

mymodels = [ Dose,   HearingTest, HearingResult, Treatment, Location, ComplaintName, BiopsyName, Hearing, ExamName, Reminder, Medicine, Finding, VisitCharge, MedicineCharge,]

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

#class HiddenModelAdmin(admin.ModelAdmin):
	#def get_model_perms(self, *args, **kwargs):
		#perms = admin.ModelAdmin.get_model_perms(self, *args, **kwargs)
		#perms['list_hide'] = True
		#return perms

class BiopsyAdminInline(admin.TabularInline):
	model = Biopsy
	classes = ['collapse']
	extra = 1

class ComplaintAdminInline(admin.TabularInline):
	model = Complaint
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

def presc_pdf(obj):
	return '<a href="{}">PDF</a>'.format(
		reverse('presc:admin_presc_pdf', args=[obj.id]))
presc_pdf.allow_tags = True
presc_pdf.short_description = 'Prescription PDF'


class PrescriptionAdminInline(admin.TabularInline):
	# list_display = ['id',
					# # ...
					# #presc_detail,
					# presc_pdf]
	model = Prescription
	extra = 1


@admin.register(Visit)
class VisitAdmin(admin.ModelAdmin):
	view_on_site = True
	fieldsets = (
	('Date & Patient:', {
   'fields': (('visit_date', 'patient'), ('visit_payment', 'medicine_payment'))
   }),
   )



	inlines = (ComplaintAdminInline, PrescriptionAdminInline, BiopsyAdminInline, HearingAdminInline, ExamAdminInline )
