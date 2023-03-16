# -*- coding: utf-8 -*-
from django.http import HttpResponse
from app_project.models import User,Project
from django.contrib import auth
 
# login
def Login(request):
    if request.method == "GET":
        return render(request, "login.html")
    username = request.POST.get("username")
    password = request.POST.get("pwd")
    valid_num = request.POST.get("valid_num")
    keep_str = request.session.get("keep_str")
    if keep_str.upper() == valid_num.upper():
        user_obj = auth.authenticate(username=username, password=password)
        print(user_obj.username)
        if not user_obj:
            return redirect("/login/")
        else:

            auth.login(request, user_obj)
            path = request.GET.get("next") or "/index/"
            print(path)
            return redirect(path)
    else:
        return redirect("/login/")
    return HttpResponse("<p>login</p>")

# project 列表页面数据查询
def ProjectList(request):
    return HttpResponse("<p>projectlist</p>")