//= require bootstrap-sprockets
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$('#subject').on('change', submitForm);

$('#keywords').on('keyup', submitForm);

var submitForm = function() {
  $('#form').submit();
}
