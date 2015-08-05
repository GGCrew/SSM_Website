$(document).on('page:change', function() {
	// page is now ready, initialize the calendar...
	$('#calendar').fullCalendar({
		// put your options and callbacks here
		events: '/admin/calendar.json'
	})
});