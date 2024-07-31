from django.urls import path
from .import views
urlpatterns=[path('bot/<int:user_id>/', views.index, name='index'),
            #  path('',views.login,name='login')    
]