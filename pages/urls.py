from django.conf.urls import url, include

from .views import homePageView

urlpatterns = [
    url('', homePageView, name='home')
]