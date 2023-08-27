# -*- encoding: utf-8 -*-
"""
Copyright (c) 2019 - present AppSeed.us
"""

from django.db import models

from django.contrib.auth.models import AbstractUser
# Create your models here.

class User(AbstractUser):
    
    #nom = models.CharField(max_length=100)
    #prenom = models.CharField(max_length=100)
    numero = models.CharField(max_length=100)
    date_of_birth = models.DateField(null=True, blank=True)
    is_enseignant = models.BooleanField('Is enseignant', default=False)
    is_admin = models.BooleanField('Is admin',default=False)
    is_etudiant = models.BooleanField('Is etudiant', default=False)

    def __str__(self):
        return self.username

class Projet(models.Model):
    titre = models.CharField(max_length=200)
    matiere = models.CharField(max_length=100)
    fichier_projet = models.FileField(upload_to='projets/')
    statut_choices = (
        ('en_cours', 'En cours'),
        ('soumis', 'Soumis'),
        ('corrigé', 'Corrigé'),
        ('traité', 'Traité'),
        ('archivé', 'Archivé'),
    )
    statut = models.CharField(max_length=10, choices=statut_choices, default='en_cours')

class Soumission(models.Model):
    etudiant = models.ForeignKey(User, on_delete=models.CASCADE)
    projet = models.ForeignKey(Projet, on_delete=models.CASCADE)
    fichier_soumission = models.FileField(upload_to='soumissions/')
    note = models.DecimalField(max_digits=4, decimal_places=2, null=True, blank=True)
    commentaire = models.TextField(null=True, blank=True)
    