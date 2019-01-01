from django.contrib import admin
from django.urls import include, path

from visit import views

urlpatterns = [
	path('', views.showcount, name='showcount'),
	]

