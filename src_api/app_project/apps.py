from django.apps import AppConfig

class UserFormConfig(AppConfig):
    name = 'app_project'

class SrcConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'app_project'
    verbose_name = "平台数据管理"