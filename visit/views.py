#View for prescription

import os, tempfile
from django.conf import settings
from django.http import HttpResponse
from django.template.loader import render_to_string
from django.contrib.admin.views.decorators import staff_member_required

from django.view.generic.detail import DetailView
from djappypod.response import OdtTemplateResponse

from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import HALF_LETTER

from visit.models import Visit, Dose, MedicineBrand, MedicineGeneric, Prescription, Reminder, MedicinePayment, VisitPayment
from patient.models import Patient
from doctor.models import Doctor

from .logic import ReportGenerator
from secretary import Renderer

from templated_docs import fill_template
from templated_docs.http import FileResponse


@staff_member_required
class Payments(DetailView):
	response_class = OdtTemplateResponse
	template_name = "payments.odt"
	

def generate_document(request):
   # Model data
   people = Visit.objects.all().order_by('patient')

   return ReportGenerator().create_report(people)


def get_document(request):
	context = ('user': request.user,'foo': 'bar')
	filename = fill_template('payments.odt', context, 
	output_format='pdf')
	visible_filename = 'payments.pdf'
	return FileResponse(filename, visible_filename)

def generate_payments(request):
   payments = Visit.objects.all().order_by('patient')#.filter(visit.visitdate = today())
   return ReportGenerator().create_report(payments)

def load_brands(request):
	generic_id = request.GET.get('gernericmedicine')
	brands = MedicineBrand.objects.filter(generic_id=generic_id).order_by('name')
	return render(request,'hr/medicinebrand_dropdown_list_options.html', {'medicinebrand': medicinebrand})
	
class ReportGenerator():
	@staticmethod
	def create_report(data):
		engine = Renderer()
		root = os.path.dirname(__file__)
		document = root + '/templates/payments.odt'
		result = engine.render(document, data=data)
		
		response = HttpResponse(content_type='application/vnd.oasis.opendocument.text; charset=UTF-8')
		response['Content_Disposition'] = 'inline; filename=payments.odt'
		with tempfile.NamedTemporyFile() as output:
			output.write(result)
			output.flush()
			output = open(output.name, 'r')
			response.write(output.read())
		return response
	
