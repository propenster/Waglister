from django.urls import path
from . import views as v

urlpatterns = [
    path('', v.HomePageView.as_view(), name='home-page'),
    path('create-item', v.create_item_view, name='create-item'),
    path('howitworks', v.how_it_work_view, name='how-it-works'),
]