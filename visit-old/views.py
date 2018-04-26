from django.shortcuts import render

# Create your views here.
from reportlab.lib.pagesizes import HALF_LETTER, letter, A4

class PresPDF:
	def __init__(self, buffer, pagesize):
		self.buffer = buffer
