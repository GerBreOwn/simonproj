from django.contrib import admin
from django.urls import include, path
from model_report import report
#import admin_reports

urlpatterns = [
	path('admin/', admin.site.urls),
	path(r'', include('model_report.urls')),
	#url(r'^admin/', include(admin_reports.site.urls)),
	#path('admin/', admin_reports.site.urls, name='payment-report'),
   
	]
