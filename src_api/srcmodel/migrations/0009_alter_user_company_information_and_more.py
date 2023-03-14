# Generated by Django 4.1.7 on 2023-03-14 07:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('srcmodel', '0008_alter_user_password'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='company_information',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='srcmodel.companyinformation', verbose_name='企业信息'),
        ),
        migrations.AlterField(
            model_name='user',
            name='manage_userinfo',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='srcmodel.manageuserdetail', verbose_name='运营用户信息'),
        ),
        migrations.AlterField(
            model_name='user',
            name='user_detail',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='srcmodel.userdetail', verbose_name='测试用户信息'),
        ),
    ]