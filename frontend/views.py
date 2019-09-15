# Create your views here.
from django.shortcuts import render
from django.http import HttpResponse
from django.conf import settings

import os

def index(request):
    try:
        with open(os.path.join(settings.REACT_APP_DIR, 'build', 'index.html')) as f:
            return HttpResponse(f.read())
    except FileNotFoundError:
        return HttpResponse(
            """
            Please build the front-end using cd frontend && npm install && npm run build 
            """,
            status=501,
        )    
    return render(request, 'index.html')