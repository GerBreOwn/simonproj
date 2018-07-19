from visit.models import Visit, VisitPayment, MedicinePayment
from patient.models import Patient
from model_report.report import reports, ReportAdmin

class VisitsReport(ReportAdmin):
	title = ('Payments Report')
	model = Visit
	fields = [patient, visit_payment, medicine_payment]
	list_order_by = ('patient')
	type = 'report'
reports.register('visit-report', VisitReport)	
