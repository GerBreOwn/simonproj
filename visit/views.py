#View for prescription

import os, tempfile
from django.conf import settings
from django.http import HttpResponse
from django.template.loader import render_to_string
from django.contrib.admin.views.decorators import staff_member_required

from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import HALF_LETTER

from visit.models import Visit, Dose, MedicineBrand, MedicineGeneric, Prescription, Reminder
from patient.models import Patient
from doctor.models import Doctor

from .logic import ReportGenerator
from secretary import Renderer

#@staff_member_required
def print_presc(request):
	visits = Visit.objects.all().order_by('patient.last_name')
	return ReportGenerator().create_report(visits)
	
class ReportGenerator():
	@staticmethod
	def create_report(data):
		engine = Renderer()
		root = os.path.dirname(__file__)
		document = root + '/templates/bedjango/template.odt'
		result = engine.render(document, data=data)
		
		response = HttpResponse(content_type='application/vnd.oasis.opendocument.text; charset=UTF-8')
		response['Content_Disposition'] = 'inline; filename= visit.odt'
		with tempfile.NamedTemporyFile() as output:
			output.write(result)
			output.flush()
			output = open(output.name, 'r')
			response.write(output.read())
		return response
	
