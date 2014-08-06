// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('.read-more').click(function() {
    var offset = $('.news > .content > .row').length - 1;
    var params = { 'offset': offset };
    var self = this;
    $.ajax({
        'url': '/news/index',
        'dataType': 'json',
        'data': params
    }).done(function(data) {
        if (data.length <= 0) return;
        var row, time, d = data[0];

        time = prettyDate(d.created_at);

        row = "<div class='row'><div class='columns large-4'><a href='/news/";
        row += d.id +"'><img src='" + d.featured_image + "'></a></div>";
        row += "<div class='columns large-8'><a href='/news/" + d.id + "'>";
        row += "<h5>" + d.title + "</h5></a><p class='date'>" + time + "</p>";
        row += "<p class='description'>" + d.description + "</p></div></div>";

        $(self).parent().parent().before(row);
    });
});
