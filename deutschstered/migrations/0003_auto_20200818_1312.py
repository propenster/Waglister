# Generated by Django 3.1 on 2020-08-18 12:12

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('deutschstered', '0002_auto_20200818_1300'),
    ]

    operations = [
        migrations.AlterField(
            model_name='item',
            name='item_draft_date',
            field=models.DateTimeField(default=datetime.datetime(2020, 8, 18, 12, 12, 27, 75098, tzinfo=utc)),
        ),
    ]
