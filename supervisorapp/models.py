from django.db import models

# Create your models here.
class SupAddSlotModel(models.Model):
     Slot_id=models.AutoField(primary_key=True)
     sup_id=models.SmallIntegerField(null=True,blank=True)
     title=models.CharField(max_length=100,help_text="Enter FullName")
     date=models.DateField(help_text="Enter Mobile Number")
     time=models.TimeField(max_length=100,help_text="Enter Email id")
     type=models.CharField(max_length=100,help_text="Enter Password")
     duration=models.CharField(max_length=100,help_text="Enter Password")
     venue=models.CharField(max_length=100,help_text="Enter Password")
     documents=models.CharField(max_length=100,help_text="Enter Password")
     status=models.CharField(max_length=50,default='available',null=True,blank=True)
     booked_by=models.EmailField(max_length=50,null=True,blank=True)


     def __str__(self):
         return self.title
         
     
     class Meta:
         db_table="slot_details"
    
