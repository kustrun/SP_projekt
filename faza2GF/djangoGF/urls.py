from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^news/news.html', views.newsDetail, name='news/news'),
    url(r'^news', views.news, name='news'),
    url(r'^reviews/review.html', views.reviewsDetail, name='reviews/reviews'),
    url(r'^reviews', views.reviews, name='reviews'),
    url(r'^login', views.loginUser, name='loginUser'),
    url(r'^logout', views.logoutUser, name='logoutUser'),
    url(r'^register', views.registerUser, name='registerUser'),
    url(r'^forgottenPassword', views.forgottenPassword, name='forgottenPassword'),
    url(r'^commentNews', views.commentNews, name='commentNews'),
    url(r'^', views.index, name='index'),
]