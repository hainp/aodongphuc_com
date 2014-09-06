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

 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments);},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m);})(window,document,'script','//www.google-analytics.com/analytics.js','ga');ga('create', 'UA-54498969-1', 'auto');ga('send', 'pageview');
