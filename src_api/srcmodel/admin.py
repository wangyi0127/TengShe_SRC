from django.contrib import admin
from srcmodel.models import *
 
# Register your models here.
admin.site.register([CompanyInformation,Department, ManageUserDetail, UserDetail, User, 
    ProjectType, IndustryType, SkillRequirements, BusinessType, RewardType, RewardLevel, ProjectStatus, Project, 
    LeakRank, LeakInformation])
