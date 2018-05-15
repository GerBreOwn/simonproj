from django.urls import path

from . import views

urlpatterns = [
    url(r'^admin/visit/(?P<prescription_id>\d+)/pdf/$',
		views.admin_prescription_pdf,
		name='admin_prescription_pdf'),
		],
