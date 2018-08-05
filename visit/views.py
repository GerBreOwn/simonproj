#View for Payment Report

import datetime

from django.db.models.functions import (ExtractDay, ExtractMonth, ExtractQuarter, ExtractWeek, ExtractWeekDay, ExtractYear,)
from django.contrib.admin.views.decorators import staff_member_required

from django.db.models import Sum
from django.shortcuts import render
from visit.models import Visit
from django.utils import timezone
from django.db.models.functions import Cast

from .forms import GetDatesForm

#@staff_member_required

def daily_payment(request):
	pay_list = Visit.objects.filter(visit_date = timezone.now())

	visit_total = pay_list.aggregate(Sum('visit_payment'))
	medic_total = pay_list.aggregate(Sum('medicine_payment'))

	#vt = visit_total.get('visit_total')

	return render(request, "visit/daily_payment.html", {'pay_list': pay_list})

	return render(request, "visit/daily_payment.html", {'visit_total': visit_total})

def yesterday_payment(request):
	pay_list = Visit.objects.filter(visit_date = timezone.now()-1)

	visit_total = pay_list.aggregate(Sum('visit_payment'))

	vt = visit_total.get('visit_total, 0')

	return render(request, "visit/daily_payment.html", {'pay_list': pay_list})

	return render(request, "visit/daily_payment.html", {'vt': vt})


