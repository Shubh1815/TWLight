# -*- coding: utf-8 -*-
# Generated by Django 1.11.20 on 2019-04-02 20:55


from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [("resources", "0063_auto_20190220_1639")]

    operations = [
        migrations.AddField(
            model_name="partner",
            name="access_code_instructions",
            field=models.TextField(
                blank=True,
                help_text="Optional instructions for editors to use access codes for this partner. Sent via email upon access code assignment.",
                null=True,
            ),
        )
    ]
