from django.contrib.admin.sites import AdminSite
from django.contrib import admin
from django.urls import path
from django.conf.urls import include, url
#from django.views.generic.dates import DateDetailView

from patient import views as patient_views
from visit import views as visit_views

admin.site.site_header = 'Medical Records (MEDREC) Administration'
# ~ admin.site = DashboardSite()
# ~ admin.sites.site = admin.site
# ~ admin.autodiscover()

urlpatterns = [
	path('admin/visit/', visit_views.showcount),
	path('admin/patient/', patient_views.prescription_view),
	path('admin/visit/', visit_views.daily_payment_view),
	path('admin/visit/', visit_views.patient_history_view),
	path('visit/', include('visit.urls')),
	#path('patient/', include('patient.urls')),
	path('admin/', admin.site.urls),
	]
