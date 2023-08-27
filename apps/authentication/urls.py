# -*- encoding: utf-8 -*-
"""
Copyright (c) 2019 - present AppSeed.us
"""

from django.urls import path
from .views import login_view, register_user, update_user, liste_projets, detail_projet, liste_soumissions
from django.contrib.auth.views import LogoutView

urlpatterns = [
    path('login/', login_view, name="login"),
    path('register/', register_user, name="register"),
    path("logout/", LogoutView.as_view(next_page='login'), name="logout"),
    path("user/<int:id>/", update_user, name="update_user"),
        
    path('projets/', liste_projets, name='liste_projets'),
    path('projets/<int:projet_id>/', detail_projet, name='detail_projet'),
    path('soumissions/', liste_soumissions, name='liste_soumissions'),


]
