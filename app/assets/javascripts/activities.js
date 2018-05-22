const showActivities = function( project ) {
  $("div[id^='project_']").hide();
  $("#project_" + project).show(); 
}

$(function() {
  $('#projects').on('change', function() {
    showActivities( $(this).val() );
  });

  // Initial display of Activities
  showActivities( $('#projects').val() );
});