from django.contrib.admin.sites import AdminSite
from django.contrib import admin
from django.urls import include, path
from django.conf.urls import include, url

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
	path('admin/visit/', visit_views.daily_payment),
    path('admin/', admin.site.urls),
    ]



