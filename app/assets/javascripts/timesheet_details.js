$(document).on('change', 'input[type=text].hours-field', function() {
  const fieldPrefix = 'timesheet_timesheet_details_attributes_'
  const rowID = this.id.split('_')[4]
  const totalField = fieldPrefix + rowID + '_total_hours'
  let totalHours = 0
  
  for (i = 1; i <= 7; i++) {
    let field = fieldPrefix + rowID + '_day' + i + '_hours';
    let fieldVal = $('#' + field).val();
    if( fieldVal != ''){
      totalHours += parseInt(fieldVal);
    }
  }
  
  $('#' + totalField).val(totalHours);
});
