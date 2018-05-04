from django.conf import settings
fromdjango.http import HttpResponse
from django.template.loader import render_to_string
import weasyprint
from reportlab.lib.pagesizes import HALF_LETTER
from reportlab.pdfgen import canvas
from reportlab.lib.units import inch
from reportlab.lib.enums import TA_CENTER
from reportlab.platypus import Image, Paragraph, Table
from datetime import date
from django.db import models
from django.db import connection
from models import Patient, Visit, Doctor
from django.shortcuts import render

@staff_member_required
def admin_presc_pdf(request, prescription_id):
	presc = get_object_or_404(Prescription, id = prescription_id)
	html = render_to_string('prescs/presc/pdf.html'), {'presc': presc})
	response = HttpResponse(content_type='application/pdf')
	response['Content_Disposition'] = 'filename\"presc_{}"'.format(presc.id)
	weasyprint.HTML(string-html).write_pdf(response, stylesheets=[weasyprint.CSS(settings.STATIC_ROOT + 'css/pdf.css')])
	return response

