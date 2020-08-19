from django.contrib import admin
from .models import Category, Item

admin.site.register(Category)

@admin.register(Item)
class ItemAdmin(admin.ModelAdmin):
    list_display = (
    'item_title', 
    'item_category', 
    'item_short_description', 
    'item_long_description', 
    'item_price', 
    'item_image',
    'item_author',
    'item_domain_location', 
    'item_is_active',
    'item_pub_date',
    'item_updated_date')


    list_filter = ('item_is_active', 'item_pub_date')

    search_fields = ('item_title', 'item_category', 'item_short_description', 'item_price', 'item_domain_location',
     'item_is_active')

    actions = ['publish_item']


    def publish_item(self, request, queryset):
        queryset.update(item_is_active=True)
        
        


