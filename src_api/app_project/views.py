# -*- coding: utf-8 -*-
from django.http import HttpResponse,JsonResponse
from app_project.models import User,Project
 
# # login
# def Login(request):
#     if request.method == "GET":
#         return JsonResponse(
#             {'success': 'fail', 'msg': 'HTTP方法异常'},
#         )
#     request.session['CheckCode'] = '123456'
#     email = request.POST.get("username")
#     password = request.POST.get("pwd")
#     valid_num = request.POST.get("code")
#     CheckCode = request.session.get("CheckCode")
#     if CheckCode.upper() == valid_num.upper():
#         user_obj = User.objects.get(email=email)
#         if check_password(password, user_obj.password):
#             return JsonResponse({'success': 'fail', 'msg': user_obj.username})
#         else:
#             return JsonResponse({'success': 'fail', 'msg': '用户名或密码错误'})
#     else:
#         return JsonResponse({'success': 'fail', 'msg': '验证码错误'})

# project 列表页面数据查询
def ProjectList(request):
    return HttpResponse("<p>projectlist</p>")