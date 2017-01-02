from django.db import models
from djangoGF.ChoiceEnum import ChoiceEnum
from django.contrib.auth.models import User

# Create your models here.

class TipiNovic(ChoiceEnum):
    glavnaNovica_velika = 0
    glavnaNovica_mala = 1
    zadnjeTestiranje = 2
    novice = 3
    oceneNaprav = 4
    zadnjih5novic = 5
    zadnjih5testiranj = 6

class Uporabnik(models.Model):
    upr = models.OneToOneField(User, on_delete=models.CASCADE)
    uprOpis = models.CharField(max_length=256)

class Novica(models.Model):
    nvcNaslov = models.CharField(max_length=256)
    nvcDatum = models.DateTimeField()
    nvcSlika = models.CharField(max_length=256)
    nvcOpis = models.CharField(max_length=256)
    nvcBesedilo = models.TextField()

    nvcAvtor = models.ForeignKey('Uporabnik', on_delete=models.CASCADE)
    nvcStOgledov = models.IntegerField

    nvcPrikaz = models.CharField(max_length=1, choices=TipiNovic.choices())


class Testiranje(models.Model):
    tstNaslov = models.CharField(max_length=80)
    tstDatum = models.DateTimeField()
    tstSlika = models.CharField(max_length=256)
    tstOpis = models.CharField(max_length=256)
    tstBesedilo = models.TextField()

    tstAvtor = models.ForeignKey('Uporabnik', on_delete=models.CASCADE)
    tstStOgledov = models.IntegerField

    tstZaslon = models.IntegerField()
    tstFotoaparat = models.DecimalField(max_digits=4, decimal_places=2)
    tstBaterija = models.IntegerField()
    tstProstor = models.CharField(max_length=30)
    tstRam = models.IntegerField()
    tstOs = models.CharField(max_length=30)
    tstIzdano = models.CharField(max_length=30)

    tstPrikaz = models.CharField(max_length=1, choices=TipiNovic.choices())


class Komentar(models.Model):
    kmtBesedilo = models.CharField(max_length=256)
    kmtNovica = models.ForeignKey('Novica', on_delete=models.CASCADE)
    kmtTestiranje = models.ForeignKey('Testiranje', on_delete=models.CASCADE)
    kmtAvtor = models.ForeignKey('Uporabnik', on_delete=models.CASCADE)