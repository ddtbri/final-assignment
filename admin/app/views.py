from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def uploadImg(request):
    if request.method == 'POST':
        img=request.FILES.get('img')
        name = request.FILES.get('img').name
        file=open("C:/Users/sca/Desktop/site/moban2039/img/"+name,'wb')
        file.close()
    return render(request, 'upload.html')