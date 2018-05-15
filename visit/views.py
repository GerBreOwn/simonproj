from django.conf import settings
from django.http import HttpResponse
from django.template.loader import render_to_string
from django.contrib.admin.views.decorators import staff_member_required
import weasyprint

@staff_member_required
def admin_prescription_pdf(request, prescription_id):
	prescription = get_object_or_404(Prescription, id=prescription_id)
	html = render_to_string('prescriptions/prescription/pdf.html',
							{'prescription': prescription})
	response = HttpResponse(content_type='application/pdf')
	response['Content-Disposition'] = 'filename=\
		"prescription_{}.pdf"'.format(prescription.id)
	weasyprint.HTML(string=html).write_pdf(response,
		stylesheets=[weasyprint.CSS(
			settings.STATIC_ROOT + 'css/pdf.css')])
	return response
