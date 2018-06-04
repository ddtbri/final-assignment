# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models

class Cart(models.Model):
    id=models.CharField(primary_key=True,max_length=15)
    uid = models.ForeignKey('User', models.DO_NOTHING, db_column='uid')
    gid = models.ForeignKey('Goods', models.DO_NOTHING, db_column='gid')
    amount = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'cart'
        unique_together = (('uid', 'gid'),)


class Collection(models.Model):
    id=models.CharField(primary_key=True,max_length=15)
    uid = models.ForeignKey('User', models.DO_NOTHING, db_column='uid')
    gid = models.ForeignKey('Goods', models.DO_NOTHING, db_column='gid')
    amount = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'collection'
        unique_together = (('uid', 'gid'),)


class Commit(models.Model):
    uid = models.CharField(max_length=15)
    name = models.CharField(max_length=30, blank=True, null=True)
    email = models.CharField(max_length=20, blank=True, null=True)
    text = models.CharField(max_length=100, blank=True, null=True)
    id=models.CharField(primary_key=True,max_length=15)
    class Meta:
        managed = False
        db_table = 'commit'





class Goods(models.Model):
    gid = models.CharField(primary_key=True, max_length=15)
    name = models.CharField(max_length=45)
    description = models.CharField(max_length=1500, blank=True, null=True)
    type = models.CharField(max_length=15, blank=True, null=True)
    price = models.IntegerField()
    pic_route = models.CharField(max_length=50, blank=True, null=True)
    included_date = models.DateField(blank=True, null=True)
    pic_route2 = models.CharField(max_length=50, blank=True, null=True)
    store = models.IntegerField(blank=True, null=True)
    detail_pic = models.CharField(max_length=50, blank=True, null=True)
    class Meta:
        managed = False
        db_table = 'goods'


class Gorder(models.Model):
    oid = models.CharField(primary_key=True, max_length=15)
    gid = models.ForeignKey(Goods, models.DO_NOTHING, db_column='gid')
    uid = models.ForeignKey('User', models.DO_NOTHING, db_column='uid')
    included_date = models.DateField(blank=True, null=True)
    amount = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'gorder'
class User(models.Model):
    uid = models.CharField(primary_key=True, max_length=15)
    password = models.CharField(max_length=18)
    included_date = models.DateTimeField(blank=True, null=True)
    email_address = models.CharField(max_length=30, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'user'
