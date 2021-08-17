


from django.shortcuts import render

from students.models import studentsperformance
from django.db.models import Count

def home(request):

    return render(request, 'bienvenido.html')

def nosotros(request):

    return render(request, 'nosotros.html')

def get_datos(self):
    data = []
    count = studentsperformance.objects.values('race_ethnicity').annotacte(Count('race_ethnicity'))
    data.append(float(count))
    return data

def get_context(self, **kwargs):
    context = super().get_context_data(**kwargs)
    context['save'] = self.get_datos()
    return context

def barras(request):
    return render(request,'barras.html')

def pie(request):

    return render(request, 'pie.html')

