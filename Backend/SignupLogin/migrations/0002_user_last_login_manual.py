# Generated by Django 4.1.13 on 2024-02-29 14:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('SignupLogin', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='last_login_manual',
            field=models.DateTimeField(blank=True, null=True),
        ),
    ]
