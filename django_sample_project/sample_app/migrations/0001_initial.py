# Generated by Django 4.2.6 on 2024-07-02 09:19

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Details',
            fields=[
                ('user_id', models.IntegerField()),
                ('sl_no', models.IntegerField()),
                ('parent_id', models.IntegerField()),
                ('node_id', models.IntegerField(primary_key=True, serialize=False)),
                ('content', models.TextField()),
                ('sl_order_no', models.IntegerField()),
                ('question_type', models.IntegerField()),
            ],
            options={
                'verbose_name': 'Detail',
                'verbose_name_plural': 'Details',
            },
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('user_id', models.IntegerField(primary_key=True, serialize=False)),
                ('user_name', models.CharField(max_length=100)),
            ],
            options={
                'verbose_name': 'User',
                'verbose_name_plural': 'Users',
            },
        ),
    ]
