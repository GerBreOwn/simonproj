# logic.py
from secretary import Renderer
from django.http import HttpResponse
import os, tempfile

class ReportGenerator():
	""" Class ReportGenerator """
	@staticmethod
	def create_report(data):
		engine = Renderer()
		root = os.path.dirname(__file__)
		document = root + '/templates/payments.odt'
		result = engine.render(document, data=data)
		
		response = HttpResponse(content_type='application/vnd.oasis.opendocument.text; charset=UTF-8')
        response['Content-Disposition'] = 'inline; filename=payments.odt'
        with tempfile.NamedTemporaryFile() as output:
            output.write(result)
            output.flush()
            output = open(output.name, 'r')
            response.write(output.read())

        return response
