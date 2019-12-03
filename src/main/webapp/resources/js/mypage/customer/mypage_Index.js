$(function() {
   var durl = window.location.hash;
   console.log(durl);
   if (durl !='') {
      $(durl).tab('show');
   }
   $('#mate_select').click(function(){
      $('#pills-mate-tab').tab('show');
   });
   $('#msg_plus').click(function(){
      $('#pills-mate-tab').tab('show');
   });
   
   
});