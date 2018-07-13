#Admin file for Doctor
from django.contrib import admin

admin.site.site_title = 'Medical Records Administration'
admin.site.site_header = 'Medical Records Doctor Administration'
# Register your models here.

from .models import Doctor, Hospital

#mymodels = [Doctor, Hospital]

# ~ def register_hidden_models(*model_names):
	# ~ for m in model_names:
		# ~ ma = type(
			# ~ str(m)+'Admin',
			# ~ (admin.ModelAdmin,),
			# ~ {
				# ~ 'get_model_perms': lambda self, request: {}
			# ~ })
		# ~ admin.site.register(m, ma)

# ~ register_hidden_models(mymodels)

@admin.register(Doctor)

class DoctorAdmin(admin.ModelAdmin):
	view_on_site = False
	list_display = ('first_name', 'last_name', 'suffix', 'diplomate', 
	'hosp_main', 'hours_am', 'hours_pm', 'telephone', 'lic_no', 'ptr_no','s2_no')
	fields = [('first_name', 'last_name'), ('suffix'), 
	('diplomate'),('hosp_main'), ('hosp_affil'), ('hours_am', 
	'hours_pm'), ('telephone'), ('lic_no', 'ptr_no'), ('s2_no')]


