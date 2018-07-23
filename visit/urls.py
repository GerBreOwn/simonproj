from django.contrib import admin
from django.urls import include, path

from . import views

urlpatterns = [
	path('visit/', views.daily_payment),
	# ~ url(r'^generate/document/$', views.generate_document,name='generate_document'),
	# ~ path('admin/', admin.site.urls),
	# ~ path(r'', include('model_report.urls')),
	# ~ #path('generate/document/', views.generate_document,name='generate_document'),
	# ~ #url(r'^generate/document/$', views.generate_document,name='generate_document')
]

