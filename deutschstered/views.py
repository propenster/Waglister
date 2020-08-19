from django.shortcuts import render, redirect
from django.views.generic import ListView
from .models import Category, Item
from .forms import ItemForm

class HomePageView(ListView):
    model = Item
    template_name = 'deutschstered/index.html'
    context_object_name = 'item_list'


def create_item_view(request):
    if request.method == "POST":
        form = ItemForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('home-page')
    else:
        form = ItemForm()
    return render(request, 'deutschstered/create_item.html', {'form':form})



def how_it_work_view(request):
    return render(request, 'deutschstered/howitworks.html', {})
