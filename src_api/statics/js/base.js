window.addEventListener("load", function() {
    (function($) {
        //用户添加用户类型字段隐藏显示
        var selectField = $('#id_usertype'),
        user_verified = $('.user_detailcls'),
        company_verified = $('.company_informationcls'),
        manage_verified = $('.manage_userinfocls');
        user_verified.hide();
        company_verified.hide();
        manage_verified.hide();
        selectField.change(function(){
            if ($(this).val() == 0) {
                user_verified.show();
                company_verified.hide();
                manage_verified.hide();
            } else if ($(this).val() == 1) {
                user_verified.hide();
                company_verified.show();
                manage_verified.hide();
            } else if ($(this).val() == 2) {
                user_verified.hide();
                company_verified.hide();
                manage_verified.show();
            }
        });

    })(django.jQuery);
});