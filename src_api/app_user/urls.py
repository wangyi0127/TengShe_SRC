from django.urls import path,re_path,include 
from app_user import views 
from rest_framework_simplejwt.views import TokenRefreshView, TokenVerifyView, TokenObtainPairView


urlpatterns = [ 
    path('login/token', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('verify/', TokenVerifyView.as_view(), name='token_verify'),
    path('login/', views.Login, name="login"),
    
] 