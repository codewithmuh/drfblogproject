from django.contrib import admin
from . import models


# Register your models here.

@admin.register(models.Blog)

# The BlogAdmin class is a subclass of the admin.ModelAdmin class. 
class BlogAdmin(admin.ModelAdmin):
    
    fields = [
        
        'user',
        'title',
        'blog_text',
        'description',
        'main_image',
    ]
    list_display = [
        'title', 
        'user',
        'blog_text',
        'description',
        'main_image',
        'created_at',
        'updated_at',
        
    ]


