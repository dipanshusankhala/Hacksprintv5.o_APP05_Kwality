from django.shortcuts import render
from django.contrib.auth import login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.utils.decorators import method_decorator
from django.views import View
import json
from SignupLogin.models import User  
from django.contrib.auth.hashers import check_password
from django.http import JsonResponse
from django.middleware.csrf import get_token
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponse, JsonResponse
from django.contrib.auth import authenticate, login
from django.utils import timezone
from django.contrib.auth.hashers import check_password



def csrf_token_view(request):
    if request.method == 'GET':
        csrf_token = get_token(request)
        return JsonResponse({'csrfToken': csrf_token})


@method_decorator(csrf_exempt, name='dispatch')
class SignUpView(View):
    def post(self, request, *args, **kwargs):
        data = json.loads(request.body)
        username = data.get('username')
        email = data.get('email')
        password = data.get('password')

        if not username or not email or not password:
            return JsonResponse({'error': 'All fields are required.'}, status=400)

        
        user = User.objects.create(username=username, email=email)
        user.set_password(password)
        user.save()

        return JsonResponse({'success': 'User created successfully.'})


@method_decorator(csrf_exempt, name='dispatch')
class LoginView(View):
    def post(self, request, *args, **kwargs):
        data = json.loads(request.body)
        username = data.get('username')
        password = data.get('password')

        print(f"Login Attempt - Username: {username}, Password: {password}")

        if not username or not password:
            return JsonResponse({'error': 'Both username and password are required.'}, status=400)

       
        try:
            user = User.objects.get(username=username)
        except User.DoesNotExist:
            user = None

        if user and check_password(password, user.password):
            

            user.last_login_property = timezone.now()
            user.save(update_fields=['last_login'])

            
            login(request, user)

           

            return JsonResponse({'success': 'Login successful.'})
        else:
            print("Invalid credentials")
            return JsonResponse({'error': 'Invalid username or password.'}, status=401)


