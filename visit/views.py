import os
from io import BytesIO
from django.core.management.base import BaseCommand, CommandError
from django.contrib.admin.views.decorators import staff_member_required
from django.http import HttpResponse

from visit.models import Visit

import datetime
from datetime import date
from dateutil.relativedelta import *

from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import letter
from reportlab.lib.units import mm, inch
from reportlab.pdfbase.pdfmetrics import stringWidth
from reportlab.rl_config import defaultPageSize
from reportlab.lib import colors

fs19 = 19
buffer = BytesIO()
today = str(date.today())

@staff_member_required
def daily_payment_view(request):
	response = HttpResponse(['content'],content_type='application/pdf')
	response['Content-Disposition'] = 'inline; filename="payment.pdf"'

	def coord(x,y,unit=1):
		x, y = x * unit, y * unit
		return x, y


	pa1 = canvas.Canvas(response)
	pa1.PageSize = letter
	pa1.setLineWidth(.5)
	#y = defaultPageSize[1]; x = defaultPageSize[0]
	y = 900
### Print the heading
	y -= 100
	x = 200
	mydate = today
	
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
	pa1.line(x+250, y-2, x+350, y-2)

	vi = Visit.objects.filter(visit_date = mydate)

	y -= 10
	vip = 0
	mep = 0
	for v in vi:
		y -= 15
		vi_pat = str(v.patient)
		vi_pay = str(v.visit_payment)
		vip += int(vi_pay)
		me_pay = str(v.medicine_payment)
		mep += int(me_pay)
		pa1.drawString(x, y, str(vi_pat))
		pa1.drawString(x + 175, y, str(vi_pay))
		pa1.drawString(x + 275, y, str(me_pay))

	y -= 10
	pa1.line(x, y, 450, y)
	y -= 15
	pa1.drawString(x, y, text = "Totals")
	pa1.drawString(x + 170, y, str(vip))
	pa1.drawString(x + 270, y, str(mep))
	pa1.showPage()
	pa1.save()
	# ~ pdf = buffer.getvalue()
	# ~ buffer.close()
	# ~ response.write(pdf)
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
	


