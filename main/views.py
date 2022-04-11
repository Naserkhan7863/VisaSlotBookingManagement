from django.shortcuts import render
from main.models import UserContactDetailModel
from django.core.mail import EmailMultiAlternatives
from visa.settings import DEFAULT_FROM_EMAIL


# Create your views here.
def index(request):
    if request.method == "POST":
        name= request.POST.get('fullname')
        email= request.POST.get('email')
        contact= request.POST.get('contact')
        subject= request.POST.get('subject')
        UserContactDetailModel.objects.create(fullname=name,email=email,contact=contact,subject=subject)
         #email code
        html_content = "<br/><p>This is Naser Fazal wanted to inform u that u hv been<strong> Selected </strong> for the masters in computer science<strong> University of British Columbia</strong></p>"
        from_mail = DEFAULT_FROM_EMAIL
        to_mail = [email]
        # if send_mail(subject,message,from_mail,to_mail):
        msg = EmailMultiAlternatives("Connection Status", html_content, from_mail, to_mail)
        msg.attach_alternative(html_content, "text/html")
        if msg.send():
            print("Sent")
    return render(request,'index.html')
def covid_guidelines(request):
    return render(request,'student/stu-covid-guidelines.html')
def help_support(request):
    return render(request,'student/stu-help-support.html')

# Create your views here.