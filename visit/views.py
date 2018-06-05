#View for prescription

from django.conf import settings
from django.http import HttpResponse
from django.template.loader import render_to_string
from django.contrib.admin.views.decorators import staff_member_required

from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import HALF_LETTER

#import weasyprint
from visit.models import Visit
from patient.models import Patient, Dose, Medicine, Prescription, Reminder
from doctor.models import Doctor

@staff_member_required
def admin_prescription_pdf(request):#, prescription_id):
	v1 = Visit.objects.latest('id')
	d1 = Doctor.objects.all()
	
	response = HttpResponse(content_type='application/pdf')
	response['Content-Disposition'] = 'filename="prescription_{}.pdf"'.format(prescription.id)
	
	p = canvas.Canvas(response)
	p.drawstring(159,22,mm,{v1.patient}
	#age = 
	p.drawstring(159,105,mm,{age}
	p.drawstring(159, 120,mm,{v1.patient.gender}
	p.drawstring(154. 22, mm, {v1.patient.town}
	p.drawstring(154, 105 mm, {curdate}
	p.drawstring(10, 990, mm, {d1.ptr}
			
	p.showPage()
	p.save()
	
	return response
