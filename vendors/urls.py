from django.urls import path
from . import views


urlpatterns = [
    path('', views.Home.as_view(), name='home_view'),
    path('<int:pk>/', views.Detail_View.as_view(), name='detail_view'),
    path('create/', views.Create_View.as_view(), name='create_view'),
    path('update/<int:pk>/', views.Update_View.as_view(), name='update_view'),
    path('delete/<int:pk>/', views.Delete_View.as_view(), name='delete_view'),
    path('search_vendors/', views.search_vendors, name='search_vendors'),


]
