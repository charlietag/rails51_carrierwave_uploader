# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "turbolinks:load", ->
  $("#my_multi_dropzone").dropzone
    paramName: 'multidzone[pictures]'
    autoDiscover: true
    uploadMultiple: true
    parallelUploads: 100
    maxFiles: 100
