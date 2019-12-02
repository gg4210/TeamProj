
$(function() {
   
   //사이드바 관련 자바 스크립트.
   var sidebarIndex = $('a').click(function() {
      switch(sidebarIndex.index(this)){
      
         case 1://search 버튼 클릭
            
            //사이즈 조정
            $('#side_SearchBar').css('width', $(window).width() - 50 );
            
            //토글속성 부여
             $("#side_SearchBar").fadeToggle("3000");
             
             /*브라우저 사이즈 조정 할때마다 search 창이 함께 조정됨 시작*/
               $(window).resize(function() {
                  $('#side_SearchBar').css('width', $(window).width() - 50 );
               });
             /*브라우저 사이즈 조정 할때마다 search 창이 함께 조정됨 끝*/
            break;
            
         case 2://마이페이지 클릭
            if($(this).attr("id")==='login'){
               $("#loginMenu").fadeToggle("3000");
            }
            else if($(this).attr("id")==='user'){
               $("#CustomerLoMenu").fadeToggle("3000");
            }
            else if($(this).attr("id")==='center'){
               $("#CenterLoMenu").fadeToggle("3000");
            }
            else if($(this).attr("id")==='admin'){
               $("#AdminLoMenu").fadeToggle("3000");
            }
         default:break;
      }
   
   });
   
   $("#closelogin").click(function(){
      $("#loginMenu").fadeOut("3000");
   });
   
   $("#closeCulogin").click(function(){
      $("#CustomerLoMenu").fadeOut("3000");
   });
   $("#closeCelogin").click(function(){
      $("#CenterLoMenu").fadeOut("3000");
   });
   
   $("#closeAdlogin").click(function(){
      $("#AdminLoMenu").fadeOut("3000");
   });

   var myFullpage = new fullpage('#fullpage', {
       anchors: ['firstPage', 'secondPage', 'thirdPage'],
       sectionsColor:['#1a237e','#1a237e','#1a237e'],
      verticalCentered: false,
       navigation: false,
       //navigationPosition: 'right',
       //navigationTooltips: ['첫번째 페이지', '두번째 페이지', '세번째 페이지'],
   });

      
   //메인페이지의 카드 높이 조절용//
      var height=$(window).height();
      var width=$(window).width();
      
      $('#mainCard1').css('height',height);
      $('#mainCard2').css('height',height);
      $('#mainCard3').css('height',height);
      setMargin(width);
      
      $(window).on('resize',function(){
         height=$(window).height();
         width=$(window).width();
         
         $('#mainCard1').css('height',height);
         $('#mainCard2').css('height',height);
         $('#mainCard3').css('height',height);
         setMargin(width);
      });
   //메인페이지의 카드 높이 조절용 끝//
      
   /*알림 권한 허용
   window.addEventListener('load', function () {
      Notification.requestPermission(function (status) {
         var token = $("meta[name='_csrf']").attr("content");
         if (Notification.permission !== status) {
            Notification.permission = status;
         }
         else {
            
            (function poll(){
            	console.log("long polling 확인");
            	$.ajax({
                  url:'/workout/webnotification.do?_csrf='+token,
                  type:'post',
                  success: function(data) {
                     
                     var obj=JSON.parse(data);
                     
                     if(obj['Notification'] != ""){
                        var notification = new Notification(obj['Notification']);
                     }
                     
                   },
                   timeout: 3000,
                   complete: setTimeout(function() { poll(); }, 6000)
            	})
            })();
         }
      });      
   });*/////// 알림   
});

//마진속성 주는 function//
function setMargin(width){
   //margin 속성 주기 시작//
   
   if(width<1200) {
      $('#mainCard2').css("margin","0");
      $('#mainCard3').css("margin","0");
      if(width<=414){
         $('#top_padding_margin').removeClass('mt-5');
         $('#top_padding_margin').removeClass('pt-5');
         $('#top_padding_margin').addClass('mt-3');
         $('#message').addClass('mt-5');
         if(width<=375){
            $('#title').removeClass('display-2');
            $('#title').addClass('display-3');
            $('#join-row').removeClass('mt-5');
         }
         else{
            $('#title').addClass('display-2');
            $('#title').removeClass('display-3');
         }
      }
      else{
         $('#top_padding_margin').removeClass('mt-3');
         $('#top_padding_margin').addClass('mt-5');
         $('#top_padding_margin').addClass('pt-5');
      }
   }
   if(width>=1200){
      $('#mainCard2').css("margin-left","10%");
      $('#mainCard2').css("margin-right","10%");
      $('#mainCard3').css("margin-left","10%");
      $('#mainCard3').css("margin-right","10%");
   }
}
//마진속성 주는 function//