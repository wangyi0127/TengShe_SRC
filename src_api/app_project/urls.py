from django.urls import path,re_path 
from app_project import views 

urlpatterns = [ 
    re_path(r'^login/$', views.Login, name="login"),
    re_path(r'^projectlist/$', views.ProjectList, name="projectlist"),
] 