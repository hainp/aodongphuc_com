// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery.min
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .
$(function(){ $(document).foundation(); });

// Pretty datetime formatter
var prettyDate = function(dateString) {
    var day, formatted, jsDate, month;

    jsDate = new Date(dateString);
    day = jsDate.getMonth() + 1 < 10 ? "0" + (jsDate.getMonth() + 1) : "" + (jsDate.getMonth() + 1);
    month = jsDate.getDate() < 10 ? "0" + (jsDate.getDate()) : "" + (jsDate.getDate());

    formatted = "" + day + "-" + month + "-" + (jsDate.getFullYear());
    return formatted;
};
