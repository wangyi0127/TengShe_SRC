# TengShe_SRC

根据自身安全工作，关于应用安全测试、漏洞生命周期管理及过程相关工作内容有所分析与与想法，由此想要基于安全测试与管理需求，编写一个辅助于安全管理与漏洞测试的系统平台。

考虑再三，计划使用django借此机会学习和丰富一下python web相关技术能力。

## 安装迁移

python manage.py migrate   // 创建表结构

python manage.py makemigrations app_project  // 让 Django 知道我们在我们的模型有一些变更

python manage.py migrate app_project   // 创建表结构

运行：
python manage.py runserver 0.0.0.0:8100

创建管理用户：

python manage.py createsuperuser

## git操作

切换分支
git checkout main

拉取：
git pull origin main

提交:
git checkout dev
git pull：在提交代码之前需要先拉取代码
git add .
git add 文件名1 文件名2 …
git commit -m ""
git commit 文件名 -m “提交代码备注”

git push origin main

合并代码
git merge main

检查一下是否合并成功，是否有冲突
git status

查看分支
git branch
git branch -a

## 结构分析

项目：
项目信息表：
项目编号，项目名称，项目详情，所属公司，项目类型，行业类型，技能要求，业务类型，奖励类型，奖金等级，创建时间，项目开始时间，项目结束时间，项目状态

公司信息表:
公司名称，公司介绍，logo，地址，网站链接

项目类型：
typename(普通项目，高级项目，企业src，攻防渗透，兼职测试)

行业类型：
typename(金融，电商，娱乐，运输，旅游，房产，制造，政企，健康，互联网，综合，其他)

技能要求：
typename(web传统漏洞，APP安全漏洞，逻辑漏洞，情报/信息收集，内网渗透，云安全，代码审计，逆向破解，API测试，反序列化，二进制分析，C/S端测试，IOT测试，安全开发，应急溯源，CTF，其他)

业务类型：
typename(WEB端，移动客户端，PC端，智能硬件)

奖励类型：
typename(现金，代金卷，积分)

奖励等级：
1，2，3，4，5

项目状态：
待审核，未开始，进行中，已结束

漏洞信息表：
漏洞编号，漏洞名称，漏洞描述，影响范围，漏洞危害，漏洞等级，整改意见，漏洞状态，漏洞奖励，创建时间，提交人，所属项目

漏洞等级表：
紧急，高危，中危，低危

用户表：
邮箱，电话，密码，用户名，创建时间，用户类型，测试用户信息，企业用户信息，运营用户信息

测试用户信息
姓名，性别，生日，学历，职业，简介，所属团队

运营用户信息表：
姓名，性别，生日，入职时间，所属部门

部门信息表：
部门名称

## 奖励机制、角色权限控制，团队管理延后开发

项目关联表：
项目编号，测试用户编号，团队编号

团队信息表：
团队名称，团队描述，创建时间，创建人，队长

漏洞奖励：
数额，漏洞等级，奖励类型编号

角色表：
角色名称

功能表：
功能名称，url

权限表：
角色编号，功能编号
