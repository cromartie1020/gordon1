from django.db import models
from datetime import datetime

from django.urls import reverse


class Vendor(models.Model):
    co_name = models.CharField(max_length=75)
    st_addr = models.CharField(max_length=75, blank=True, null=True)
    st_addr1 = models.CharField(max_length=75, blank=True, null=True)
    st_addr2 = models.CharField(max_length=75, blank=True, null=True)
    st_addr3 = models.CharField(max_length=75, blank=True, null=True)
    city = models.CharField(max_length=75, blank=True, null=True)
    st = models.CharField(max_length=2, blank=True, null=True)
    zip_code = models.CharField(max_length=25, blank=True, null=True)
    attn = models.CharField(max_length=75, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)
    last_updated = models.DateTimeField(auto_now=datetime.now)

    class Meta:
        ordering=('co_name',)

    def __str__(self):
        return self.co_name

    def get_absolute_url(self):
        return reverse('detail_view', kwargs={'pk': self.pk})
