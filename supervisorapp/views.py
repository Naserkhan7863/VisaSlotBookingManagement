from django.shortcuts import redirect, render

from adminapp.models import SupervisorModel, VenueModel
from studentapp.models import StudentRegisterModel,UserBookSlotModel
from django.contrib import messages
from supervisorapp.models import SupAddSlotModel
# Create your views here.
def sup_login(request):
  if request.method=="POST":
        email=request.POST.get("email")
        password=request.POST.get("password")
        try:
            check=SupervisorModel.objects.get(email=email,password=password)
            request.session["sup_id"]=check.supervisor_id   
            messages.success(request, "Logged in Successfully")
        
            return redirect("sup_home")
        except:
             messages.error(request, "Invalid Login")

  return render(request,'sup-login.html')

def sup_home(request):
    count=StudentRegisterModel.objects.count()
    l = UserBookSlotModel.objects.count()
    a = SupAddSlotModel.objects.count()
    return render(request,'supervisor/sup-home.html',{'k':count,'j':l,'m':a})    


def sup_add_slot(request):
      slot=VenueModel.objects.all()

      if request.method == "POST":
        sup_id=request.session["sup_id"]
        title= request.POST.get('title')
        date= request.POST.get('date')
        time = request.POST.get('time')
        type = request.POST.get('type')
        duration = request.POST.get('duration')
        venue = request.POST.get('venue')
        documents = request.POST.get('documents')

        SupAddSlotModel.objects.create(sup_id=sup_id,title=title,date=date,time=time,type=type,duration=duration,venue=venue,documents=documents)
      return render(request,'supervisor/sup-add-slot.html',{'f': slot})

def sup_view_slot(request):
    sup_id=request.session["sup_id"]
    Slotview = SupAddSlotModel.objects.filter(sup_id=sup_id)
    return render(request,'supervisor/sup-view-slots.html',{'f': Slotview})


def sup_conf_view_slot(request):
    sup_id=request.session["sup_id"]
    Slotview = SupAddSlotModel.objects.filter(status='Booked',sup_id=sup_id)
    return render(request,'supervisor/sup-view-slots.html',{'f': Slotview})