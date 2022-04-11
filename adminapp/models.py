from django.db import models

# Create your models here.
class SupervisorModel(models.Model):


     supervisor_id=models.AutoField(primary_key=True)
     name=models.CharField(max_length=100,help_text="Enter FullName")
     contact=models.BigIntegerField(help_text="Enter Mobile Number")
     email=models.EmailField(max_length=100,help_text="Enter Email id")
     password=models.CharField(max_length=100,help_text="Enter Password")


     def __str__(self):
         return self.name
         
     
     class Meta:
         db_table="supervisor_details"
    


class VenueModel(models.Model):


     venue_id=models.AutoField(primary_key=True)
     venuename=models.CharField(max_length=100,help_text="Enter FullName")
    


     def __str__(self):
         return self.venuename
         
     
     class Meta:
         db_table="Venue_details"