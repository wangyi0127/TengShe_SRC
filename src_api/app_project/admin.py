from django.contrib import admin
from app_project.models import *
from app_project.forms import UserModelForm
 
# Register your models here.

class CompanyInformationAdmin(admin.ModelAdmin):
    list_display = ('id', 'company_name', 'company_title', 'logo', 'address', 'website') # list
    # fields = ('company_name', 'company_title', 'company_introduction', 'logo', 'address', 'website')

class ProjectTypeAdmin(admin.ModelAdmin):
    list_display = ('id', 'type_name') # list

class IndustryTypeAdmin(admin.ModelAdmin):
    list_display = ('id', 'type_name') # list

class SkillRequirementsAdmin(admin.ModelAdmin):
    list_display = ('id', 'type_name') # list

class BusinessTypeAdmin(admin.ModelAdmin):
    list_display = ('id', 'type_name') # list

class RewardTypeAdmin(admin.ModelAdmin):
    list_display = ('id', 'type_name') # list

class RewardLevelAdmin(admin.ModelAdmin):
    list_display = ('id', 'level_name') # list
    
class ProjectStatusAdmin(admin.ModelAdmin):
    list_display = ('id', 'type_name') # list

# class CompanyInformationInline(admin.TabularInline):
#     model = CompanyInformation

class ProjectAdmin(admin.ModelAdmin):
    # inlines = [CompanyInformationInline]  # Inline
    list_display = ('id', 'project_id', 'project_name', 'company_information', 'project_status') # list

class ManageUserDetailAdmin(admin.ModelAdmin):
    # inlines = [CompanyInformationInline]  # Inline
    list_display = ('id', 'name', 'sex', 'birthday', 'entry_data', 'department') # list

class UserAdmin(admin.ModelAdmin):
    list_display = ('id', 'username', 'email', 'phone', 'usertype', 'company_information', 'manage_userinfo', 'user_detail') # list
    fieldsets = (
        (None, {
            'fields': ('username',)
        }),
        (None, {
            'fields': ('email',)
        }),
        (None, {
            'fields': ('phone',)
        }),
        (None, {
            'fields': ('password',)
        }),
        (None, {
            'fields': ('usertype',),
            'classes': ('usertypecls',)
        }),
        (None, {
            'fields': ('user_detail',),
            'classes': ('user_detailcls',)
        }),
        (None, {
            'fields': ('company_information',),
            'classes': ('company_informationcls',)
        }),
        (None, {
            'fields': ('manage_userinfo',),
            'classes': ('manage_userinfocls',)
        })
    )
    form = UserModelForm
    class Media:
    #     js = (
    #     '//ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js',  # jquery
    #     'js/admin.js',       # project static folder
    # )
        js = ('js/base.js',)


admin.site.register(CompanyInformation, CompanyInformationAdmin)
admin.site.register(ProjectType, ProjectTypeAdmin)
admin.site.register(IndustryType, IndustryTypeAdmin)
admin.site.register(SkillRequirements, SkillRequirementsAdmin)
admin.site.register(BusinessType, BusinessTypeAdmin)
admin.site.register(RewardType, RewardTypeAdmin)
admin.site.register(RewardLevel, RewardLevelAdmin)
admin.site.register(ProjectStatus, ProjectStatusAdmin)
admin.site.register(Project, ProjectAdmin)
admin.site.register(ManageUserDetail, ManageUserDetailAdmin)
admin.site.register(User,UserAdmin)



admin.site.register([UserDetail, Department,
    LeakRank, LeakInformation])
