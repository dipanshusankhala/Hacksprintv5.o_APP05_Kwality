from django.http import JsonResponse
from django.contrib.auth.decorators import login_required
from django.views.decorators.http import require_POST
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import authenticate, login
from django.contrib.auth.models import User
from .models import Password

@require_POST
@csrf_exempt
@login_required
def change_password(request):
    user = request.user
    old_password = request.POST.get('old_password')
    new_password = request.POST.get('new_password')
    re_entered_password = request.POST.get('re_entered_password')

    # Verify that the old password is correct
    if not user.check_password(old_password):
        return JsonResponse({'error': 'Incorrect old password'}, status=400)

    # Verify that the new password and re-entered password match
    if new_password != re_entered_password:
        return JsonResponse({'error': 'New password and re-entered password do not match'}, status=400)

    # Change the password
    user.set_password(new_password)
    user.save()

    # Save the password change record
    Password.objects.create(
        user=user,
        old_password=old_password,
        new_password=new_password
    )

    return JsonResponse({'message': 'Password changed successfully'})
