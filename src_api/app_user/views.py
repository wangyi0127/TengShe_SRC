from django.http import  HttpResponse,JsonResponse
from rest_framework.views import Response
from rest_framework.views import APIView
from rest_framework import permissions
from rest_framework_simplejwt import authentication
from app_user.auth import MyTokenObtainPairSerializer
import json
 
# Create your views here.

# -----------------------------simplejwt-----------------------------
##  不需要携带token就能访问接口
def ListShops(requests):
    return HttpResponse("this is shop list")
def login(requests):
    token = MyTokenObtainPairSerializer.validate(MyTokenObtainPairSerializer,attrs={"username":requests.POST['username'],"password":requests.POST['password']})
    print(token)
    return JsonResponse(token)
 
# 需要携带token才可以访问的视图 
# Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjc5MDcwMzg1LCJpYXQiOjE2NzkwNjk3ODUsImp0aSI6ImVjYTQxMDQ5ZmE2NzRkNDRiZDY3M2M2ZGEwMzMxN2U3IiwidXNlcl9pZCI6MX0.vF4jFSwP8QCQ1oO4igpNcw0lKmV1f6kbmTqdy5NFJiM
class ListView(APIView):
    #  需要token才可以访问的视图
    permission_classes = [permissions.IsAuthenticated]
    authentication_classes = (authentication.JWTAuthentication,)
 
    def get(self, request, *args, **kwargs):
        return HttpResponse('Get OK')
 
    def post(self, request, *args, **kwargs):
        return HttpResponse('Post OK')
