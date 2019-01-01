from django import template
register = template.Library()

from ..models import Patient, Visit

@register.simple_tag
def pat_num_function():
	return Patient.objects.count()

@register.inclusion_tag('/visit/index.html')
def visit_num_function():
	visit_num = Visit.objects.count()
	return {'visit_num': visit_num}
