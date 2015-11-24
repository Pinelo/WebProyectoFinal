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



var do_on_load = function() { 
	$(function() {
		$('.addSuitImg').on('click', function(e) {
			$target = $(e.target)
			// $target.parent().removeClass('clicked').addClass('clicked')
			$('input[name="suit_id"]').val($target.attr('data-suit-id'))
			console.log('clicked')
			$('#add_suit_form').submit()
		})

	});
}

$(window).bind('page:change', do_on_load)
