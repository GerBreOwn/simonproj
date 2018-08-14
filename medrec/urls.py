from django.contrib.admin.sites import AdminSite
from django.contrib import admin
from django.urls import path
from django.conf.urls import include, url
#from django.views.generic.dates import DateDetailView

from patient import views as patient_views
from visit import views as visit_views
# ~ from .site import DashboardSite

admin.site.site_header = 'MEDREC Administration'
# ~ admin.site = DashboardSite()
# ~ admin.sites.site = admin.site
# ~ admin.autodiscover()

urlpatterns = [
	path('admin/patient/', patient_views.prescription_view),
	path('admin/visit/', visit_views.daily_payment_view),
	path('admin/', admin.site.urls),
	path('visit/', include('visit.urls')),
	]



