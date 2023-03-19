from rest_framework_simplejwt.authentication import JWTAuthentication
from rest_framework_simplejwt.exceptions import InvalidToken, AuthenticationFailed
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from rest_framework_simplejwt.views import TokenObtainPairView
from django.contrib.auth.hashers import check_password
from rest_framework import exceptions
import time
 
from django.utils.translation import gettext_lazy as _
 
from app_project.models import User
 
#  ------------------------------simplejwt------------------------------------------
class MyTokenObtainPairSerializer(TokenObtainPairSerializer):
    """
    自定义登录认证，使用自有用户表
    """
    username_field = 'username'
    def validate(self, attrs):
        # authenticate_kwargs = {self.username_field: attrs[self.username_field], 'password': attrs['password']}
        # print(authenticate_kwargs)
        try:
            # user = User.objects.get(**authenticate_kwargs)
            user = User.objects.get(username=attrs[self.username_field])
        except Exception as e:
            raise exceptions.NotFound(e.args[0])
 
        if(check_password(attrs['password'],user.password)):
            refresh = self.get_token(user)
            # token的 过期时间
            timestamp = refresh.access_token.payload['exp']  # 有效期-时间戳
            time_local = time.localtime(int(timestamp))
            expire_time = time.strftime("%Y-%m-%d %H:%M:%S", time_local)
    
            data = {"userId": user.id,"username":user.username,"token": str(refresh.access_token), "refresh": str(refresh),"expire":expire_time}
            return data
 
 
class MyTokenObtainPairView(TokenObtainPairView):
    serializer_class = MyTokenObtainPairSerializer
 
 
class MyJWTAuthentication(JWTAuthentication):
    '''
    修改JWT认证类，返回自定义User表对象
    '''
    def get_user(self, validated_token):
        try:
            user_id = validated_token['user_id']
        except KeyError:
            raise InvalidToken(_('Token contained no recognizable user identification'))
 
        try:
            user = User.objects.get(**{
    'id': user_id})
        except User.DoesNotExist:
            raise AuthenticationFailed(_('User not found'), code='user_not_found')
 
        return user