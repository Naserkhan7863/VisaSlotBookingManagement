from django.shortcuts import get_object_or_404, redirect, render
from studentapp.models import StudentRegisterModel,UserBookSlotModel
from supervisorapp.models import SupAddSlotModel
from django.contrib import messages
import re
from django.core.validators import RegexValidator
from django.http import JsonResponse
# Create your views here.
def stu_register(request):
    if request.method == "POST":
        name= request.POST.get('fullname')
        email = request.POST.get('email')
        contact = request.POST.get('contact')
        password = request.POST.get('password')
        if  StudentRegisterModel.objects.filter(email=email).exists():
            messages.error(request, "Email Already Exist")
        else:
            User=StudentRegisterModel.objects.create(fullname=name,email=email,contact=contact,password=password)
            User.save()
            messages.success(request, "Account Created Successfully")
    return render(request,'student/stu-register.html')


def stu_login(request):
     if request.method=="POST":
        email=request.POST.get("email")
        password=request.POST.get("password")
        try:
            check=StudentRegisterModel.objects.get(email=email,password=password)
            request.session["user_id"]=check.user_id
            messages.success(request, "Logged in Successfully")
            return redirect("stu_home")
        except:
            messages.error(request, "Invalid Login")
     return render(request,'stu-login.html')

def stu_home(request):
    count=StudentRegisterModel.objects.count()
    l = UserBookSlotModel.objects.count()
    a = SupAddSlotModel.objects.count()
    return render(request,'student/stu-home.html',{'k':count,'j':l,'m':a})    

def stu_book_slot(request,id):
    availability= SupAddSlotModel.objects.filter(Slot_id=id)
    # object=get_object_or_404(SupAddSlotModel,slot_id=id)
    if request.method == "POST":
        name= request.POST.get('name')
        email = request.POST.get('email')
        contact = request.POST.get('contact')
        Registration_id = request.POST.get('Registration_id')
        Passport_id = request.POST.get('Passport_id')
        Ds_id = request.POST.get('Ds_id')

        UserBookSlotModel.objects.create(name=name,email=email,contact=contact,Registration_id=Registration_id,Passport_id=Passport_id,Ds_id=Ds_id)

        obj = get_object_or_404(SupAddSlotModel,Slot_id=id)
        obj.status='Booked'
        obj.booked_by=email

        obj.save()
    return render(request,'student/stu-book-slot.html',{'f':availability})
def stu_check_availability(request):
    availability= SupAddSlotModel.objects.filter(status='available')

    return render(request,'student/stu-check-availability.html',{'f': availability})
def stu_confirmed_slots(request):
    user_id=request.session["user_id"]
    Slotview = UserBookSlotModel.objects.filter(user_id=user_id)
    return render(request,'student/stu-confirmed-slot.html',{'y': Slotview})
