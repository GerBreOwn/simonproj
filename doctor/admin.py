#Admin file for Doctor
from django.contrib import admin

admin.site.site_title = 'Medical Records Administration'
admin.site.site_header = 'Medical Records Doctor Administration'
# Register your models here.

from .models import Doctor

@admin.register(Doctor)

class DoctorAdmin(admin.ModelAdmin):
	pass
	#list_display = ('first_name', 'last_name', 'suffix',  'telephone', 'lic_no', 'ptr_no','s2_no')#'dr_off_hour',
	#fields = [('first_name', 'last_name', 'suffix'), ('telephone'), ('lic_no', 'ptr_no', 's2_no')] #'dr_off_hour',


