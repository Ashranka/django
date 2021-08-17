from django.shortcuts import render
from students.models import studentsperformance

def home(request):

    return render(request, 'bienvenido.html')

def nosotros(request):

    return render(request, 'nosotros.html')