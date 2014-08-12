// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
    $('.products .slide-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        asNavFor: 'slide-nav',
        arrows: false
    });

    $('.products .slide-nav').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        asNavFor: '.slide-for',
        focusOnSelect: true
    });
});
