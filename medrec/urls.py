from django.contrib.admin.sites import AdminSite
from django.contrib import admin
from django.urls import path
from django.conf.urls import include, url
#from django.views.generic.dates import DateDetailView

from patient import views as patient_views
from visit import views as visit_views

admin.site.site_header = 'MEDREC Administration'

class DashboardSite(AdminSite):
	def get_urls(self):
		urls = super(DashboardSite, self).get_urls()
		custom_urls = [
			path('^$', self.admin_view(HomeView.as_view()), name='admin'),
			]
		del urls[2]
		return custom_urls + urls

urlpatterns = [
	path('admin/patient/', patient_views.prescription_view),
	path('admin/visit/', visit_views.daily_payment_view),
	path('admin/', admin.site.urls),
	path('visit/', include('visit.urls')),
	]



