# Generated by Django 4.1.13 on 2024-02-29 15:05

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('SignupLogin', '0002_user_last_login_manual'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='user',
            name='last_login_manual',
        ),
    ]
