from django.db import models
from crum import get_current_user
from django.contrib import admin
from django.urls import reverse
from patient.models import Town
# Create your models here.

class CommonInfo(models.Model):
	is_active = models.BooleanField(default = True, editable = False)
	created_on = models.DateTimeField(auto_now_add = True, editable = False)
	created_by = models.ForeignKey('auth.User', blank=True, null=True, editable = False, default = None, on_delete=models.SET_DEFAULT, related_name = "+")
	modified_on = models.DateTimeField(auto_now = True)
	modified_by = models.ForeignKey('auth.User', blank = True, null = True, default = None, editable = False, on_delete=models.DO_NOTHING, related_name = '+')
	

	def save(self, *args, **kwargs):
		user = get_current_user()
		if user and not user.pk:
			user = None
		if not self.pk:
			self.created_by = user
		self.modified_by = user
		super(CommonInfo, self).save(*args, **kwargs)

	class Meta:
		#ordering = ['-counter',]
		abstract = True

class Hospital(CommonInfo):
	id = models.AutoField(primary_key = True)
	hosp_name = models.CharField(max_length = 25, blank = True, null = True)
	
	class Meta:
		ordering = ['hosp_name']

	def save(self, *args, **kwargs):
		for field_name in ['hosp_name']:
			val = getattr(self, field_name, False)
			if val:
				setattr(self, field_name, val.capitalize())
		super(Hospital, self).save(*args, **kwargs)

	def __str__(self):
		return '%s' % ( self.hosp_name)
		

class Doctor(CommonInfo):
	id = models.AutoField(primary_key = True)
	first_name = models.CharField(max_length = 25, default = " ")
	last_name = models.CharField(max_length = 20, default = " ")
	suffix = models.CharField(max_length = 55, default = "M.D.")
	diplomate = models.CharField(max_length = 66)#, default = "Diplomate")
	hosp_main = models.ForeignKey('doctor.Hospital', on_delete=models.DO_NOTHING, default = None)# related_name = "Main", 
	#hosp_affil = models.ManyToManyField('doctor.Hospital', related_name = "Affiliate")#,blank=True, null=True, on_delete=models.DO_NOTHING, , default = None)
	hours_am = models.CharField(max_length = 25, blank = True, null = True)
	hours_pm = models.CharField(max_length = 25, blank = True, null = True)
	telephone = models.CharField(max_length = 12, blank = True, null = True)
	lic_no = models.CharField(max_length = 25, blank = True, null = True)
	ptr_no = models.CharField(max_length = 25, blank = True, null = True)
	s2_no = models.CharField(max_length = 25, blank = True, null = True)

	def __str__(self):
		return '%s %s' % (self.first_name, self.last_name)
		


