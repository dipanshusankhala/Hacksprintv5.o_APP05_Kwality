from django.urls import path
from .views import change_password

app_name = 'Password'  # Replace 'yourapp' with the actual name of your app

urlpatterns = [
    # Other patterns...
    path('api/Password/',change_password, name='change_password'),

]


