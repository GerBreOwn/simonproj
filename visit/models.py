#Model file for Visit

from django.db import models
from django.db import connection
from django.db.models import F
from django.db.models import signals
from django.contrib.auth.models import User
from django.utils import timezone
from django.apps import AppConfig
from django.urls import reverse
import datetime
from crum import get_current_user
from django.contrib import admin
from patient.models import Patient
from doctor.models import Doctor

class CommonInfo(models.Model):
	is_active = models.BooleanField(default = True, editable = False)
	created_on = models.DateTimeField(auto_now_add = True, editable = False)
	created_by = models.ForeignKey('auth.User', blank=True, null=True, editable = False, default = None, on_delete=models.SET_DEFAULT, related_name = "+")
	modified_on = models.DateTimeField(auto_now = True)
	modified_by = models.ForeignKey('auth.User', blank = True, null = True, default = None, editable = False, on_delete=models.SET_DEFAULT)
	
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
		
	def count_changes(self):
		with connection.cursor() as cursor:
			cursor.execute("update self set counter =+ 1 where self.id = %s", [self.pk])

	class Meta:
		abstract = True

class Biopsy(CommonInfo):
	id = models.AutoField(primary_key=True)
	biopsy_name = models.ForeignKey('BiopsyName', blank = True, null = True, on_delete=models.SET_NULL)
	biopsy_location = models.ForeignKey('BiopsyLocation',blank = True, null = True, on_delete=models.SET_NULL)
	biopsy_result = models.ForeignKey('BiopsyResult',blank = True, null = True, on_delete=models.SET_NULL)
	visit = models.ForeignKey('Visit', blank = True, null = True, on_delete=models.SET_NULL)

	class meta:
		#app_label = 'Biopsy'
		app_label = 'Biopsies'
		verbose_name_plural = "Biopsies"
		
	def __str__(self):
		return '%s' % (self.biopsy_name)
		
	def save(self, *args, **kwargs):
		for field_name in ['biopsy_name', 'biopsy_location', 'biopsy_result' ]:
			val = getattr(self, field_name, False)
			if val:
				setattr(self, field_name, val.capitalize())
		super(Biopsy, self).save(*args, **kwargs)
				
class BiopsyLocation(CommonInfo):
	id = models.AutoField(primary_key = True)
	location = models.CharField(max_length = 25)

	class Meta:
		ordering = [  'location']

	def __str__(self):
		return '%s' % (self.location)		

class BiopsyName(CommonInfo):
	id = models.AutoField(primary_key=True)
	biopsy_name = models.CharField(max_length=25)

	class meta:
		app_label = 'BiopsyName'
		ordering = [  'biopsy_name']
		

	def __str__(self):
		return '%s' % (self.biopsy_name)
		
class BiopsyResult(CommonInfo):
	id = models.AutoField(primary_key = True)
	biopsy_result = models.CharField(max_length = 25)
	
	class meta:
		app_label = 'BiopsyResult'
		ordering = ['biopsy_result']
		
	def __str__(self):
		return '%s' % (self.biopsy_result)

class ComplaintName(CommonInfo):
	id = models.AutoField(primary_key=True)
	complaint_name = models.CharField(max_length=250)#, unique = True)
	
	class meta:
		ordering = ["complaint_name",]
	
	def __str__(self):
		return '%s' % (self.complaint_name)
		
	def save(self, *args, **kwargs):
		for field_name in ['complaint_name']:
			val = getattr(self, field_name, False)
			if val:
				setattr(self, field_name, val.capitalize())
		super(ComplaintName, self).save(*args, **kwargs)

class Complaint(CommonInfo):
	id = models.AutoField(primary_key=True)
	
	complaint_name = models.ForeignKey('ComplaintName', on_delete=models.PROTECT)
	
	complaint_location = models.ForeignKey('Location', on_delete=models.PROTECT)
	
	finding = models.ManyToManyField('Finding')
	
	treatment = models.ManyToManyField('Treatment')
	
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.PROTECT)	
	
	def __str__(self):
		return '%s' % (self.complaint_name)

	class meta:
		ordering = [  'complaint_name',]
		
class Diagnosis(CommonInfo):
	id = models.AutoField(primary_key = True)
	
	diagnosis = models.CharField('Diagnosis',max_length = 100, blank = True, null = True)
	
	remarks = models.CharField('Remarks', max_length = 100, blank = True, null = True)
	
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.SET_NULL)
	
	class Meta:
		verbose_name_plural = 'Diagnosis'

class Dose(CommonInfo):
	id = models.AutoField(primary_key=True)
	dose_amount = models.CharField(max_length=25, unique = True)

	class Meta:
		ordering = ['dose_amount']

	def __str__(self):
		return '%s' % (self.dose_amount)

class Exam(CommonInfo):
	id = models.AutoField(primary_key = True)
	
	exam_name = models.ForeignKey('ExamName', blank = True, null = True, on_delete=models.SET_NULL)
	
	#exam_date = models.DateField(blank=True, null=True)
	
	exam_result = models.ForeignKey('ExamResult', blank = True, null = True, on_delete=models.SET_NULL)
	
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.SET_NULL)

	def __str__(self):
		return '%s, %s, %s' % (self.exam_date, self.exam_name, self.exam_result)

class ExamName(CommonInfo):
	id = models.AutoField(primary_key = True)
	exam_name = models.CharField(max_length = 25, blank = True, null = True)
	
	class Meta:
		ordering = ['exam_name']
		
	def __str__(self):
		return '%s' % (self.exam_name)
			
class ExamResult(CommonInfo):
	id = models.AutoField(primary_key = True)
	
	exam_result = models.CharField(max_length = 25, blank=True, null=True)
	
	class Meta:
		ordering = ['exam_result']
		
	def __str__(self):
		return '%s' % (self.exam_result)

class Finding(CommonInfo):
	id = models.AutoField(primary_key=True)
	finding_name = models.CharField(max_length=250, blank = True, null = True)
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.SET_NULL)

	class Meta:
		ordering = [  'finding_name']

	def __str__(self):
		return '%s' % (self.finding_name)

class Hearing(CommonInfo):
	id = models.AutoField(primary_key=True)
	
	hearing_test = models.ForeignKey('HearingTest', blank = True, null = True, on_delete=models.SET_NULL)
	
	hearing_result = models.ForeignKey('HearingResult', blank=True, null=True, on_delete=models.SET_NULL)
	
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.SET_NULL)

class HearingTest(CommonInfo):
	id = models.AutoField(primary_key=True)
	hearing_name = models.CharField(max_length = 25)

	class Meta:
		ordering = ['hearing_name']

	def __str__(self):
		return '%s' % (self.hearing_name)

class HearingResult(CommonInfo):
	id = models.AutoField(primary_key=True)
	hearing_result = models.CharField(max_length=50)

	class Meta:
		ordering = ['hearing_result']

	def __str__(self):
		return '%s' % (self.hearing_result)

class Location(CommonInfo):
	id = models.AutoField(primary_key = True)
	location = models.CharField(max_length = 25)

	class Meta:
		ordering = [  'location']

	def __str__(self):
		return '%s' % (self.location)
		
	def save(self, *args, **kwargs):
		for field_name in ['location']:
			val = getattr(self, field_name, False)
			if val:
				setattr(self, field_name, val.capitalize())
		super(Location, self).save(*args, **kwargs)

class MedicineGeneric(CommonInfo):
	id = models.AutoField(primary_key=True)
	generic_name = models.CharField(max_length = 50)

	class Meta:
		ordering = [  'generic_name']

	def __str__(self):
		return '%s' % (self.generic_name)
		
	def save(self, *args, **kwargs):
		for field_name in ['generic_name']:
			val = getattr(self, field_name, False)
			if val:
				setattr(self, field_name, val.capitalize())
		super(MedicineBrand, self).save(*args, **kwargs)		

class MedicineBrand(CommonInfo):
	id = models.AutoField(primary_key=True)
	brand_name = models.CharField(max_length=50)
	generic_name = models.ForeignKey(MedicineGeneric, on_delete= models.CASCADE)

	class Meta:
		ordering = [  'brand_name']

	def __str__(self):
		return '%s' % (self.brand_name)
		
	def save(self, *args, **kwargs):
		for field_name in ['brand_name']:
			val = getattr(self, field_name, False)
			if val:
				setattr(self, field_name, val.capitalize())
		super(MedicineBrand, self).save(*args, **kwargs)
		

class MedicinePayment(CommonInfo):
	id = models.AutoField(primary_key=True)
	medicine_amount = models.PositiveIntegerField(blank=True, null=True)
	
	class Meta:
		ordering = ['medicine_amount']
	
	def __str__(self):
		return '%s' % (self.medicine_amount)
		
class MedicineQuantity(CommonInfo):
	id = models.AutoField(primary_key=True)
	med_quantity = models.CharField(max_length = 15, blank = True, null = True)
	class Meta:
		ordering = [ 'med_quantity' ]
	def __str__(self):
		return '%s' % (self.med_quantity)
		
class NumOfDays(CommonInfo):
	id = models.AutoField(primary_key=True)
	numofdays = models.PositiveIntegerField(blank=True, null=True)
	class Meta:
		ordering = ['numofdays']
	def __str__(self):
		return '%s' % (self.numofdays)

class Prescription(CommonInfo):
	id = models.AutoField(primary_key=True)
	medicine_generic = models.ForeignKey('MedicineGeneric', blank=True, null=True, on_delete=models.PROTECT)
	medicine_brand = models.ForeignKey('MedicineBrand', blank=True, null=True, on_delete=models.PROTECT)
	medicine_dose = models.ForeignKey('Dose', blank=True, null=True, on_delete=models.PROTECT)
	medicine_reminder = models.ForeignKey('Reminder', blank=True, null=True, on_delete=models.PROTECT)
	medicine_duration_days = models.ForeignKey('NumOfDays', blank=True, null=True, on_delete=models.PROTECT)
	medicine_quantity = models.ForeignKey('MedicineQuantity', blank=True, null=True, on_delete=models.PROTECT)
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.PROTECT)

class Reminder(CommonInfo):
	id = models.AutoField(primary_key=True)
	medicine_reminder = models.CharField(max_length=50, blank = True, null = True)
	class Meta:
		ordering = [  'medicine_reminder']
	def __str__(self):
		return '%s' % (self.medicine_reminder)
		
	def save(self, *args, **kwargs):
		for field_name in ['medicine_reminder']:
			val = getattr(self, field_name, False)
			if val:
				setattr(self, field_name, val.capitalize())
		super(Reminder, self).save(*args, **kwargs)

class Treatment(CommonInfo):
	id = models.AutoField(primary_key=True)
	treatment_name = models.CharField(max_length=25, blank = True, null = True)
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.PROTECT)

	class Meta:
		ordering = ['treatment_name']

	def __str__(self):
		return '%s' % (self.treatment_name)

class Visit(CommonInfo):
	id = models.AutoField(primary_key=True)

	visit_date = models.DateField("Date", default = datetime.date.today)

	patient = models.ForeignKey('patient.Patient',on_delete=models.PROTECT, default = None)

	visit_payment = models.ForeignKey('VisitPayment', on_delete=models.PROTECT, default = None)

	medicine_payment = models.ForeignKey('MedicinePayment', on_delete = models.PROTECT, default = None)

	def __str__(self):
		return '%s, %s' % ( self.patient, self.visit_date)
		
	class Meta:
		ordering = ['patient', 'visit_date']
		
class VisitPayment(CommonInfo):
	id = models.AutoField(primary_key=True)
	visit_amount = models.PositiveIntegerField(blank=True, null=True)
	class Meta:
		ordering = ['visit_amount']
	def __str__(self):
		return '%s' % (self.visit_amount)
		
