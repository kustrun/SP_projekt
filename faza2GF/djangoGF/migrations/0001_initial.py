# -*- coding: utf-8 -*-
# Generated by Django 1.10.4 on 2017-01-02 14:36
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Komentar',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('kmtBesedilo', models.CharField(max_length=256)),
                ('kmtAvtor', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Novica',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nvcNaslov', models.CharField(max_length=256)),
                ('nvcDatum', models.DateTimeField()),
                ('nvcSlika', models.CharField(max_length=256)),
                ('nvcOpis', models.CharField(max_length=256)),
                ('nvcBesedilo', models.TextField()),
                ('nvcPrikaz', models.CharField(choices=[('1', 'glavnaNovica_mala'), ('0', 'glavnaNovica_velika'), ('3', 'novice'), ('4', 'oceneNaprav'), ('2', 'zadnjeTestiranje'), ('5', 'zadnjih5novic'), ('6', 'zadnjih5testiranj')], max_length=1)),
                ('nvcAvtor', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Testiranje',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tstNaslov', models.CharField(max_length=80)),
                ('tstDatum', models.DateTimeField()),
                ('tstSlika', models.CharField(max_length=256)),
                ('tstOpis', models.CharField(max_length=256)),
                ('tstBesedilo', models.TextField()),
                ('tstZaslon', models.IntegerField()),
                ('tstFotoaparat', models.DecimalField(decimal_places=2, max_digits=4)),
                ('tstBaterija', models.IntegerField()),
                ('tstProstor', models.CharField(max_length=30)),
                ('tstRam', models.IntegerField()),
                ('tstOs', models.CharField(max_length=30)),
                ('tstIzdano', models.CharField(max_length=30)),
                ('tstPrikaz', models.CharField(choices=[('1', 'glavnaNovica_mala'), ('0', 'glavnaNovica_velika'), ('3', 'novice'), ('4', 'oceneNaprav'), ('2', 'zadnjeTestiranje'), ('5', 'zadnjih5novic'), ('6', 'zadnjih5testiranj')], max_length=1)),
                ('tstAvtor', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AddField(
            model_name='komentar',
            name='kmtNovica',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='djangoGF.Novica'),
        ),
        migrations.AddField(
            model_name='komentar',
            name='kmtTestiranje',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='djangoGF.Testiranje'),
        ),
    ]
