# URLS for prescription

from django.ursl import path

from . import views

urlpatterns = [
	path('$/', views.prescription, name = 'prescription')]
	
