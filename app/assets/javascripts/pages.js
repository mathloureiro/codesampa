$(function(){
    $(window).scroll(function(){
        if ($(this).scrollTop() > 600){
            $('.navbar-home').addClass('navbar-shrink');
        }
        else{
            $('.navbar-home').removeClass('navbar-shrink');
        }
    });
});
