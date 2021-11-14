from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from vendors import views

admin.site.site_header = 'Gordon Laboratories'

urlpatterns = [
    #path('', views.select, name='select'),
    path('', include('vendors.urls')),
    path('register_user/', include('users.urls')),
    path('users/', include('django.contrib.auth.urls')),
    path('admin/', admin.site.urls),
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL,
                          document_root=settings.STATIC_ROOT)
