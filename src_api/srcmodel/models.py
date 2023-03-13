from django.db import models

# Create your models here.
 
#  1项目信息表
class Project(models.Model):
    project_id = models.CharField(max_length=32) # 项目编号
    project_name = models.CharField(max_length=32) # 项目名称，
    project_details = models.TextField() # 项目详情，
    company_information = models.ForeignKey("CompanyInformation", on_delete=models.CASCADE) # 所属公司，外键，多对一
    project_type = models.ForeignKey("ProjectType", on_delete=models.CASCADE) # 项目类型，外键，多对一
    industry_type = models.ForeignKey("IndustryType", on_delete=models.CASCADE) # 行业类型，外键，多对一
    skill_requirements = models.ManyToManyField("SkillRequirements") # 技能要求（多对多）
    business_type = models.ForeignKey("BusinessType", on_delete=models.CASCADE) # 业务类型，外键，多对一
    reward_type = models.ForeignKey("RewardType", on_delete=models.CASCADE) # 奖励类型，外键，多对一
    reward_level = models.ForeignKey("RewardLevel", on_delete=models.CASCADE) # 奖金等级，外键，多对一
    project_status = models.ForeignKey("ProjectStatus", on_delete=models.CASCADE) # 项目状态,外键，多对一
    create_data = models.DateField() # 创建时间，
    start_data = models.DateField() # 项目开始时间，
    end_data = models.DateField() # 项目结束时间，

# 2公司信息表
class CompanyInformation(models.Model): 
    company_name = models.CharField(max_length=32) # 公司名称，
    company_title = models.CharField(max_length=64) # 公司简介，
    company_introduction = models.TextField() # 公司描述，
    logo = models.CharField(max_length=128) # logo，
    address = models.CharField(max_length=32) # 地址，
    website = models.URLField() # 网站链接，

# 3项目类型
class ProjectType(models.Model):
    type_name = models.CharField(max_length=32)

# 4行业类型
class IndustryType(models.Model):
    type_name = models.CharField(max_length=32)

# 5技能要求
class SkillRequirements(models.Model):
    type_name = models.CharField(max_length=32)

# 6业务类型
class BusinessType(models.Model):
    type_name = models.CharField(max_length=32)

# 7奖励类型
class RewardType(models.Model):
    type_name = models.CharField(max_length=32)

# 8奖励等级
class RewardLevel(models.Model):
    level_name = models.CharField(max_length=16)

# 9项目状态
class ProjectStatus(models.Model):
    type_name = models.CharField(max_length=16)

# 漏洞信息表
class LeakInformation(models.Model):
    leak_id = models.CharField(max_length=32) # 漏洞编号，
    leak_name = models.CharField(max_length=32) # 漏洞名称，
    leak_describe = models.TextField() # 漏洞描述，
    leak_scope = models.CharField(max_length=32) # 影响范围，
    leak_harm = models.CharField(max_length=64) # 漏洞危害，
    leak_rank = models.ForeignKey("LeakRank", on_delete=models.CASCADE) # 漏洞等级，多对一
    repair_comments = models.CharField(max_length=64) # 整改意见，
    leak_status = models.CharField(max_length=32) # 漏洞状态，
    leak_reward = models.IntegerField() # 漏洞奖励，保留字段
    create_data = models.DateField() # 创建时间，
    author = models.ForeignKey("User", on_delete=models.CASCADE) # 提交人，多对一
    project = models.ForeignKey("Project", on_delete=models.CASCADE) # 提交人，多对一

# 漏洞等级
class LeakRank(models.Model):
    level_name = models.CharField(max_length=16)

# 用户表
class User(models.Model):
    username = models.CharField(max_length=32) # 用户名
    email = models.EmailField() # 邮箱，
    phone = models.CharField(max_length=32) # 联系电话，
    password = models.CharField(max_length=254) # 认证密码，
    usertype = models.CharField(max_length=16) # 用户类型
    user_detail = models.OneToOneField("UserDetail", on_delete=models.CASCADE) # 测试用户信息关联
    company_information = models.OneToOneField("CompanyInformation", on_delete=models.CASCADE) # 企业用户信息关联
    create_name = models.OneToOneField("ManageUserDetail", on_delete=models.CASCADE) # 运营用户信息关联

# 运营用户信息表
class ManageUserDetail(models.Model):
    name = models.CharField(max_length=32) # 姓名
    sex = models.CharField(max_length=16)
    birthday = models.DateField() # 生日
    entry_data = models.DateField() # 入职时间
    department = models.ForeignKey("Department", on_delete=models.CASCADE) # 所属部门


# 部门表
class Department(models.Model):
    dep_name = models.CharField(max_length=32) # 部门名称

# 安全测试用户信息
class UserDetail(models.Model):
    name = models.CharField(max_length=32) # 姓名
    sex = models.CharField(max_length=16)
    birthday = models.DateField() # 生日
    diploma = models.CharField(max_length=32) # 学历
    occupation = models.CharField(max_length=32) # 职业
    introduce = models.CharField(max_length=254) #简介
#     team_information = models.ForeignKey("TeamInformation", on_delete=models.CASCADE) # 所属团队，多对一

# class TeamInformation(models.Model):
#     team_name = models.CharField(max_length=32) # 团队名称
#     team_describe = models.CharField(max_length=254) # 团队名称
#     create_data = models.DateField() # 创建时间
#     create_name = models.OneToOneField("UserDetail", on_delete=models.CASCADE) # 创建人
#     team_leader = models.OneToOneField("UserDetail", on_delete=models.CASCADE) # 队长

    