# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'turbolinks:load', ->
	$('.addboatbtn').on 'click', ->
		window.addboatsbtn = $(this).closest(".jobs_wrapper")

	$('#boatform').on "ajax:success", (e) ->
		console.log("Hello")
	.on "ajax:error", (e, data, status, xhr) ->
		console.log("Hi")

	$('#boat').on 'change', ->
		$('.boatid').val($(this).val())

