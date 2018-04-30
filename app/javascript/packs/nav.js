$(window).scroll(function() {
    if($(this).scrollTop() > 50) {
        $('.navbar-wagon').addClass('invis');
    } else {
        $('.navbar-wagon').removeClass('invis');
    }
});
