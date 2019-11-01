
$(function(){
	
	$('#demo4-2').datetimepicker({
        date: new Date(),
        viewMode: 'HM',
        onDateUpdate: function(){
            $('#date-text4-2').text(this.getText());
            $('#date-text-ymd4-2').text(this.getText('yyyy-MM-dd'));
            $('#date-value4-2').text(this.getValue());
        }
    });

   $('input[name="work-tag"]').amsifySuggestags({
        type :'bootstrap',tagLimit: 5
   });
   
   var beauty = new SelectBeauty({
      el: '#kinds_of_sport',
      length: 5,
      max: 10
   });
});

