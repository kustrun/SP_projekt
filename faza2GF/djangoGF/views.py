from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponse
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

from djangoGF.models import TipiNovic
from djangoGF.models import Novica, Testiranje, Komentar, Uporabnik

from .forms import *

import json


def index(request):
    return render(request, 'index.html', {'glavniNovici': Novica.objects.filter(nvcPrikaz=TipiNovic.glavnaNovica_velika.value),
                                          'maleNovice': Novica.objects.filter(nvcPrikaz=TipiNovic.glavnaNovica_mala.value),
                                          'zadnjeTestiranje': Testiranje.objects.filter(tstPrikaz=TipiNovic.zadnjeTestiranje.value),
                                          'novice': Novica.objects.filter(nvcPrikaz=TipiNovic.novice.value),
                                          'oceneNaprav': Novica.objects.filter(nvcPrikaz=TipiNovic.oceneNaprav.value),
                                          'zadnjih5Novic': Novica.objects.filter(nvcPrikaz=TipiNovic.zadnjih5novic.value),
                                          'zadnjih5Testiranj': Testiranje.objects.filter(tstPrikaz=TipiNovic.zadnjih5testiranj.value),
                                          'loginForm': LoginForm(),
                                          'registerForm': RegisterForm(),
                                          'forgottenForm': ForgottenPasswordForm()})

def news(request):
    novice = Novica.objects.all()
    paginator = Paginator(novice, 4)

    page = request.GET.get('page')
    try:
        novice = paginator.page(page)
    except PageNotAnInteger:
        novice = paginator.page(1)
    except EmptyPage:
        novice = paginator.page(paginator.num_pages)

    return render(request, 'news/overview.html', {  'novice': novice,
                                                    'stStrani': range(0, paginator.num_pages),
                                                    "trenutnaStran": int(page),
                                                    'zadnjih5Novic': Novica.objects.filter(nvcPrikaz=TipiNovic.zadnjih5novic.value),
                                                    'zadnjih5Testiranj': Testiranje.objects.filter(tstPrikaz=TipiNovic.zadnjih5testiranj.value),
                                                    'loginForm': LoginForm(),
                                                    'registerForm': RegisterForm(),
                                                    'forgottenForm': ForgottenPasswordForm(),
                                                    'commentForm': CommentNewsForm()
                                                    })

def newsDetail(request):
    paramId = int(request.GET.get('id'))
    novica = Novica.objects.filter(id=paramId)

    request.session['newsDetail'] = {'id': novica[0].id}

    komentarji = Komentar.objects.filter(kmtNovica_id=paramId)

    return render(request, 'news/news.html', {  'novica': novica[0],
                                                'komentarji': komentarji,
                                                'zadnjih5Novic': Novica.objects.filter(nvcPrikaz=TipiNovic.zadnjih5novic.value),
                                                'zadnjih5Testiranj': Testiranje.objects.filter(tstPrikaz=TipiNovic.zadnjih5testiranj.value),
                                                'loginForm': LoginForm(),
                                                'registerForm': RegisterForm(),
                                                'forgottenForm': ForgottenPasswordForm(),
                                                'commentForm': CommentNewsForm()
                                                })

def commentNews(request):
    novicaId = request.session.get('newsDetail', None)
    userId = int(request.user.id)

    novica = Novica.objects.filter(id=int(novicaId['id']))
    uporabnik = Uporabnik.objects.filter(upr_id=userId)

    komentarji = Komentar.objects.filter(kmtNovica_id=novica[0].id)

    if request.method == 'POST':
        form = CommentNewsForm(request.POST)

        if form.is_valid():
            komentar = form.cleaned_data['comment']

            cmt = Komentar(kmtAvtor_id=uporabnik[0].id, kmtNovica_id=novica[0].id, kmtBesedilo=komentar)
            cmt.save()

    return render(request, 'news/news.html', {  'novica': novica[0],
                                                'komentarji': komentarji,
                                                'zadnjih5Novic': Novica.objects.filter(nvcPrikaz=TipiNovic.zadnjih5novic.value),
                                                'zadnjih5Testiranj': Testiranje.objects.filter(tstPrikaz=TipiNovic.zadnjih5testiranj.value),
                                                'loginForm': LoginForm(),
                                                'registerForm': RegisterForm(),
                                                'forgottenForm': ForgottenPasswordForm(),
                                                'commentForm': CommentNewsForm()
                                                })


def reviews(request):
    testiranja = Testiranje.objects.raw("SELECT * FROM djangogf_testiranje ORDER BY tstDatum DESC")
    paginator = Paginator(list(testiranja), 4)

    page = request.GET.get('page')
    try:
        testiranja = paginator.page(page)
    except PageNotAnInteger:
        testiranja = paginator.page(1)
    except EmptyPage:
        testiranja = paginator.page(paginator.num_pages)

    return render(request, 'reviews/overview.html', {   'testiranja': testiranja,
                                                        'stStrani': range(0, paginator.num_pages),
                                                        "trenutnaStran": int(page),
                                                        'zadnjih5Novic': Novica.objects.filter(nvcPrikaz=TipiNovic.zadnjih5novic.value),
                                                        'zadnjih5Testiranj': Testiranje.objects.filter(tstPrikaz=TipiNovic.zadnjih5testiranj.value),
                                                        'loginForm': LoginForm(),
                                                        'registerForm': RegisterForm(),
                                                        'forgottenForm': ForgottenPasswordForm()
                                                        })

def reviewsDetail(request):
    paramId = int(request.GET.get('id'))
    testiranje = Testiranje.objects.filter(id=paramId)
    komentarji = Komentar.objects.filter(kmtTestiranje_id=paramId)

    return render(request, 'reviews/review.html', { 'testiranje': testiranje[0],
                                                    'komentarji': komentarji,
                                                    'zadnjih5Novic': Novica.objects.filter(nvcPrikaz=TipiNovic.zadnjih5novic.value),
                                                    'zadnjih5Testiranj': Testiranje.objects.filter(tstPrikaz=TipiNovic.zadnjih5testiranj.value),
                                                    'loginForm': LoginForm(),
                                                    'registerForm': RegisterForm(),
                                                    'forgottenForm': ForgottenPasswordForm(),
                                                    })



def loginUser(request):
    if request.method == 'POST':
        form = LoginForm(request.POST)

        if form.is_valid():
            response_data = {}
            user = authenticate(username=form.cleaned_data['username'], password=form.cleaned_data['password'])

        if user is not None:
            login(request, user)

            response_data['result'] = 'success'
        else:
            response_data['result'] = 'fail'

        return HttpResponse(json.dumps(response_data), content_type="application/json")

def logoutUser(request):
    logout(request)

    response_data = {}
    response_data['result'] = 'success'
    return HttpResponse(json.dumps(response_data), content_type="application/json")

def registerUser(request):
    if request.method == 'POST':
        form = RegisterForm(request.POST)

        response_data = {}
        if form.is_valid():
            user = User.objects.create_user(
                username=form.cleaned_data['username'],
                password=form.cleaned_data['password'],
                email=form.cleaned_data['email']
            )

            upr = Uporabnik(upr=user, uprOpis="")
            upr.save()

            login(request, user)
            response_data['result'] = 'success'
        else:
            err = json.loads(form.errors.as_json())
            response_data['result'] = 'fail'
            response_data['username'] = 'username' in err

        return HttpResponse(json.dumps(response_data), content_type="application/json")

def forgottenPassword(request):
    context = {'forgottenPasswordForm': ForgottenPasswordForm()}

    if request.method == 'POST':
        form = ForgottenPasswordForm(request.POST)

        response_data = {}
        if form.is_valid():
            emailUser = form.cleaned_data['email']
            user = User.objects.get(email=emailUser)

            if user is not None:



                password = User.objects.make_random_password()
                user.set_password(password)
                user.save()

                print("{}: {} ".format(user, password))

                response_data['result'] = 'success'
            else:
                response_data['result'] = 'fail'
        else:
            err = json.loads(form.errors.as_json())
            response_data['result'] = 'fail'
            response_data['username'] = 'username' in err

        return HttpResponse(json.dumps(response_data), content_type="application/json")
