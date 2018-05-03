from django.contrib import admin
from django.contrib.admin import site
from djangoql.admin import DjangoQLSearchMixin, DjangoQLSchema
#from django.urls import reverse

admin.site.disable_action('delete_selected')

admin.site.site_title = 'Medical Records Administration'
admin.site.site_header = 'Medical Records Patient Administration'

# Register your models here.

from .models import  Patient, Province, Town, Occupation

mymodels = [Province, Town, Occupation]

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

@admin.register(Patient)
class Patient(admin.ModelAdmin):
	def has_delete_permission(self, request, obj=None):
		return False

	#view_on_site = False
	# list_display = ('last_name', 'first_name', 'middle_initial', 'date_of_birth', 'contact_num', 'address', 'town','gender', 'email', 'occupation', 'pat_pic')
	# fields = [('last_name', 'first_name', 'middle_initial'),('gender','date_of_birth'), ('contact_num', 'address', 'town'), ('email', 'occupation')]
	list_display = ('last_name', 'first_name', 'middle_initial', 'date_of_birth', 'contact_num', 'address', 'town','gender', 'email', 'occupation', 'pat_pic')
	fields = [('last_name', 'first_name', 'middle_initial'),('gender','date_of_birth'), ('contact_num', 'address', 'town'), ('email', 'occupation')]

	search_fields = ['last_name', 'first_name']

# class PatientQLSchema(DjangoQLSchema):
	# include = (Patient,)
	# suggest_options = {
		# Patient: ['last_name']
	# }

	# def get_fields(self, model):
		# if model == Patient:
			# return ['last_name']
		# return super(PatientQLSchema, self).get_fields(model)

# @admin.register(Patient)
# class CustomPatientAdmin(DjangoQLSearchMixin, PatientAdmin):
	# djangoql_schema = PatientQLSchema
