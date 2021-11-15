from django.shortcuts import render, redirect
from .models import Vendor
from django.views.generic import (
    ListView,
    DetailView,
    CreateView,
    UpdateView,
    DeleteView
)


def search_vendors(request):
    if request.method == "POST":
        searched = request.POST['searched']
        print(searched)
        vendors = Vendor.objects.filter(co_name__contains=searched)

    return render(request, 'vendors/search_vendors.html', {'vendors': vendors, 'searched': searched})


def select(request):
    object_list = Vendor.objects.all()
    return render(request, 'vendors/select.html', {'object_list': object_list})


class Home(ListView):

    model = Vendor


class Detail_View(DetailView):
    model = Vendor


class Update_View(UpdateView):
    model = Vendor
    fields = '__all__'


class Create_View(CreateView):
    model = Vendor
    fields = '__all__'


class Delete_View(DeleteView):
    model = Vendor
    success_url = '/'
