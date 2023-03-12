from django.db import models

# Create your models here.
 
#  1项目信息表
class Project(models.Model):
    project_id = models.CharField(max_length=32) # 项目编号
    project_name = models.DecimalField(max_digits=5, decimal_places=2) # 项目名称，
    project_details = models.CharField(max_length=32) # 项目详情，
    team_information = models.ForeignKey("TeamInformation", on_delete=models.CASCADE) # 所属团队，外键，多对一
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

# 2团队信息表
class TeamInformation(models.Model):
    team_name = models.CharField(max_length=32)
    team_introduction = models.CharField(max_length=64)
    logo = models.CharField(max_length=32)
    address = models.CharField(max_length=32)
    website = models.CharField(max_length=32)
    email = models.EmailField()
    phone = models.CharField(max_length=32)
    password = models.CharField(max_length=64)

# 3项目类型
class ProjectType(models.Model):
    type_name = (
        (0, "普通项目"),
        (1, "高级项目"),
        (2, "企业SRC"),
        (3, "攻防渗透"),
        (4, "兼职测试"),
    )

# 4行业类型
class IndustryType(models.Model):
    type_name = (
        (0, "金融"),
        (1, "电商"),
        (2, "娱乐"),
        (3, "运输"),
        (4, "旅游"),
        (5, "房产"),
        (6, "制造业"),
        (7, "政企"),
        (8, "健康"),
        (9, "互联网"),
        (10, "综合"),
        (11, "其他"),
    )

# 5技能要求
class SkillRequirements(models.Model):
    type_name = (
        (0, "web传统漏洞"),
        (1, "APP安全漏洞"),
        (2, "逻辑漏洞"),
        (3, "情报/信息收集"),
        (4, "内网渗透"),
        (5, "云安全"),
        (6, "代码审计"),
        (7, "逆向破解"),
        (8, "API测试"),
        (9, "反序列化"),
        (10, "二进制分析"),
        (11, "C/S端测试"),
        (12, "IOT测试"),
        (13, "安全开发"),
        (14, "应急溯源"),
        (15, "CTF"),
        (16, "其他"),
    )

# 6业务类型
class BusinessType(models.Model):
    type_name = (
        (0, "WEB端"),
        (1, "移动客户端"),
        (2, "PC端"),
        (3, "智能硬件"),
    )

# 7奖励类型
class RewardType(models.Model):
    type_name = (
        (0, "奖金"),
        (1, "代金卷"),
        (2, "积分"),
    )

# 8奖励等级
class RewardLevel(models.Model):
    level_name = (
        (0, "1"),
        (1, "2"),
        (2, "3"),
        (3, "4"),
        (3, "5"),
    )
# 9项目状态
class ProjectStatus(models.Model):
    type_name = (
        (0, "待审核"),
        (1, "未开始"),
        (2, "进行中"),
        (3, "已结束"),
    )


class Author(models.Model):
    name = models.CharField(max_length=32)
    age = models.SmallIntegerField()
    au_detail = models.OneToOneField("AuthorDetail", on_delete=models.CASCADE)


class AuthorDetail(models.Model):
    gender_choices = (
        (0, "女"),
        (1, "男"),
        (2, "保密"),
    )
    gender = models.SmallIntegerField(choices=gender_choices)
    tel = models.CharField(max_length=32)
    addr = models.CharField(max_length=64)
    birthday = models.DateField()