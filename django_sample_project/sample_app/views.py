from django.shortcuts import render
from .models import Details,User
from django.core.serializers import serialize
# Create your views here.
def index(request,user_id):
    dataa=Details.objects.all()
    dataa_json = serialize('json', dataa)
    request.session['user_id'] = user_id
    print('user_id',user_id)
    print(dataa_json)
    return render(request, 'sample_app/base.html',{'data':dataa,'data_json':dataa_json})

def login(request):
    login_data=User.objects.all()
    login_json=serialize('json',login_data)
    return render(request,"sample_app/login.html",{'login_data':login_data,'login_json':login_json})