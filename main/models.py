from django.db import models

# Create your models here.
class UserContactDetailModel(models.Model):


     user_id=models.AutoField(primary_key=True)
     fullname=models.CharField(max_length=100,help_text="Enter FullName")
     email=models.EmailField(max_length=100,help_text="Enter Email id")
     contact=models.BigIntegerField(help_text="Enter Mobile Number")
     subject=models.CharField(max_length=100,help_text="Enter Password",null=True)


     def __str__(self):
         return self.email
         
     
     class Meta:
         db_table="user_contact_details"
    
