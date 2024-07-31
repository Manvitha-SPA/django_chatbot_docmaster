from django.db import models

class Details(models.Model):
    user_id = models.IntegerField()
    sl_no = models.IntegerField()
    parent_id = models.IntegerField()
    node_id = models.IntegerField(primary_key=True)
    content = models.TextField()
    sl_order_no = models.IntegerField()
    question_type = models.IntegerField()

    def __str__(self):
        return f"Details {self.node_id}"  # Customize the string representation if needed

    class Meta:
        verbose_name = "Detail"  # Singular name for the model
        verbose_name_plural = "Details"  # Plural name for the model in the admin interface

class User(models.Model):
    user_id = models.IntegerField(primary_key=True)
    user_name = models.CharField(max_length=100)

    def __str__(self):
        return self.user_name  # Customize the string representation if needed

    class Meta:
        verbose_name = "User"
        verbose_name_plural = "Users"
