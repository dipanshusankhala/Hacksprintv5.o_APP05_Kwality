from django.db import models

# Create your models here.


class Feedback(models.Model):
    #id=models.CharField(max_length=50)
    username = models.CharField( max_length=500)
    email = models.EmailField()
    description = models.TextField(max_length=500)
       
    





