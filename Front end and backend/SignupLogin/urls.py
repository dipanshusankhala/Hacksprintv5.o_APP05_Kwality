# your_app_name/urls.py

from django.urls import path
from SignupLogin.views import SignUpView, LoginView ,csrf_token_view
from .views import csrf_token_view

urlpatterns = [
    path('signup/', SignUpView.as_view(), name='signup'),
    path('login/', LoginView.as_view(), name='login'),
    path('csrf/', csrf_token_view, name='csrf_token_view'),
]
