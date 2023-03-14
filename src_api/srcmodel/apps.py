from django.apps import AppConfig

class UserFormConfig(AppConfig):
    name = 'srcmodel'

class SrcConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'srcmodel'
    verbose_name = "平台数据管理"