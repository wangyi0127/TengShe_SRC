from django.db import models

# Create your models here.
 
#  1项目信息表
class Project(models.Model):
    project_id = models.CharField(max_length=32,verbose_name="项目编号") 
    project_name = models.CharField(max_length=32,verbose_name="项目名称") 
    project_details = models.TextField(verbose_name="项目详情")
    company_information = models.ForeignKey("CompanyInformation", on_delete=models.CASCADE,verbose_name="所属公司") # 所属公司，外键，多对一
    project_type = models.ForeignKey("ProjectType", on_delete=models.CASCADE,verbose_name="项目类型") # 项目类型，外键，多对一
    industry_type = models.ForeignKey("IndustryType", on_delete=models.CASCADE,verbose_name="行业类型") # 行业类型，外键，多对一
    skill_requirements = models.ManyToManyField("SkillRequirements",verbose_name="技能要求") # 技能要求（多对多）
    business_type = models.ForeignKey("BusinessType", on_delete=models.CASCADE,verbose_name="业务类型") # 业务类型，外键，多对一
    reward_type = models.ForeignKey("RewardType", on_delete=models.CASCADE,verbose_name="奖励类型") # 奖励类型，外键，多对一
    reward_level = models.ForeignKey("RewardLevel", on_delete=models.CASCADE,verbose_name="奖金等级") # 奖金等级，外键，多对一
    project_status = models.ForeignKey("ProjectStatus", on_delete=models.CASCADE,verbose_name="项目状态") # 项目状态,外键，多对一
    create_data = models.DateField(verbose_name="创建时间")
    start_data = models.DateField(verbose_name="项目开始时间")
    end_data = models.DateField(verbose_name="项目结束时间")
    class Meta:
        verbose_name_plural='项目信息表'
        verbose_name = '项目信息表'
    def __str__(self): #设置输出对象时的信息
        return self.project_name

# 2公司信息表
class CompanyInformation(models.Model): 
    company_name = models.CharField(max_length=32,verbose_name="公司名称") 
    company_title = models.CharField(max_length=64,verbose_name="公司简介") 
    company_introduction = models.TextField(verbose_name="公司描述") 
    logo = models.CharField(max_length=128,verbose_name="logo") 
    address = models.CharField(max_length=32,verbose_name="地址") 
    website = models.URLField(verbose_name="网站链接") 
    class Meta:
        verbose_name_plural='公司信息表'
        verbose_name = '公司信息表'
    def __str__(self): #设置输出对象时的信息
        return self.company_name

# 3项目类型
class ProjectType(models.Model):
    type_name = models.CharField(max_length=32,verbose_name="类型名称")
    class Meta:
        verbose_name_plural='项目类型表'
        verbose_name = '项目类型表'
    def __str__(self): #设置输出对象时的信息
        return self.type_name

# 4行业类型
class IndustryType(models.Model):
    type_name = models.CharField(max_length=32,verbose_name="类型名称")
    class Meta:
        verbose_name_plural='行业类型表'
        verbose_name = '行业类型表'
    def __str__(self): #设置输出对象时的信息
        return self.type_name

# 5技能要求
class SkillRequirements(models.Model):
    type_name = models.CharField(max_length=32,verbose_name="类型名称")
    class Meta:
        verbose_name_plural='技能要求表'
        verbose_name = '技能要求表'
    def __str__(self): #设置输出对象时的信息
        return self.type_name

# 6业务类型
class BusinessType(models.Model):
    type_name = models.CharField(max_length=32,verbose_name="类型名称")
    class Meta:
        verbose_name_plural='业务类型表'
        verbose_name = '业务类型表'
    def __str__(self): #设置输出对象时的信息
        return self.type_name

# 7奖励类型
class RewardType(models.Model):
    type_name = models.CharField(max_length=32,verbose_name="类型名称")
    class Meta:
        verbose_name_plural='奖励类型表'
        verbose_name = '奖励类型表'
    def __str__(self): #设置输出对象时的信息
        return self.type_name

# 8奖励等级
class RewardLevel(models.Model):
    level_name = models.CharField(max_length=16,verbose_name="类型名称")
    class Meta:
        verbose_name_plural='奖励等级表'
        verbose_name = '奖励等级表'
    def __str__(self): #设置输出对象时的信息
        return self.level_name

# 9项目状态
class ProjectStatus(models.Model):
    type_name = models.CharField(max_length=16,verbose_name="类型名称")
    class Meta:
        verbose_name_plural='项目状态表'
        verbose_name = '项目状态表'
    def __str__(self): #设置输出对象时的信息
        return self.type_name

# 漏洞信息表
class LeakInformation(models.Model):
    leak_id = models.CharField(max_length=32,verbose_name="漏洞编号") # 漏洞编号，
    leak_name = models.CharField(max_length=32,verbose_name="漏洞名称") # 漏洞名称，
    leak_describe = models.TextField(verbose_name="漏洞描述") # 漏洞描述，
    leak_scope = models.CharField(max_length=32,verbose_name="影响范围") # 影响范围，
    leak_harm = models.CharField(max_length=64,verbose_name="漏洞危害") # 漏洞危害，
    leak_rank = models.ForeignKey("LeakRank", on_delete=models.CASCADE,verbose_name="漏洞等级") # 漏洞等级，多对一
    repair_comments = models.CharField(max_length=64,verbose_name="整改意见") # 整改意见，
    leak_status = models.CharField(max_length=32,verbose_name="漏洞状态") # 漏洞状态，
    leak_reward = models.IntegerField(verbose_name="漏洞奖励") # 漏洞奖励，保留字段
    create_data = models.DateField(verbose_name="创建时间") # 创建时间，
    author = models.ForeignKey("User", on_delete=models.CASCADE,verbose_name="提交人") # 提交人，多对一
    project = models.ForeignKey("Project", on_delete=models.CASCADE,verbose_name="所属项目") # 所属项目，多对一
    class Meta:
        verbose_name_plural='漏洞信息表'
        verbose_name = '漏洞信息表'

# 漏洞等级
class LeakRank(models.Model):
    level_name = models.CharField(max_length=16,verbose_name="等级")
    class Meta:
        verbose_name_plural='漏洞等级表'
        verbose_name = '漏洞等级表'
    def __str__(self): #设置输出对象时的信息
        return self.level_name

# 用户表
class User(models.Model):
    username = models.CharField(max_length=32,verbose_name="用户名") # 用户名
    email = models.EmailField(verbose_name="邮箱") # 邮箱，
    phone = models.CharField(max_length=32,verbose_name="联系电话") # 联系电话，
    password = models.CharField(max_length=254,verbose_name="认证密码") # 认证密码，
    usertype_choices = (
        (0, "安全人员"),
        (1, "企业人员"),
        (2, "运营人员"),
    )
    usertype = models.SmallIntegerField(choices=usertype_choices,verbose_name="用户类型") # 用户类型
    user_detail = models.OneToOneField("UserDetail", on_delete=models.CASCADE,verbose_name="测试用户信息") # 测试用户信息关联，一对一
    company_information = models.OneToOneField("CompanyInformation", on_delete=models.CASCADE,verbose_name="企业信息") # 企业用户信息关联，一对一
    create_name = models.OneToOneField("ManageUserDetail", on_delete=models.CASCADE,verbose_name="运营用户信息") # 运营用户信息关联，一对一
    class Meta:
        verbose_name_plural='用户表'
        verbose_name = '用户表'
    def __str__(self): #设置输出对象时的信息
        return self.username

# 运营用户信息表
class ManageUserDetail(models.Model):
    name = models.CharField(max_length=32,verbose_name="姓名") # 姓名
    sex_choices = (
        (0, "女"),
        (1, "男"),
        (2, "保密"),
    )
    sex = models.SmallIntegerField(choices=sex_choices,verbose_name="性别")
    birthday = models.DateField(verbose_name="生日") # 生日
    entry_data = models.DateField(verbose_name="入职时间") # 入职时间
    department = models.ForeignKey("Department", on_delete=models.CASCADE,verbose_name="所属部门") # 所属部门
    class Meta:
        verbose_name_plural='运营用户信息表'
        verbose_name = '运营用户信息表'
    def __str__(self): #设置输出对象时的信息
        return self.name


# 部门表
class Department(models.Model):
    dep_name = models.CharField(max_length=32,verbose_name="部门名称") # 部门名称
    class Meta:
        verbose_name_plural='部门表'
        verbose_name = '部门表'
    def __str__(self): #设置输出对象时的信息
        return self.dep_name

# 安全测试用户信息
class UserDetail(models.Model):
    name = models.CharField(max_length=32,verbose_name="姓名") # 姓名
    sex_choices = (
        (0, "女"),
        (1, "男"),
        (2, "保密"),
    )
    sex = models.SmallIntegerField(choices=sex_choices,verbose_name="性别")
    birthday = models.DateField(verbose_name="生日") # 生日
    diploma = models.CharField(max_length=32,verbose_name="学历") # 学历
    occupation = models.CharField(max_length=32,verbose_name="职业") # 职业
    introduce = models.CharField(max_length=254,verbose_name="简介") #简介
#     team_information = models.ForeignKey("TeamInformation", on_delete=models.CASCADE) # 所属团队，多对一
    class Meta:
        verbose_name_plural='安全人员信息表'
        verbose_name = '安全人员信息表'
    def __str__(self): #设置输出对象时的信息
        return self.name

# class TeamInformation(models.Model):
#     team_name = models.CharField(max_length=32) # 团队名称
#     team_describe = models.CharField(max_length=254) # 团队名称
#     create_data = models.DateField() # 创建时间
#     create_name = models.OneToOneField("UserDetail", on_delete=models.CASCADE) # 创建人
#     team_leader = models.OneToOneField("UserDetail", on_delete=models.CASCADE) # 队长

    