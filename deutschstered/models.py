from django.db import models
# from django.utils import timezone
from account.models import CustomUser


class Category(models.Model):
    '''
        Let us model the Category - which can be name of School
        in fact, example categories of our model app includes 
        Books
        School
        Lodges
        Tutoring
        Giveaways - FREEbies
        Location
        Campus
        Jobs
    '''
    category_name = models.CharField(
        max_length=150, help_text='Name of category')
    category_pub_date = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ['-category_pub_date']
        verbose_name_plural = 'Categories'

    def __str__(self):
        return self.category_name


class Item(models.Model):
    '''
        This is the List Model... it represents our Product so to speak

        It has the following fields all prefixed with 'item'
        item_title => The name of the item which can be a paragraph like 'Hey everyone I have old Philosophy books
                        for sale, contact me if you're interested
        item_category => The Category we would like the item POST to show in - Books, Tutoring, Lodges, Houses, Jobs
        item_short_description => This is the short description of the item or GIG which appears on the home (listview) screen
        item_long_description => THis is the more exhaustive long description when the item{id} is in focus - Shown in the 
                                item's DetailView
        item_price => This is the price of the item in Euros (&euro;)
        item_image => This is a cover image of the item - in the HomeView... At the detail view, user will be able to 
                        upload at most 5 supporting images of the particular item for listing...
        item_author => This is the Authenticated User(django.contrib.auth.models) that is posting the List(Item)
        item_domain_location => This is the reference location of the item, Is the item based in Wageningen or Deft, or 
                        somewhere else - so you want people in that location to see the Item(Ad)
        item_is_active => This basically tells if the User has published (made the Item LIVE) or not.. as Users can create 
                        Drafts of their ITEM posts to be published later....
        item_pub_date => This is obviously the Date the POST (ITEM) was published...
        item_updated_date => This is the Date the Item was Updated....                        
    '''
    item_title = models.CharField(max_length=150)
    item_category = models.ForeignKey(Category, on_delete=models.CASCADE)
    item_short_description = models.CharField(max_length=255, blank=True)
    item_long_description = models.TextField()
    item_price = models.DecimalField(max_digits=6, decimal_places=2)
    item_image = models.FileField(upload_to='gallery/')
    item_author = models.ForeignKey(CustomUser, on_delete=models.CASCADE)
    item_domain_location = models.CharField(max_length=160, blank=True)
    item_is_active = models.BooleanField(default=False)
    # I want to change fields...
    # item_draft_date = models.DateTimeField(default=timezone.now())
    item_pub_date = models.DateTimeField(auto_now_add=True)
    item_updated_date = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ['-item_pub_date']

    # def publish_item(self):
    #     self.item_is_active = True
    #     self.item_pub_date = timezone.now
    #     self.save()

    def __str__(self):
        return '{}'.format(self.item_title)
