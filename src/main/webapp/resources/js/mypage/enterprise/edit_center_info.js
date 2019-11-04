
$(function(){
	
	/*주중 타임피커*/
	$('#weekday_open_timePicker').datetimepicker({
        date: new Date(),
        viewMode: 'HM',
        onDateUpdate: function(){
            $('#weekday_open_text').val(this.getText('HH:mm'));
        },
		onOk: function(){
            $('#weekday_open_text').val(this.getText('HH:mm'));
		},
        onClear: function(){
        	$('#weekday_open_text').val("");
        }
    });
	
	$('#weekday_end_timePicker').datetimepicker({
		date: new Date(),
		viewMode: 'HM',
		onDateUpdate: function(){
			$('#weekday_end_text').val(this.getText('HH:mm'));
		},
		onOk: function(){
			$('#weekday_end_text').val(this.getText('HH:mm'));
		},
		onClear: function(){
			$('#weekday_end_text').val("");
		}
	});
	/*주중 타임피커 끝*/

	/*주말 타임피커*/
	$('#weekend_open_timePicker').datetimepicker({
		date: new Date(),
		viewMode: 'HM',
		onDateUpdate: function(){
			$('#weekend_open_text').val(this.getText('HH:mm'));
		},
		onOk: function(){
			$('#weekend_open_text').val(this.getText('HH:mm'));
		},
		onClear: function(){
			$('#weekend_open_text').val("");
		}
	});
	
	$('#weekend_end_timePicker').datetimepicker({
		date: new Date(),
		viewMode: 'HM',
		onDateUpdate: function(){
			$('#weekend_end_text').val(this.getText('HH:mm'));
		},
		onOk: function(){
			$('#weekend_end_text').val(this.getText('HH:mm'));
		},
		onClear: function(){
			$('#weekend_end_text').val("");
		}
	});
	/*주말 타임피커 끝*/


   $('input[name="work-tag"]').amsifySuggestags({
        type :'bootstrap',tagLimit: 5
   });
   
   var beauty = new SelectBeauty({
      el: '#kinds_of_sport',
      length: 5,
      max: 10
   });
   
});

