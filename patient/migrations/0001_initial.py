# Generated by Django 2.0.3 on 2018-03-24 13:44

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import versatileimagefield.fields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Occupation',
            fields=[
                ('is_active', models.BooleanField(default=True, editable=False)),
                ('created_on', models.DateTimeField(auto_now_add=True)),
                ('modified_on', models.DateTimeField(auto_now=True)),
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(blank=True, max_length=50, null=True, unique=True)),
                ('created_by', models.ForeignKey(blank=True, default=None, editable=False, null=True, on_delete=django.db.models.deletion.SET_DEFAULT, related_name='+', to=settings.AUTH_USER_MODEL)),
                ('modified_by', models.ForeignKey(blank=True, default=None, editable=False, null=True, on_delete=django.db.models.deletion.SET_DEFAULT, related_name='+', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'ordering': ['name'],
            },
        ),
        migrations.CreateModel(
            name='Patient',
            fields=[
                ('is_active', models.BooleanField(default=True, editable=False)),
                ('created_on', models.DateTimeField(auto_now_add=True)),
                ('modified_on', models.DateTimeField(auto_now=True)),
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('last_name', models.CharField(db_index=True, max_length=25)),
                ('first_name', models.CharField(db_index=True, max_length=25)),
                ('middle_initial', models.CharField(blank=True, max_length=1, null=True)),
                ('contact_num', models.CharField(blank=True, max_length=15, null=True)),
                ('address', models.CharField(blank=True, max_length=50, null=True)),
                ('date_of_birth', models.DateField(default=datetime.date.today, verbose_name='Date of birth')),
                ('pat_pic', versatileimagefield.fields.VersatileImageField(upload_to='images', verbose_name='Pat_Pic')),
                ('email', models.EmailField(blank=True, max_length=254, null=True)),
                ('gender', models.CharField(choices=[('F', 'Female'), ('M', 'Male')], default='F', help_text='Select Gender', max_length=1)),
                ('created_by', models.ForeignKey(blank=True, default=None, editable=False, null=True, on_delete=django.db.models.deletion.SET_DEFAULT, related_name='+', to=settings.AUTH_USER_MODEL)),
                ('modified_by', models.ForeignKey(blank=True, default=None, editable=False, null=True, on_delete=django.db.models.deletion.SET_DEFAULT, related_name='+', to=settings.AUTH_USER_MODEL)),
                ('occupation', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.SET_DEFAULT, to='patient.Occupation')),
            ],
            options={
                'ordering': ['last_name', 'first_name'],
            },
        ),
        migrations.CreateModel(
            name='Province',
            fields=[
                ('is_active', models.BooleanField(default=True, editable=False)),
                ('created_on', models.DateTimeField(auto_now_add=True)),
                ('modified_on', models.DateTimeField(auto_now=True)),
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=30, unique=True)),
                ('created_by', models.ForeignKey(blank=True, default=None, editable=False, null=True, on_delete=django.db.models.deletion.SET_DEFAULT, related_name='+', to=settings.AUTH_USER_MODEL)),
                ('modified_by', models.ForeignKey(blank=True, default=None, editable=False, null=True, on_delete=django.db.models.deletion.SET_DEFAULT, related_name='+', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'ordering': ['name'],
            },
        ),
        migrations.CreateModel(
            name='Town',
            fields=[
                ('is_active', models.BooleanField(default=True, editable=False)),
                ('created_on', models.DateTimeField(auto_now_add=True)),
                ('modified_on', models.DateTimeField(auto_now=True)),
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=25, unique=True)),
                ('zip_code', models.CharField(blank=True, max_length=10, null=True)),
                ('created_by', models.ForeignKey(blank=True, default=None, editable=False, null=True, on_delete=django.db.models.deletion.SET_DEFAULT, related_name='+', to=settings.AUTH_USER_MODEL)),
                ('modified_by', models.ForeignKey(blank=True, default=None, editable=False, null=True, on_delete=django.db.models.deletion.SET_DEFAULT, related_name='+', to=settings.AUTH_USER_MODEL)),
                ('prov', models.ForeignKey(default=None, on_delete=django.db.models.deletion.SET_DEFAULT, to='patient.Province')),
            ],
            options={
                'ordering': ['name'],
            },
        ),
        migrations.AddField(
            model_name='patient',
            name='town',
            field=models.ForeignKey(default=None, on_delete=django.db.models.deletion.SET_DEFAULT, to='patient.Town'),
        ),
    ]
