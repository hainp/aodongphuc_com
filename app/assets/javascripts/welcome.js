// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function () {
    $('.banners .slides').slick({
        'arrows': false,
        'autoplay': true
    });

    $('.lookbook .slides').slick({
        'slidesToShow': 3,
        'slidesToScroll': 2
    });
});
