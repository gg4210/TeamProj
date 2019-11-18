$(function(){
//마커를 담을 배열입니다
var mapheight=$(window).height();	

//map 높이를 동적으로 가져가기 위한 로직 시작
$('.map_wrap').css('height',mapheight);
$(window).on('resize',function(){
	$('.map_wrap').css('height',mapheight);
});
//map 높이를 동적으로 가져가기 위한 로직 끝
	
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 커스텀 오버레이를 생성합니다
var customOverlay = new kakao.maps.CustomOverlay();

// 키워드로 장소를 검색합니다
searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {
	
	url=window.location.href;
    var keyword=getParameterByName("searchWord");
    
    //키워드를 배열로 만들어서 for문 돌리고 나온 데이터 쌓기    
    
    if (!keyword.replace(/^\s+|\s+$/g, '')) {
    	//setWarningModal('키워드를 입력해주세요!');
    	//warningModalOpen();
        return false;
    }
    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch(keyword, placesSearchCB);
    
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
    	//setWarningModal('검색 결과가 존재하지 않습니다.');
        //$('#warningModal').modal();
    	warningModalOpen();
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {
    	//setWarningModal('검색 결과 중 오류가 발생했습니다.');
        //$('#warningModal').modal();
    	warningModalOpen();
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

	console.log(places);
	
    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {
    	
    		//console.log(places[i].category_name);
    	
	    	//스포츠,레저 > 스포츠시설 > 스포츠센터 			"스포츠센터"
	    	//스포츠,레저 > 요가,필라테스 > 필라테스 		"필라테스"
	    	//스포츠,레저 > 스포츠시설 > 헬스클럽			"헬스클럽"
	    	//스포츠,레저 > 클라이밍 						"클라이밍"
	    	//스포츠,레저 > 복싱,권투 > 복싱,권투장			"복싱"
	    	//스포츠,레저 > 스포츠시설 > 에어로빅 			"에어로빅"
	    	//스포츠,레저 > 골프 > 골프장 					"골프장"
    		//스포츠,레저 > 수영,수상 > 수영장 				"수영장"
    	
    		//console.log(places[i].category_name.indexOf("스포츠,레저"));
    	
	        	// 마커를 생성하고 지도에 표시합니다
		        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
		        	marker = addMarker(placePosition, i), 
		            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
    		
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        bounds.extend(placePosition);
    		
		        // 마커와 검색결과 항목에 클릭 했을때
		        // 해당 장소에 커스텀 오버레이에 장소명을 표시합니다
		        // 토글속성을 부여하였습니다
		        
		        (function(marker, title, address, road_address, phone, id,x,y) {
		            kakao.maps.event.addListener(marker, 'click', function() {
		            	displayCustomOverlay(marker, title, address, road_address, phone, id,x,y);
		            });
		
		            itemEl.onclick =  function () {
		            	displayCustomOverlay(marker, title, address, road_address, phone, id,x,y);   	
		            };          
		            
		        })(marker, places[i].place_name, places[i].address_name, places[i].road_address_name, places[i].phone, places[i].id, places[i].x,places[i].y);
		
		        fragment.appendChild(itemEl);
    		
    }

    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('button'),
    itemStr = '<div class="place_name">' +
                '<h6>' + places.place_name + '</h6>'+
                '</div>';
    el.innerHTML=itemStr;
    el.className='list-group-item list-group-item-action';
    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

//검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
 var paginationEl = document.getElementById('pagination'),
     fragment = document.createDocumentFragment(),
     i; 
 
 // 기존에 추가된 페이지번호를 삭제합니다
 while (paginationEl.hasChildNodes()) {
     paginationEl.removeChild (paginationEl.lastChild);
 }

 for (i=1; i<=pagination.last; i++) {
    var li = document.createElement('li');
     li.className="page-item";
     li.innerHTML='<a class="page-link">'+i+'</a>';


     if (i===pagination.current) {
        li.className="page-item active";
     } 
     else {
         li.onclick = (function(i) {
             return function() {
                 pagination.gotoPage(i);
             }
         })(i);
     }
     fragment.appendChild(li);//fragment에 a태그를 한줄씩 붙임
 }
 paginationEl.appendChild(fragment);
}


// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다

function displayCustomOverlay(marker, title, address, road_address, phone, id, x, y) {
	
	
	
	if(customOverlay.getMap()!=null){
	    customOverlay.setMap(null);
	    return;
	}
	
   var content = 
   '<div class="wrap card" id="customOverlay_content">' + 
   '<div class="row no-gutters">'+
   '  <div class="col-md-4">'+
   '    <img src="https://www.stylermag.co.kr/wp-content/uploads/2018/11/1-23.jpg" class="card-img" alt="...">'+
   '  </div>'+
   '  <div class="col-md-8">'+
   '  	<div class="card-header indigo">' +
   '	<div class="row">'+
   '	<div class="clearfix col">'+
   '		<form action="/workout/searchView.do" method="post" id="info_form">'+
   '			<input type="hidden" name="title" value="'+title+'">'+
   '			<input type="hidden" name="mapkey" value="'+id+'">';
   if(road_address!=null){
   content+='	<input type="hidden" name="addr" value="'+road_address+'">'+
   			'	<input type="hidden" name="jibunAddr" value="'+address+'">';
   }
   else{
	   content+='<input type="hidden" name="jibunAddr" value="'+address+'">';
   }
   		content+='<input type="hidden" name="tel" value="'+phone+'">'+
   '      		<a class="h6 float-left text-white" href="javascript:info_form.submit()" id="title">'+title+'</a>'+
   '			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>'+
   '		</form>'+   
   '		<div class="float-right">'+
   '			<button type="button" class="close text-white" aria-label="Close">'+
   '				<span aria-hidden="true">&times;</span>'+
   '			</button>'+
   '		</div>'+
   '    </div>' + 
   '    </div>' + 
   '    </div>' + 
   '    <div class="card-body p-0 px-2 py-1">'+
   '      <img src="https://img.icons8.com/color/48/000000/open-sign.png">'+
   '      <img src="https://img.icons8.com/color/48/000000/close-sign.png">';
	if(road_address!=null){
		content+='<div>'+address+'</div>' + 
				 '<div>'+road_address+'</div>';
	}
	else{
		content+='<div class="ellipsis">'+address+'</div>';

	}
   content+='<span class="tel">'+phone+'</span>' +
   '      <p class="mb-0">[평일] 06:00 ~ 24:00</p>'+
   '      <span id="rateMe">'+
   '      	<i class="fas fa-star py-0 rate-popover amber-text" data-index="0" data-html="true" data-toggle="popover" data-placement="top" title="Very bad"></i>'+
   '      	<i class="fas fa-star py-0 rate-popover amber-text" data-index="1" data-html="true" data-toggle="popover" data-placement="top" title="Poor"></i>'+
   '      	<i class="fas fa-star py-0 rate-popover amber-text" data-index="2" data-html="true" data-toggle="popover" data-placement="top" title="OK"></i>'+
   '      	<i class="fas fa-star py-0 rate-popover amber-text" data-index="3" data-html="true" data-toggle="popover" data-placement="top" title="Good"></i>'+
   '      	<i class="fas fa-star py-0 rate-popover amber-text" data-index="4" data-html="true" data-toggle="popover" data-placement="top" title="Excellent"></i>'+
   '      </span>(0.0)'+     
   '      <div class="row">'+
   '		<div class="col">'+
   '            <h7 class="progress-title">혼잡도</h7>'+
   '            	<div class="progress orange">'+
   '	                <div class="progress-bar" style="width:70%; background:#fe3b3b;">'+
   '	                    <div class="progress-value">70%</div>'+
   '	                </div>'+
   '	            </div>'+
   '	    </div>'+
   '	  </div>'+
   '      <p class="card-text">현재 51명이 이용중입니다</p>'+
   '    </div>'+
   '  </div>'+
   '</div>'+
   '</div>'+    
   '</div>';

   

    customOverlay = new kakao.maps.CustomOverlay({
		    	    content: content,
		    	    clickable: true,
		    	    map: map,
		    	    position: marker.getPosition(),
		    	    zIndex: 1
		    	});
    
    var heightOverlay=$('#customOverlay_content').height();    
    $('.card-img').css('height',heightOverlay);
    customOverlay.setMap(map);
    
    //커스텀 오버레이가 생성될 때, 지도를 커스텀 오버레이가 위치한 곳으로 이동.
    var replacePosition = new kakao.maps.LatLng(y,x);
    map.panTo(replacePosition);

    
    $('.close').click(function(){
    	//클로즈 클릭시 
    	customOverlay.setMap(null);
    });
    

}


 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}



//parameter 값으로 처음 검색어를 받았을 때 그 값을 받기위한 함수입니다.
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}


//모달창을 위한 클래스
function warningModalOpen(){
	$('#warningModal').modal('show');
}
	
	

});


