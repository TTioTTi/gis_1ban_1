from django.urls import path

from subscribeapp.views import SubscriptionView

app_name = 'subscirbeapp'

urlpatterns = [
    path('subscribe/<int:project_pk>', SubscriptionView.as_view(), name='subscribe')
]
