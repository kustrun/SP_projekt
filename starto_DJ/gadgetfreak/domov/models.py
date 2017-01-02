from django.db import models

# Create your models here.

PRIKAZ = (
    (0, 'Glavna novica - velika'),
    (1, 'Glavna novica - mala'),
    (2, 'Zadnje testiranje'),
    (3, 'Novice in testiranja')
    (4, 'Ocene naprav')
    (5, 'Zadnjih 5 novic')
    (6, 'Zadnjih 5 testiranj')
)

class Uporabnik(models.Model):
    uprIme = models.CharField(max_length=30)
    uprPriimek = models.CharField(max_length=30)
    uprUpIme = models.CharField(max_length=30)
    uprGeslo = models.CharField(max_length=256)

class Vloga(models.Model):
    vlgIme = models.CharField(max_length=30)
    vlgAvtor = models.ForeignKey('Uporabnik', on_delete=models.CASCADE)

class Novica(models.Model):
    nvcNaslov = models.CharField(max_length=256)
    nvcDatum = models.DateTimeField()
    nvcSlika = models.CharField(max_length=256)
    nvcOpis = models.CharField(max_length=256)
    nvcBesedilo = models.TextField()

    nvcAvtor = models.ForeignKey('Uporabnik', on_delete=models.CASCADE)
    nvcStOgledov = models.IntegerField

    nvcPrikaz = models.CharField(max_length=1, choices=PRIKAZ)


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

    tstPrikaz = models.CharField(max_length=1, choices=PRIKAZ)


class Komentar(models.Model):
    kmtBesedilo = models.CharField(max_length=256)
    kmtNovica = models.ForeignKey('Novica', on_delete=models.CASCADE)
    kmtTestiranje = models.ForeignKey('Testiranje', on_delete=models.CASCADE)
    kmtAvtor = models.ForeignKey('Uporabnik', on_delete=models.CASCADE)
