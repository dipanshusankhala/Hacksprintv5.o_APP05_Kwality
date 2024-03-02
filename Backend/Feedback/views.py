# feedback/views.py

import json
from django.http import JsonResponse
from django.views import View
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from .models import Feedback

@method_decorator(csrf_exempt, name='dispatch')
class PostFeedbackView(View):
    def post(self, request, *args, **kwargs):
        try:
            # Parse JSON data from the request body
            data = json.loads(request.body.decode('utf-8'))
            username = data.get('username')
            email = data.get('email')
            description = data.get('description')

            # Creating a Feedback object and saving it to the database
            feedback_entry = Feedback(username=username, email=email, description=description)
            feedback_entry.save()

            return JsonResponse({'message': 'Feedback submitted successfully'}, status=201)
        except Exception as e:
            return JsonResponse({'error': f'Failed to submit feedback. Error: {str(e)}'}, status=400)
