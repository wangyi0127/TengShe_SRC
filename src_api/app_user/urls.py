from django.urls import path,re_path,include 
from app_user.auth import MyTokenObtainPairView
from app_user.views import ListView
from app_user import views
# jwt内部实现的登陆视图
from rest_framework_simplejwt.views import (TokenObtainPairView, TokenRefreshView)
 
urlpatterns =[
    # --------------------simplejwt--------------------------
    path(r'lg', TokenObtainPairView.as_view(), name="obtain_token"),
    path(r'getToken', MyTokenObtainPairView.as_view(),name="token"),  # 自定义用户表返回token
    path(r'list',ListView.as_view(),name="list"),
    path(r'login',views.login,name="login"),
]