import os
import sys
from django.core.wsgi import get_wsgi_application
from django.contrib.auth.models import User
from django.utils import timezone
from django.conf import settings
proj_path = os.path.split(os.path.dirname(__file__)))[0]
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "djangoproject.settings")
sys.path.append(proj_path)os.chdir(proj_path)
application = get_wsgi_application()
