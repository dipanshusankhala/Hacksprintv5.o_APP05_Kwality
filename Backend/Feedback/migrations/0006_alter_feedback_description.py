# Generated by Django 4.1.13 on 2024-01-15 11:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Feedback', '0005_alter_feedback_description'),
    ]

    operations = [
        migrations.AlterField(
            model_name='feedback',
            name='description',
            field=models.TextField(default='', max_length=500),
        ),
    ]
