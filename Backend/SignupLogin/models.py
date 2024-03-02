from django.db import models
from django.contrib.auth.hashers import make_password, check_password
from django.utils import timezone

class User(models.Model):
    username = models.CharField(max_length=50, unique=True)
    email = models.EmailField(unique=True, default='')
    password = models.CharField(max_length=255)

    last_login = models.DateTimeField(blank=True, null=True)

    def set_last_login(self, value):
        self.last_login = value

    def get_last_login(self):
        return self.last_login

    # Override the last_login property
    last_login_property = property(get_last_login, set_last_login)
    

    
    def set_password(self, raw_password):
        self.password = make_password(raw_password)

    def check_password(self, raw_password):
        return check_password(raw_password, self.password)

    