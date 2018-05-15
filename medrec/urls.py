from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls import include, url
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf.urls import include, url

admin.site.site_header = settings.ADMIN_SITE_HEADER

urlpatterns = [
    path('admin/', admin.site.urls),
    
		
    #path('report_builder/', include('report_builder.urls'))
#    url(r'^report_builder/', include('report_builder.urls')),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

admin.site.site_header = 'MEDREC Administration'

if settings.DEBUG:
    import debug_toolbar
    urlpatterns += [
        url(r'^__debug__/', include(debug_toolbar.urls)),
    ]

