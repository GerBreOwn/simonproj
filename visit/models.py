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
	#counter = models.IntegerField(blank = True, null = True, default = None, editable = False)

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
		#ordering = [ ]
		abstract = True


class Biopsy(CommonInfo):
	id = models.AutoField(primary_key=True)
	biopsy_name = models.ForeignKey('BiopsyName',blank = True, null = True, on_delete=models.SET_NULL)
	biopsy_location = models.ForeignKey('Location', blank = True, null = True, on_delete=models.SET_NULL)
	#biopsy_result = models.ForeignKey('BiopsyResult', blank = True, null = True, on_delete=models.SET_NULL)
	biopsy_result = models.TextField(blank = True, null = True)
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.SET_NULL)

	# def get_absolute_url(self):
		# return reverse('biopsy-detail', args=[str(self.id)])

	class meta:
		app_label = 'Biopsy'
		#ordering = [ 'biopsy_name', '-counter']

	def __str__(self):
		return '%s' % (self.biopsy_name)

class BiopsyName(CommonInfo):
	id = models.AutoField(primary_key=True)
	biopsy_name = models.CharField(max_length=25, blank = False, null = False)#, unique = True)

	class meta:
		app_label = 'BiopsyName'
		ordering = [  'biopsy_name']
		verbose_name = "biopsies"

	def __str__(self):
		return '%s' % (self.biopsy_name)

class ComplaintName(CommonInfo):
	id = models.AutoField(primary_key=True)
	complaint_name = models.CharField(max_length=250)#, unique = True)
	#visit = models.ForeignKey('Visit', blank = True, null = True, editable = False)

	def __str__(self):
		return '%s' % (self.complaint_name)

	class meta:
		ordering = ["complaint_name",]

class Complaint(CommonInfo):
	id = models.AutoField(primary_key=True)
	complaint_name = models.ForeignKey('ComplaintName', blank = False, null = False, on_delete=models.PROTECT)
	complaint_location = models.ForeignKey('Location', blank = True, null = True, on_delete=models.PROTECT)
	finding = models.ManyToManyField('Finding')
	treatment = models.ManyToManyField('Treatment')
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.PROTECT)	
	
	def __str__(self):
		return '%s' % (self.complaint_name)

	class meta:
		ordering = [  'complaint_name',]
		
class Diagnosis(CommonInfo):
	id = models.AutoField(primary_key = True)
	diagnosis = models.TextField('Diagnosis', blank = True, null = True)
	remarks = models.TextField('Remarks', blank = True, null = True)
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

class ExamName(CommonInfo):
	id = models.AutoField(primary_key = True)
	exam_name = models.CharField(max_length = 25, blank = True, null = True)#, unique = True)
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.SET_NULL)

class Exam(CommonInfo):
	id = models.AutoField(primary_key = True)
	exam_name = models.ForeignKey(ExamName, blank = True, null = True, on_delete=models.SET_NULL)
	exam_date = models.DateField(blank=True, null=True)
	exam_result = models.TextField(blank=True, null=True)
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.SET_NULL)

	def __str__(self):
		return '%s, %s' % (self.exam_date, self.exam_name)

class Finding(CommonInfo):
	id = models.AutoField(primary_key=True)
	finding_name = models.CharField(max_length=250, blank = True, null = True)#, unique = True)
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.SET_NULL)

	class Meta:
		ordering = [  'finding_name']

	def __str__(self):
		return '%s' % (self.finding_name)

class Hearing(CommonInfo):
	id = models.AutoField(primary_key=True)
	hearing_test = models.ForeignKey('HearingTest', blank = True, null = True, on_delete=models.SET_NULL)
	#hearing_result = models.ForeignKey('HearingResult', blank = True, null = True, on_delete=models.SET_NULL)
	hearing_result = models.TextField(blank=True, null=True)
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.SET_NULL)

class HearingTest(CommonInfo):
	id = models.AutoField(primary_key=True)
	hearing_name = models.CharField(max_length = 50, blank=True, null = True)#, unique = True)

	class Meta:
		ordering = [  'hearing_name']

	def __str__(self):
		return '%s' % (self.hearing_name)

class HearingResult(CommonInfo):
	id = models.AutoField(primary_key=True)
	hearing_result = models.CharField(max_length=25)#, unique = True)

	class Meta:
		ordering = [  'hearing_result']

	def __str__(self):
		return '%s' % (self.hearing_result)

class Location(CommonInfo):
	id = models.AutoField(primary_key = True)
	location = models.CharField(max_length = 25)#, unique = True)

	class Meta:
		ordering = [  'location']

	def __str__(self):
		return '%s' % (self.location)

class Medicine(CommonInfo):
	id = models.AutoField(primary_key=True)
	brand_name = models.CharField(max_length=50, blank = True, null = True)#, unique=True)
	generic_name = models.CharField(max_length = 50, blank = True, null = True)

	class Meta:
		ordering = [  'brand_name']

	def __str__(self):
		return '%s' % (self.brand_name)

class VisitCharge(CommonInfo):
	id = models.AutoField(primary_key=True)
	visit_amount = models.PositiveIntegerField(blank=True, null=True)

	def __str__(self):
		return '%s' % (self.visit_amount)


class MedicineCharge(CommonInfo):
	id = models.AutoField(primary_key=True)
	medicine_amount = models.PositiveIntegerField(blank=True, null=True)

	def __str__(self):
		return '%s' % (self.medicine_amount)

class Prescription(CommonInfo):
	id = models.AutoField(primary_key=True)
	medicine = models.ForeignKey('Medicine', blank=True, null=True, on_delete=models.PROTECT)
	medicine_dose = models.ForeignKey('Dose', blank=True, null=True, on_delete=models.PROTECT)
	medicine_reminder = models.ForeignKey('Reminder', blank=True, null=True, on_delete=models.PROTECT)
	medicine_quantity = models.IntegerField(blank=True, null=True)
	visit = models.ForeignKey('Visit', blank = True, null = True, editable = False, on_delete=models.PROTECT)

class Reminder(CommonInfo):
	id = models.AutoField(primary_key=True)
	medicine_reminder = models.CharField(max_length=50, blank = True, null = True)#, unique = True)

	class Meta:
		ordering = [  'medicine_reminder']

	def __str__(self):
		return '%s' % (self.medicine_reminder)


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
	visit_payment = models.ForeignKey('VisitCharge', on_delete=models.PROTECT, default = None)
	medicine_payment = models.ForeignKey('MedicineCharge', on_delete = models.PROTECT, default = None)

	def __str__(self):
		return '%s, %s' % ( self.visit_date, self.patient)

def visit_count(self, obj):
	return obj.visit__set.count()
