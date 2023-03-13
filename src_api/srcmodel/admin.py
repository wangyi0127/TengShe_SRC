from django.contrib import admin
from srcmodel.models import *
 
# Register your models here.

class CompanyInformationAdmin(admin.ModelAdmin):
    list_display = ('id', 'company_name', 'company_title', 'company_introduction', 'logo', 'address', 'website') # list
    fields = ('company_name', 'company_title', 'company_introduction', 'logo', 'address', 'website')

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


admin.site.register(CompanyInformation, CompanyInformationAdmin)
admin.site.register(ProjectType, ProjectTypeAdmin)
admin.site.register(IndustryType, IndustryTypeAdmin)
admin.site.register(SkillRequirements, SkillRequirementsAdmin)
admin.site.register(BusinessType, BusinessTypeAdmin)
admin.site.register(RewardType, RewardTypeAdmin)
admin.site.register(RewardLevel, RewardLevelAdmin)
admin.site.register(ProjectStatus, ProjectStatusAdmin)
admin.site.register(Project, ProjectAdmin)



admin.site.register([ManageUserDetail, UserDetail, User, 
    LeakRank, LeakInformation])
