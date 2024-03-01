from django.db import models

# Create your models here.
class Password(models.Model):
    old_password = models.CharField(max_length=255)
    new_password = models.CharField(max_length=255)
    npass_password = models.CharField(max_length=255)


