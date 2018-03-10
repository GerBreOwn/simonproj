from django.contrib import admin

admin.site.site_title = 'Medical Records Administration'
admin.site.site_header = 'Medical Records Doctor Administration'
# Register your models here.

from .models import Doctor

mymodels = [Doctor]

admin.site.register(mymodels)

class DoctorAdmin(admin.ModelAdmin):
	view_on_site = False
