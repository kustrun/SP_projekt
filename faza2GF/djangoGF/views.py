from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponse
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

from djangoGF.models import TipiNovic
from djangoGF.models import Novica
from djangoGF.models import Testiranje

import json

def index(request):
    return render(request, 'index.html', {'glavniNovici': Novica.objects.filter(nvcPrikaz=TipiNovic.glavnaNovica_velika.value),
                                          'maleNovice': Novica.objects.filter(nvcPrikaz=TipiNovic.glavnaNovica_mala.value),
                                          'zadnjeTestiranje': Testiranje.objects.filter(tstPrikaz=TipiNovic.zadnjeTestiranje.value),
                                          'novice': Novica.objects.filter(nvcPrikaz=TipiNovic.novice.value),
                                          'oceneNaprav': Novica.objects.filter(nvcPrikaz=TipiNovic.oceneNaprav.value),
                                          'zadnjih5Novic': Novica.objects.filter(nvcPrikaz=TipiNovic.zadnjih5novic.value),
                                          'zadnjih5Testiranj': Testiranje.objects.filter(tstPrikaz=TipiNovic.zadnjih5testiranj.value)})

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

    print(page)

    return render(request, 'news/overview.html', {  'novice': novice,
                                                    'stStrani': range(0, paginator.num_pages),
                                                    "trenutnaStran": int(page),
                                                    'zadnjih5Novic': Novica.objects.filter(nvcPrikaz=TipiNovic.zadnjih5novic.value),
                                                    'zadnjih5Testiranj': Testiranje.objects.filter(tstPrikaz=TipiNovic.zadnjih5testiranj.value)})

def reviews(request):
    testiranja = Testiranje.objects.all()
    paginator = Paginator(testiranja, 4)

    page = request.GET.get('page')
    try:
        testiranja = paginator.page(page)
    except PageNotAnInteger:
        testiranja = paginator.page(1)
    except EmptyPage:
        testiranja = paginator.page(paginator.num_pages)

    print(page)

    return render(request, 'reviews/overview.html', {   'testiranja': testiranja,
                                                        'stStrani': range(0, paginator.num_pages),
                                                        "trenutnaStran": int(page),
                                                        'zadnjih5Novic': Novica.objects.filter(nvcPrikaz=TipiNovic.zadnjih5novic.value),
                                                        'zadnjih5Testiranj': Testiranje.objects.filter(tstPrikaz=TipiNovic.zadnjih5testiranj.value)})

def loginUser(request):
    if request.method == 'POST':

        username = request.POST['username']
        password = request.POST['password']

        response_data = {}

        user = authenticate(username=username, password=password)
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
