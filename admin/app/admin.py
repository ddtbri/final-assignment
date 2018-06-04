from django.contrib import admin
from .models import Cart,Collection,Commit,Goods,Gorder,User

class CartAdmin(admin.ModelAdmin):
    # listdisplay设置要显示在列表中的字段（id字段是Django模型的默认主键）
    list_display = ('id','uid', 'gid', 'amount')

    # list_per_page设置每页显示多少条记录，默认是100条
    list_per_page = 50

    # ordering设置默认排序字段，负号表示降序排序
    # ordering = ('-name',)

    # 操作项功能显示位置设置，两个都为True则顶部和底部都显示
    actions_on_top =True
    actions_on_bottom = True
    # 操作项功能显示选中项的数目
    actions_selection_counter = True
    # 字段为空值显示的内容
    empty_value_display = ' -空白- '

    # list_editble 设置默认可编辑字段（name默认不可编辑，因为它是一个链接，点击会进入修改页面）
    

    # fk_fields 设置显示外键字段
    fk_fields = ('uid','gid')

class CollectionAdmin(admin.ModelAdmin):
    # listdisplay设置要显示在列表中的字段（id字段是Django模型的默认主键）
    list_display = ('id','uid', 'gid', 'amount')

    # list_per_page设置每页显示多少条记录，默认是100条
    list_per_page = 50

    # ordering设置默认排序字段，负号表示降序排序
    # ordering = ('-name',)

    # 操作项功能显示位置设置，两个都为True则顶部和底部都显示
    actions_on_top =True
    actions_on_bottom = True
    # 操作项功能显示选中项的数目
    actions_selection_counter = True
    # 字段为空值显示的内容
    empty_value_display = ' -空白- '

    # list_editble 设置默认可编辑字段（name默认不可编辑，因为它是一个链接，点击会进入修改页面）
    

    # fk_fields 设置显示外键字段
    fk_fields = ('uid','gid')

class CommitAdmin(admin.ModelAdmin):
    # listdisplay设置要显示在列表中的字段（id字段是Django模型的默认主键）
    list_display = ('id','uid', 'name', 'email')

    # list_per_page设置每页显示多少条记录，默认是100条
    list_per_page = 50

    # ordering设置默认排序字段，负号表示降序排序
    # ordering = ('-name',)

    # 操作项功能显示位置设置，两个都为True则顶部和底部都显示
    actions_on_top =True
    actions_on_bottom = True
    # 操作项功能显示选中项的数目
    actions_selection_counter = True
    # 字段为空值显示的内容
    empty_value_display = ' -空白- '

    # list_editble 设置默认可编辑字段（name默认不可编辑，因为它是一个链接，点击会进入修改页面）
    

    # fk_fields 设置显示外键字段
    fk_fields = ('uid',)

class GoodsAdmin(admin.ModelAdmin):
    # listdisplay设置要显示在列表中的字段（id字段是Django模型的默认主键）
    list_display = ('gid', 'name','description','price','type','store','included_date')

    # list_per_page设置每页显示多少条记录，默认是100条
    list_per_page = 50

    # ordering设置默认排序字段，负号表示降序排序
    # ordering = ('-name',)

    # 操作项功能显示位置设置，两个都为True则顶部和底部都显示
    actions_on_top =True
    actions_on_bottom = True
    # 操作项功能显示选中项的数目
    actions_selection_counter = True
    # 字段为空值显示的内容
    empty_value_display = ' -空白- '
    
    

    # list_editble 设置默认可编辑字段（name默认不可编辑，因为它是一个链接，点击会进入修改页面）
 
class OrderAdmin(admin.ModelAdmin):
    # listdisplay设置要显示在列表中的字段（id字段是Django模型的默认主键）
    list_display = ('oid','uid', 'gid', 'amount','included_date')

    # list_per_page设置每页显示多少条记录，默认是100条
    list_per_page = 50

    # ordering设置默认排序字段，负号表示降序排序
    # ordering = ('-name',)

    # 操作项功能显示位置设置，两个都为True则顶部和底部都显示
    actions_on_top =True
    actions_on_bottom = True
    # 操作项功能显示选中项的数目
    actions_selection_counter = True
    # 字段为空值显示的内容
    empty_value_display = ' -空白- '

    # list_editble 设置默认可编辑字段（name默认不可编辑，因为它是一个链接，点击会进入修改页面）
    
class UserAdmin(admin.ModelAdmin):
    # listdisplay设置要显示在列表中的字段（id字段是Django模型的默认主键）
    list_display = ('uid', 'password', 'email_address','included_date')

    # list_per_page设置每页显示多少条记录，默认是100条
    list_per_page = 50

    # ordering设置默认排序字段，负号表示降序排序
    # ordering = ('-name',)

    # 操作项功能显示位置设置，两个都为True则顶部和底部都显示
    actions_on_top =True
    actions_on_bottom = True
    # 操作项功能显示选中项的数目
    actions_selection_counter = True
    # 字段为空值显示的内容
    empty_value_display = ' -空白- '

    # list_editble 设置默认可编辑字段（name默认不可编辑，因为它是一个链接，点击会进入修改页面）
    
 
# Register your models here.
# 
admin.site.site_header='电商后台管理'
admin.site.site_title='电商后台管理'

admin.site.register(Cart,CartAdmin)
admin.site.register(Collection,CollectionAdmin)
admin.site.register(Commit,CommitAdmin)
admin.site.register(Goods,GoodsAdmin)
admin.site.register(Gorder,OrderAdmin)
admin.site.register(User,UserAdmin)


