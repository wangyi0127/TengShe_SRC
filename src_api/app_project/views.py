# -*- coding: utf-8 -*-
from django.http import HttpResponse
from app_project.models import User,Project
from django.contrib import auth
from django.shortcuts import render
from django.http import JsonResponse
 
# login
def Login(request):
    if request.method == "GET":
        return JsonResponse(
            {'success': 'fail', 'msg': 'HTTP方法异常'},
        )
    request.session['CheckCode'] = '123456'
    username = request.POST.get("username")
    password = request.POST.get("pwd")
    valid_num = request.POST.get("code")
    CheckCode = request.session.get("CheckCode")
    if CheckCode.upper() == valid_num.upper():
        user_obj = auth.authenticate(username=username, password=password)
        return HttpResponse(user_obj.username)
    else:
        return JsonResponse({'success': 'fail', 'msg': '验证码错误'})

# project 列表页面数据查询
def ProjectList(request):
    return HttpResponse("<p>projectlist</p>")