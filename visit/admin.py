#Admin file for Visit

from django.urls  import reverse
from django.forms import TextInput, Textarea
from django.db import models
from django.contrib import admin
from django.contrib.admin import site
from django.contrib.admin import site as admin_site

admin.site.site_title = 'Medical Records Administration'
admin.site.site_header = 'Medical Records Visits Administration'

# Register your models here.
# ~ from django.db.models.functions import Trunc
# ~ from django.db.models import DateTimeField

#from .models import SaleSummary

from .models import  Biopsy,  BiopsyLocation, BiopsyName, BiopsyResult, Complaint, Dose, Diagnosis, Exam, Finding, HearingTest, Treatment, Prescription, Location, ComplaintName, Hearing, ExamName, Reminder, MedicineBrand, MedicineGeneric,  Patient, MedicinePayment, HearingResult, NumOfDays, MedicineQuantity, Visit, VisitPayment

from .forms import BiopsyForm, ComplaintForm, DiagnosisForm, ExamForm

mymodels = [ Dose, Diagnosis, HearingTest, Treatment, ComplaintName, BiopsyName, BiopsyResult, BiopsyLocation, Location, Hearing, ExamName, Reminder, MedicineBrand, MedicineGeneric, Finding, VisitPayment, MedicinePayment, HearingResult, NumOfDays, MedicineQuantity] 

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

# ~ @admin.register(SaleSummary)
# ~ class SaleSummaryAdmin(ModelAdmin):
	# ~ change_list_template = 'admin/sale_summary_changd_list.html'
	# ~ date_hierarchy = 'created'
	# ~ list_filter = ('device',)
	# ~ def changelist_view(self, request, extra_context=None):
		# ~ response = super().changelist_view(
			# ~ request,
			# ~ extra_context=extra_context
		# ~ )
		
		# ~ period = get_next_in_date_hierarchy(
			# ~ request, 
			# ~ self.date_hierarchy,
		# ~ )
		# ~ response.context_data['period'] = period
		
		# ~ try:
			# ~ qs = response.context_data['c1'].queryset
		# ~ except (AttributeError, KeyError):
			# ~ return response
			
		# ~ metrics = {
			# ~ 'total': Count('id'),
			# ~ 'total_sales': Sum('price'),
		# ~ }
		
		# ~ response.context_data['summary'] = list(
			# ~ qs
			# ~ .values('sale__category__name')
			# ~ .annotate(**metrics)
			# ~ .order_by('-total_sales')
		# ~ )
		# ~ response.context_data['summary_total'] = dict(qs.aggregate(**metrics)
		# ~ )
		
		# ~ summary_over_time = qs.annotate(
			# ~ period=Trunc(
				# ~ 'created',
				# ~ period,
				# ~ output_field=DateTimeField(),
			# ~ ),
		# ~ ).values('period')	
		# ~ .annotate(total=Sum('visit_amount'))
		# ~ .order_by('period')
		
		# ~ summary_range = summary_over_time.aggregte(
			# ~ low=Min('total'),
			# ~ high=Max('total'),
		# ~ )
		# ~ high = summary_range.get('high', 0)
		# ~ low = summary_range.get('low', 0)
		
		# ~ response.context_data['summery_over_time'] = [{
			# ~ 'period': x['period'],
			# ~ 'total': x['total'] or 0,
			# ~ 'pct': \ ((x['total'] or 0) - low) / (high - low) * 100
			# ~ if high > low else 0,
			# ~ } for x in summary_over_time]
		
		# ~ return response	
	
	# ~ def get_next_in_date_hierarchy(request, date_hierarchy):
		# ~ if date_hierarchy + '__day' in request.GET:
			# ~ return 'hour'
		# ~ if date_hierarchy + '__month' in request.GET:
			# ~ return 'day'
		# ~ if date_hierarchy + '__year' in request.GET:
			# ~ return 'week'
		# ~ return 'month'

class BiopsyAdminInline(admin.TabularInline):
	model = Biopsy
	classes = ['collapse']
	extra = 1

class ComplaintAdminInline(admin.TabularInline):
	model = Complaint
	extra = 1

class DiagnosisAdminInline(admin.TabularInline):
	model = Diagnosis
	classes = ['collapse']
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

def prescription_detail(obj):
	return '<a href="{}">View</a>'.format(
		reverse('prescriptions:admin_prescription_detail', args=[obj.id]))
	prescription_detail.allow_tags = True

def prescription_pdf(obj):
	return '<a href="{}">PDF</a>'.format(
		reverse('prescription:admin_prescription_pdf', args=[obj.id]))
prescription_pdf.allow_tags = True
prescription_pdf.short_description = 'Prescription PDF'


class PrescriptionAdminInline(admin.StackedInline):
	model = Prescription
	extra = 1


@admin.register(Visit)
class VisitAdmin(admin.ModelAdmin):
	view_on_site = False
	#list_display = ("patient", "visit_count")
	fieldsets = (
	('Date & Patient:', {
   'fields': ('visit_date', 'patient', 'visit_payment', 'medicine_payment')
    }),
    )
    
	

	inlines = (ComplaintAdminInline,
		PrescriptionAdminInline, 
		DiagnosisAdminInline, 
		BiopsyAdminInline, 
		HearingAdminInline, 
		ExamAdminInline 
		) 
