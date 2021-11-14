from django.contrib import admin
from .models import Vendor


@admin.register(Vendor)
class VendorAdmin(admin.ModelAdmin):
    list_display = ('co_name', 'st_addr', 'city', 'st', 'zip_code')
    list_filter = ('co_name', 'zip_code')
    search_fields = ('co_name', 'zip_code')


# admin.site.register(Vendor)
