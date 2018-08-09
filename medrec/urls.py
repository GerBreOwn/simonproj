from django.contrib.admin.sites import AdminSite
from django.contrib import admin
from django.urls import path
from django.conf.urls import include, url
#from django.views.generic.dates import DateDetailView

from patient import views as patient_views
from visit import views as visit_views
#from visit.views import PaymentTodayArchiveView

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
	
	#path('today/', PaymentTodayArchiveView, name="today"),
	path('admin/visit/', visit_views.daily_payment_view),
	#path('admin/visit/today_view', visit_views.today_view),
	#path('admin/visit/', visit_views.yesterday_view),
	# ~ path('admin/visit/', views.weekly_payment_view),
	# ~ path('admin/visit/', views.monthly_payment_view),
	path('admin/', admin.site.urls),
	]



