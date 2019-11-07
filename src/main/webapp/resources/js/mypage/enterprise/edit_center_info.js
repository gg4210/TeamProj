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
   
   var beauty2=new SelectBeauty({
	  el:'#center_service',
	  placeholder:'음냐',
	  length:5,
	  max:5
   });

   
   /*이미지업로드 시작*/
   $('.input-images').imageUploader({	   
	    imagesInputName: 'photos',
	    maxSize: 2 * 1024 * 1024,
	    maxFiles: 5	   
   });
   /*이미지업로드 끝*/
   
   
});

