from re import search
from django.shortcuts import render,redirect
from adminapp.models import VenueModel
from adminapp.models import SupervisorModel,VenueModel
from studentapp.models import StudentRegisterModel,UserBookSlotModel
from supervisorapp.models import SupAddSlotModel
from django.db.models import Q
from django.contrib import messages
# Create your views here.

def adminlogin(request):
      if request.method == "POST":
        name= request.POST.get('email')
        password= request.POST.get('password')
        if name =='admin' and password =='admin':
            messages.success(request, "Logged in Successfully")

            return redirect('admin_home')
        elif name =='fazal' and password =='fazal':
            messages.success(request, "Logged in Successfully")

            return redirect('admin_home')
        else:
             messages.error(request, "Invalid Login")
      return render(request,'admin-login.html')

def admin_home(request):
    count=StudentRegisterModel.objects.count()
    l = UserBookSlotModel.objects.count()
    a = SupAddSlotModel.objects.count()
    b = VenueModel.objects.count()

    return render(request,'admin/admin-home.html',{'k':count,'j':l,'m':a,'t':b})    
def add_supervisor(request):
    if request.method == "POST":
        name= request.POST.get('name')
        email= request.POST.get('email')
        contact = request.POST.get('contact')
        password = request.POST.get('password')
        SupervisorModel.objects.create(name=name,email=email,contact=contact,password=password)
    return render(request,'admin/admin-add-supervisor.html')


def view_supervisor(request):
    slotview = SupervisorModel.objects.all()
    return render(request,'admin/admin-view-supervisor.html',{'k':slotview}) 

def delete_supervisor(request,id):
    w = SupervisorModel.objects.filter(supervisor_id=id)
    w.delete()
    return redirect('view_supervisor') 

def add_venue(request):
    if request.method == "POST":
        venuename= request.POST.get('venuename')
        VenueModel.objects.create(venuename=venuename)
    return render(request,'admin/admin-add-venue.html')

def add_view_slots(request):
    slotview = SupAddSlotModel.objects.all()
    if request.method=="POST":
        search=request.POST.get("search")
        slotview = SupAddSlotModel.objects.filter(Q(Slot_id__icontains=search) | Q(title__icontains=search) | Q(date__icontains=search))

    return render(request,'admin/admin-view-slots.html',{'k':slotview})  