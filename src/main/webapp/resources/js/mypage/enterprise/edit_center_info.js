$(function(){

	/*태그 입력 시작*/
   $('input[name="work-tag"]').amsifySuggestags({
        type :'bootstrap',tagLimit: 5
   });
	/*태그 입력 끝*/

   /*종목선택 시작*/
   var beauty = new SelectBeauty({
      el: '#kinds_of_sport',
      length: 5,
      max: 10
   });
   /*종목선택 끝*/
   
   /*제공서비스 선택 시작*/
   var service = new SelectBeauty({
      el: '#kind_of_service',
      placeholder: "제공하는 서비스를 선택하세요",
      length: 5,
      max: 10
   });
   /*제공서비스 선택 끝*/

   
   /*이미지업로드 시작*/
   $('.input-images').imageUploader({	   
	    imagesInputName: 'photos',
	    maxSize: 2 * 1024 * 1024,
	    maxFiles: 5	   
   });
   /*이미지업로드 끝*/
   
   $('#weekday_start').timepicki();
   $('#weekday_end').timepicki();
   $('#weekend_start').timepicki();
   $('#weekend_end').timepicki();
   
});

