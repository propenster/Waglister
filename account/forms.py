from django.contrib.auth.forms import UserCreationForm, UserChangeForm

from .models import CustomUser


class CustomUserCreationForm(UserCreationForm):

    class Meta(UserCreationForm):
        model = CustomUser
        fields = ('firstname', 'lastname', 'username','email', 'address_1', 'address_2', 'country', 'city', 'state', 'zip_code')


class CustomUserChangeForm(UserChangeForm):

    class Meta:
        model = CustomUser
        fields = ('firstname', 'lastname', 'username','email', 'address_1', 'address_2', 'country', 'city', 'state', 'zip_code')
