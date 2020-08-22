from django.shortcuts import render, redirect
from .forms import CustomUserCreationForm

def register(request):
    if (request.method =='POST'):
        f = CustomUserCreationForm(request.POST)
        if f.is_valid():
            f.save()
            return redirect('home-page')
    else:
        f = CustomUserCreationForm()
        
    return render(request, 'account/register.html', {'form':f})
        
        
        
        
        
        
        
        