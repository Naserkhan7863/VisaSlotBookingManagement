"""visa URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from main import views as main_views
from adminapp import views as admin_views
from studentapp import views as student_views
from supervisorapp import views as supervisor_views
urlpatterns = [
    path('admins/', admin.site.urls),
    path('',main_views.index,name='index'),
    path('covid_guidelines',main_views.covid_guidelines,name='covid_guidelines'),
    path('help_support',main_views.help_support,name='help_support'),





    #urls for adminapp
    path('admin-login',admin_views.adminlogin,name='admin_login'),
    path('admin_home',admin_views.admin_home,name='admin_home'),
    path('add_supervisor',admin_views.add_supervisor,name='add_supervisor'),
    path('view_supervisor',admin_views.view_supervisor,name='view_supervisor'),
    path('delete-supervisor/<int:id>/',admin_views.delete_supervisor,name='delete_supervisor'),

    path('add_venue',admin_views.add_venue,name='add_venue'),
    path('add_view_slots',admin_views.add_view_slots,name='add_view_slots'),





    #urls for supervisorapp

    path('sup_login',supervisor_views.sup_login,name='sup_login'),
    path('sup_home',supervisor_views.sup_home,name='sup_home'),
    path('sup_add_slot',supervisor_views.sup_add_slot,name='sup_add_slot'),
    path('sup_view_slot',supervisor_views.sup_view_slot,name='sup_view_slot'),
    path('sup-conf-view-slot',supervisor_views.sup_conf_view_slot,name='sup_conf_view_slot'),




    #urls for studentapp
    path('stu_register',student_views.stu_register,name='stu_register'),
    path('stu_login',student_views.stu_login,name='stu_login'),
    path('stu_home',student_views.stu_home,name='stu_home'),
    path('stu_book_slot/<int:id>/',student_views.stu_book_slot,name='stu_book_slot'),
    path('stu_check_availability',student_views.stu_check_availability,name='stu_check_availability'),
    path('stu_confirmed_slots',student_views.stu_confirmed_slots,name='stu_confirmed_slots'),

]
