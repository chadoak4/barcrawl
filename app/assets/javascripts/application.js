// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require flipclock.min
//= require_tree .

  var clock;
$(document).ready(function() {
    // Grab the current date
    var currentDate = new Date();
    // Set some date in the future. ***change to desired date***
    //var futureDate = new Date(2014, 11, 23, 6, 0, 0);
    var futureDate = new Date(2015, 11, 12, 20, 0, 0,0); //fixed as per comments
    // Calculate the difference in seconds between the future and current date
    var diff = futureDate.getTime() / 1000 - currentDate.getTime() / 1000;
    // Instantiate a coutdown FlipClock
    clock = $('.clock').FlipClock(diff, { clockFace: 'DailyCounter', countdown: true });
});
