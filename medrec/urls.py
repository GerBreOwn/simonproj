from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls import include, url
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf.urls import include, url
#from . import views

admin.site.site_header = 'MEDREC Administration'
admin.site.site_url = None

urlpatterns = [
    path('admin/', admin.site.urls),
   ]




