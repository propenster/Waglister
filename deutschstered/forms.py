from django import forms
from .models import Category, Item


class ItemForm(forms.ModelForm):
    
    class Meta:
        model = Item
        fields = (
                'item_title', 
                'item_category', 
                'item_short_description', 
                'item_long_description', 
                'item_price', 
                'item_image',
                'item_author',
                'item_domain_location', 
                'item_is_active')
