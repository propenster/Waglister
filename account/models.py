from django.db import models
from django.contrib.auth.models import AbstractUser
from django.utils.translation import ugettext_lazy as _

from .managers import CustomUserManager


class CustomUser(AbstractUser):
    firstname = models.CharField(_('First name'), max_length=140, default='John')
    lastname = models.CharField(_('Last name'), max_length=140, default='John')

    username = models.CharField(_('Username'), max_length=100, default='JohnDoe101')
    email = models.EmailField(_('email address'), unique=True)
    address_1 = models.CharField(_('Address line 1'), max_length=140, default='123 Foxtrot Street , TX, US')
    address_2 = models.CharField(_('Address line 2'), max_length=140, default='233 Dromeestard Wageningen, the Netherlands')
    city = models.CharField(_('City'), max_length=100, default='Manhattan')
    state = models.CharField(_('State'), max_length=100, default='New York')
    zip_code = models.CharField(_('Zip code'), max_length=20, default='P1023')
    

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []

    objects = CustomUserManager()

    def __str__(self):
        return self.email
