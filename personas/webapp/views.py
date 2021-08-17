from django.shortcuts import render
from students.models import studentsperformance

from django.shortcuts import render
from django.http import HttpResponse




def home(request):

    return render(request, 'bienvenido.html')

def nosotros(request):

    return render(request, 'nosotros.html')


def barras(request):

    return  render(request,'barras.html')