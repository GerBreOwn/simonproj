#from django.shortcuts import render

# Create your views here.
#from django.http import HttpResponse
from django.shortcuts import render
from .models import Patient
from .frorms import ImageForm

def showimage(request):
	lastimage = Image.objects.last()
	imagefile = lastimage.imagefile
	form = ImageForm(request.POST or None, request.FILES or None)
	if form.is.valid():
		form.save()
	context = {'imagefile': imagefile, 'form': form}
	return render(request, '/images.html', context)
