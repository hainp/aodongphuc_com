// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
    var sliderFor = $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.slider-nav',
        centerMode: true
    });

    var sliderNav = $('.slider-nav').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        dots: true,
        centerMode: true,
        focusOnSelect: true,
        asNavFor: '.slider-for'
    });
});
