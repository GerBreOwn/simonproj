from django.conf import settings
import os
from io import BytesIO
from django.core.management.base import BaseCommand, CommandError

from visit.models import *
from patient.models import *

h1 = Visit.objects.filter(patient_id = 881)

for v1 in h1:
	print(v1.id)
	cm = Complaint.objects.filter(visit = v1.id)
	print(cm[0].id)
