from django.contrib import admin
from django.urls import path, include
from .views import PostFeedbackView


urlpatterns = [
    
    path('feedback/',  PostFeedbackView.as_view(), name='post_feedback'),  # Include the app-specific URLs
    # Add other URLs as needed
]
