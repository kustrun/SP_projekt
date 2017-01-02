from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^news', views.news, name='news'),
    url(r'^reviews', views.reviews, name='reviews'),
    url(r'^login', views.loginUser, name='loginUser'),
    url(r'^logout', views.logoutUser, name='logoutUser'),
    url(r'^', views.index, name='index'),
]