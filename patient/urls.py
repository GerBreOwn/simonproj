
from django.urls import path

from . import views

urlpatterns = [
    path('patient/', views.prescription_view),
]

