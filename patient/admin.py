#Admin file for Patient

from django.contrib import admin
from django.contrib.admin import site
from djangoql.admin import DjangoQLSearchMixin
from djangoql.schema import StrField, DjangoQLSchema
from .models import  Patient, Province, Town, Occupation

admin.site.disable_action('delete_selected')

admin.site.site_title = 'Medical Records Administration'
admin.site.site_header = 'Medical Records Patient Administration'

# Register your models here.
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
	view_on_site = False
	list_display = ('last_name', 'first_name', 'middle_initial', 'date_of_birth', 'contact_num', 'address', 'gender', 'email', 'town','occupation', 'pat_pic') #'town','occupation',

	fields = [('last_name', 'first_name', 'middle_initial'),
	('gender','date_of_birth'),
	('contact_num', 'address', 'town'),
	('email', 'occupation')]

	search_fields = ['last_name', 'first_name']
	
