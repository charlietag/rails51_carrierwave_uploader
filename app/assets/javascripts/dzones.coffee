# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#$(document).on "turbolinks:load", ->
#  Dropzone.options.myDzone=
#    paramName: 'dzone[picture]'
$(document).on "turbolinks:load", ->
  $("#my_single_dropzone").dropzone
    paramName: 'dzone[picture]'
    autoDiscover: true
