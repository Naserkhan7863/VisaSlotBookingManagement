from django.db import models

# Create your models here.
class StudentRegisterModel(models.Model):


     user_id=models.AutoField(primary_key=True)
     fullname=models.CharField(max_length=100,help_text="Enter FullName")
     email=models.EmailField(max_length=100,help_text="Enter Email id")
     contact=models.BigIntegerField(help_text="Enter Mobile Number" ,null=True)
     password=models.CharField(max_length=100,help_text="Enter Password")


     def __str__(self):
         return self.email
         
     
     class Meta:
         db_table="user_details"
    


class UserBookSlotModel(models.Model):


     user_id=models.AutoField(primary_key=True)
     name=models.CharField(max_length=100,help_text="Enter FullName")
     email=models.EmailField(max_length=100,help_text="Enter Email id")
     contact=models.BigIntegerField(help_text="Enter Mobile Number")
     Registration_id=models.IntegerField(max_length=100,help_text="Enter Registrationid")
     Passport_id=models.IntegerField(max_length=100,help_text="Enter Passportid")
     Ds_id=models.IntegerField(max_length=100,help_text="Enter Dsid")


     def __str__(self):
         return self.name
         
     
     class Meta:
         db_table="user_booking_details"
    