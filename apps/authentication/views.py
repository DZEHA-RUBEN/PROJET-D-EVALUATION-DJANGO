# -*- encoding: utf-8 -*-
"""
Copyright (c) 2019 - present AppSeed.us
"""

# Create your views here.
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login
from django.http import HttpResponse, HttpResponseRedirect
from .forms import LoginForm, SignUpForm
from .models import User

from django.shortcuts import render, redirect
from .models import Projet, Soumission
from .forms import SoumissionForm


def login_view(request):
    form = LoginForm(request.POST or None)

    msg = None

    if request.method == "POST":

        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            user = authenticate(username=username, password=password)
            if user is not None and user.is_admin:
                login(request, user)
                return redirect('/')
            elif user is not None and user.is_enseignant:
                login(request, user)
                return redirect('/')
            elif user is not None and user.is_etudiant:
                login(request, user)
                return redirect('/')
            else:
                msg= 'invalid credentials'
        else:
            msg = 'error validating form'
    return render(request, 'accounts/login.html', {'form': form, 'msg': msg})


def register_user(request):
    msg = None
    success = False

    if request.method == "POST":
        form = SignUpForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get("username")
            raw_password = form.cleaned_data.get("password1")
            last_name = form.cleaned_data.get("last_name")
            first_name = form.cleaned_data.get("first_name")
            numero = form.cleaned_data.get("numero")
            user = authenticate(username=username, password=raw_password, last_name=last_name, first_name=first_name, numero=numero)

            # Enregistrer la date de naissance de l'utilisateur à partir du formulaire
            date_of_birth = form.cleaned_data.get("date_of_birth")
            user.date_of_birth = date_of_birth
            user.save()

            msg = 'User created successfully.'
            success = True

            # return redirect("/login/")

        else:
            msg = 'Form is not valid'
    else:
        form = SignUpForm()

    return render(request, "accounts/register.html", {"form": form, "msg": msg, "success": success})

def update_user(request, id):
    msg = None
    success = False
    user = User.objects.get(id=id)
    if request.method == "POST":
        form = SignUpForm(request.POST, instance=user)
        if form.is_valid():
            form.save()
            password = form.cleaned_data.get("password1")
            user = authenticate(password=password)
            user.save()
            msg = 'User updated successfully.'
            success = True
            return redirect("/accounts/login/")
        else:
            msg = 'Form is not valid'
    else:
        form = SignUpForm(instance=user)

    return render(request, "home/user.html", {"form": form, "msg": msg, "success": success})




def liste_projets(request):
    projets = Projet.objects.all()
    return render(request, 'home/liste_projets.html', {'projets': projets})


def detail_projet(request, projet_id):
    projet = Projet.objects.get(id=projet_id)
    form = SoumissionForm(request.POST or None, request.FILES or None)
    
    if form.is_valid():
        soumission = form.save(commit=False)
        soumission.etudiant = request.user
        soumission.projet = projet
        soumission.save()
        return redirect('liste_projets')
    
    return render(request, 'home/detail_projet.html', {'projet': projet, 'form': form})


def liste_soumissions(request):
    soumissions = Soumission.objects.filter(etudiant=request.user)
    return render(request, 'home/notifications.html', {'soumissions': soumissions})
