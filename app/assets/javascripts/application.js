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
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets
$(function(){
	$('.alert-info, .alert-success').fadeOut(4000)
})

// let alert = document.getElementsByClassName('alert');
// function fade_out () {
// 	let opacity = 1;
// 	for (var i = 1; i <= 10; i++) {
// 			opacity = i/10
// 			return function () { return increment; }
// 	};	
// }

// for (var i = 1; i <= 5; i++) {
//     setTimeout(function(x) { 
//     	return function() { 
//     		console.log(x); 
//    		}; 
// 	}(i), 1000*i);
// }