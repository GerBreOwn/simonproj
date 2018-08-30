from django.db import models
from django.db import connection
from django.db.models import F
from django.db.models import signals
from django.contrib.auth.models import User
from django.utils import timezone
from django.http import HttpResponseRedirect
from django.urls import reverse
from django.apps import AppConfig
import datetime
from crum import get_current_user
from django.contrib import admin
from versatileimagefield.fields import VersatileImageField
from django.core.exceptions import ValidationError
# ~ from django_counter_field_py3 import CounterField
# ~ from django_counter_field_py3 import CounterMixin, connect_counter

def validate_date(date_of_birth):
		if date_of_birth == datetime.datetime.today:
			raise ValidationError('Date of Birth cannot equal today')
			
def present_or_future_date(value):
    if value > datetime.date.today():
        raise forms.ValidationError("The date cannot be in the future")
    return value			

class CommonInfo(models.Model):
	is_active = models.BooleanField(default = True, editable = False)
	created_on = models.DateTimeField(auto_now_add = True, editable = False)
	created_by = models.ForeignKey('auth.User', blank=True, null=True, default = None,editable = False, on_delete=models.SET_DEFAULT, related_name = "+")
	modified_on = models.DateTimeField(auto_now = True, editable = False)
	modified_by = models.ForeignKey('auth.User', blank = True, null = True, default = None, editable = False, on_delete=models.SET_DEFAULT, related_name = '+')

	def get_model_perms(self, *args, **kwargs):
		perms = admin.ModelAdmin.get_model_perms(self, *args, **kwargs)
		perms['list_hide'] = True
		return perms

	def save(self, *args, **kwargs):
		user = get_current_user()
		if user and not user.pk:
			user = None
		if not self.pk:
			self.created_by = user
		self.modified_by = user
		super(CommonInfo, self).save(*args, **kwargs)

	class Meta:
	   abstract = True


class Occupation(CommonInfo):
	id = models.AutoField(primary_key=True)
	name = models.CharField(max_length=50, blank = True, null = True, default = None)
	
	def __str__(self):
		return '%s' % (self.name)
		
	def save(self, *args, **kwargs):
		for field_name in ['name']:
			val = getattr(self, field_name, False)
			if val:
				setattr(self, field_name, val.capitalize())
		super(Occupation, self).save(*args, **kwargs)
		
	class Meta:
		ordering = ['name']

class Patient(CommonInfo):
	id = models.AutoField(primary_key=True)
	first_name = models.CharField(max_length=25, db_index = True)
	last_name = models.CharField(max_length=25, db_index = True)
	middle_initial = models.CharField(max_length=1, blank=True, null=True)
	contact_num = models.CharField(max_length=15, blank=True, null=True)
	address = models.CharField(max_length=50, blank=True, null=True)
	town = models.ForeignKey('Town', default = None, on_delete=models.DO_NOTHING)
	date_of_birth = models.DateField(("Date of birth"),validators=[validate_date])
	pat_pic = VersatileImageField('Pat_Pic', upload_to='images/',  blank=True, null=True)
	occupation = models.ForeignKey('Occupation', blank=True, null=True, default = None, on_delete=models.DO_NOTHING)
	email = models.EmailField(blank=True, null=True)
	GENDER = (('F', 'Female'),('M', 'Male'),)
	gender = models.CharField(max_length=1, choices=GENDER,  default = 'F', help_text = 'Select Gender')
	
	class Meta:
		ordering = ['last_name', 'first_name']
	
	def __str__(self):
		return '%s, %s' % (self.last_name, self.first_name)
	@property
	def age(self) -> int:
		diff = date.today() - self.date_of_birth
		return diff.year

	
		
class Province(CommonInfo):
	id = models.AutoField(primary_key=True)
	name = models.CharField(max_length=30, unique=True)
	
	def __str__(self):
		return '%s' % (self.name)
		
	def save(self, *args, **kwargs):
		for field_name in ['name']:
			val = getattr(self, field_name, False)
			if val:
				setattr(self, field_name, val.capitalize())
		super(Province, self).save(*args, **kwargs)
	
	class Meta:
		ordering = ['name']

class Town(CommonInfo):
	id = models.AutoField(primary_key=True)
	name = models.CharField(max_length=25, blank = False, null = False, unique = True)
	zip_code = models.CharField(max_length=10, blank=True, null=True)
	prov = models.ForeignKey('Province', default = None, blank = True, null = True,  on_delete=models.DO_NOTHING)
	
	def __str__(self):
		return '%s' % (self.name)

	def save(self, *args, **kwargs):
		for field_name in ['name']:
			val = getattr(self, field_name, False)
			if val:
				setattr(self, field_name, val.capitalize())
		super(Town, self).save(*args, **kwargs)
		
	class Meta:
		ordering = ['name']

class Image(models.Model):
	name = models.CharField(max_length=500)
	picfile = models.ImageField(upload_to = 'images/', null = True, blank = True, verbose_name = "")

	def __str__(self):
		return self.name + ": " + str(self.imagefile)
