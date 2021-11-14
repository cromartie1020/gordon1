from django.urls import path, include
#from django.contrib.auth.views import LoginView, LogoutView
from . import views
urlpatterns = [
    path('register/', views.register, name='register'),
    path('', include('django.contrib.auth.urls')),
    #path('login/', LoginView.as_view(), name='login'),
    #path('logout/', LogoutView.as_view(), name='logout'),
    # path('password_change/',)

]
