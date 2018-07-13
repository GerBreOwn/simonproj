from reports.base import ModelReport
from .models import Visit

class PaymentReport(ModelReport):
    name = "Daily Payment Report"
    # ~ qs = Visit.objects.all()
    # ~ report = PaymentReport()
    # ~ report.run_report()
    # ~ report.generate_output
    # ~ report.collect_data()
