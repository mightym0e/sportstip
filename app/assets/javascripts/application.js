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
//= require bootstrap-sprockets
//= require_tree .

//$(document).ready(
//
//	function(){
//		$('.sort_link').click(
//			function(){
//				if($(this).hasClass('asc')){
//					$(this).removeClass('asc');
//					$(this).addClass('desc');
//					$(this).attr('href', $(this).attr('href').replace('asc', 'desc'));
//				} else if($(this).hasClass('asc')){
//					$(this).removeClass('desc');
//					$(this).addClass('asc');
//					$(this).attr('href', $(this).attr('href').replace('desc', 'asc'));
//				} else {
//					$(this).addClass('asc');
//					$(this).attr('href', $(this).attr('href').append('&class=asc'));
//				}
//			}
//		);
//	}
	
//	$( 'table' ).load(function() {
//		var sort = getParameterByName('sort');
//		if(sort.length > 0 && getParameterByName('class')=='desc'){
//			$('.'+sort).addClass('desc');
//		} else if(sort.length > 0 && getParameterByName('class')=='asc'){
//			$('.'+sort).addClass('asc');
//		}
//	});

//);
//
//function getParameterByName(name) {
//    name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
//    var regex = new RegExp('[\\?&]' + name + '=([^&#]*)'),
//        results = regex.exec(location.search);
//    return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
//}