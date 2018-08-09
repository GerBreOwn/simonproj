import os
from io import BytesIO
from django.core.management.base import BaseCommand, CommandError
from django.contrib.admin.views.decorators import staff_member_required
from django.http import HttpResponse

#from django.views.generic.dates import TodayArchiveView
from visit.models import Visit

import datetime
from datetime import date, timedelta
from dateutil.relativedelta import *

from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import letter
from reportlab.lib.units import mm, inch
from reportlab.pdfbase.pdfmetrics import stringWidth
from reportlab.rl_config import defaultPageSize
from reportlab.lib import colors

fs19 = 19
buffer = BytesIO()
mydate = date.today()

@staff_member_required
# ~ class PaymentTodayArchiveView(TodayArchiveView):
	# ~ #vi = Visit.objects.filter(visit_date = mydate)
	# ~ vi = Visit.objects.all()
	# ~ date_field = "visit_date"


	
def daily_payment_view(request):
	response = HttpResponse(['content'],content_type='application/pdf')
	response['Content-Disposition'] ='inline;filename="payment.pdf"'

	queryset = Visit.objects.filter(visit_date = mydate)
	
	pa1 = canvas.Canvas(response)
	pa1.PageSize = letter
	pa1.setLineWidth(.5)

	y = 900
### Print the heading
	y -= 100
	x = 200	
	
	l1 = "Payment Report for %s" % mydate
	lw1 = stringWidth(l1,'Helvetica-Bold', 24)
	pa1.drawString(x, y, str(l1))
	y -= 30
	x = 90

	pa1.setFont('Helvetica', 10)
	pa1.drawString(x,y, text = "Patient")
	pa1.line(x , y-2, x + 40, y-2)
	pa1.drawString(x + 150, y, text = "Visit Payment")
	pa1.line(x + 150, y-2, x + 220, y-2)
	pa1.drawString(x + 250, y, text = "Medicine Payment")
	pa1.line(x+250, y-2, x+335, y-2)
	pa1.drawString(x + 350, y, text = "Total Payment")
	pa1.line(x + 350, y-2, x + 415, y - 2)

	y -= 10
	vip = 0
	mep = 0
	ptct = 0
	
	for v in queryset:
		ttlpay = 0
		ptct += 1
		y -= 15
		vi_pat = str(v.patient)
		vi_pay = str(v.visit_payment)
		vip += int(vi_pay)
		me_pay = str(v.medicine_payment)
		mep += int(me_pay)
		ttlpay = int(vi_pay) + int(me_pay)
		pa1.drawRightString(x - 12, y, str(ptct))
		pa1.drawString(x, y, str(vi_pat))
		pa1.drawString(x + 175, y, str(vi_pay))
		pa1.drawString(x + 275, y, str(me_pay))
		pa1.drawString(x + 365, y, str(ttlpay))

	y -= 10
	pa1.line(x - 10, y, x + 420, y)
	y -= 15
	pa1.drawString(x, y, text = "Totals")
	pa1.drawString(x + 170, y, str(vip))
	pa1.drawString(x + 270, y, str(mep))
	pa1.drawString(x + 360, y, str(int(vip) + int(mep)))
	
	pa1.showPage()
	pa1.save()
	
	return response

def yesterday_view(request):
	yest = date.today() - timedelta(1)
	mydate = yest
	response = HttpResponse(['content'],content_type='application/pdf')
	fn = "payment for " + str(mydate) + ".pdf"
	response['Content-Disposition'] = 'inline; filename=fn'

	pa1 = canvas.Canvas(response)
	pa1.PageSize = letter
	pa1.setLineWidth(.5)

	y = 900

	y -= 100
	x = 200	
	
	l1 = "Payment Report for %s" % mydate
	lw1 = stringWidth(l1,'Helvetica-Bold', 24)
	pa1.drawString(x, y, str(l1))
	y -= 30
	x = 90

	pa1.setFont('Helvetica', 10)
	pa1.drawString(x,y, text = "Patient")
	pa1.line(x , y-2, x + 40, y-2)
	pa1.drawString(x + 150, y, text = "Visit Payment")
	pa1.line(x + 150, y-2, x + 220, y-2)
	pa1.drawString(x + 250, y, text = "Medicine Payment")
	pa1.line(x+250, y-2, x+335, y-2)
	pa1.drawString(x + 350, y, text = "Total Payment")
	pa1.line(x + 350, y-2, x + 415, y - 2)

	vi = Visit.objects.filter(visit_date = mydate)

	y -= 10
	vip = 0
	mep = 0
	ptct = 0
	
	for v in vi:
		ttlpay = 0
		ptct += 1
		y -= 15
		vi_pat = str(v.patient)
		vi_pay = str(v.visit_payment)
		vip += int(vi_pay)
		me_pay = str(v.medicine_payment)
		mep += int(me_pay)
		ttlpay = int(vi_pay) + int(me_pay)
		pa1.drawString(x - 10, y, str(ptct))
		pa1.drawString(x, y, str(vi_pat))
		pa1.drawString(x + 175, y, str(vi_pay))
		pa1.drawString(x + 275, y, str(me_pay))
		pa1.drawString(x + 365, y, str(ttlpay))

	y -= 10
	pa1.line(x - 10, y, x + 420, y)
	y -= 15
	pa1.drawString(x, y, text = "Totals")
	pa1.drawString(x + 170, y, str(vip))
	pa1.drawString(x + 270, y, str(mep))
	pa1.drawString(x + 360, y, str(int(vip) + int(mep)))
	
	pa1.showPage()
	pa1.save()
	
	return response

def today_payment_view(request):
	response = HttpResponse(['content'],content_type='application/pdf')
	response['Content-Disposition'] = 'inline; filename="payment.pdf"'
	mydate = date.today()
	daily_payment_view(request)
	return response

def weekly_payment_view(request, week_no):
	pass

def monthly_payment_view(request, month_no):
	pass








	
# ~ #@staff_member_required

# ~ def daily_payment(request):
	# ~ today = date.today()
	# ~ #today_pay_list = Visit.objects.filter(visit_date = today)
	# ~ pay_list = Visit.objects.filter(visit_date = today)
	# ~ #return render(request, "visit/daily_payment.html", {'today_pay_list': today_pay_list})
	# ~ return render(request, "visit/daily_payment.html", {'pay_list': pay_list})
	

# ~ def yesterday_payment(request):
	# ~ yesterday = date.today() - timedelta(days=1)
	# ~ yest_pay_list = Visit.objects.filter(visit_date = yesterday)
	# ~ return render(request, "visit/daily_payment.html", {'yest_pay_list': yest_pay_list})
	


