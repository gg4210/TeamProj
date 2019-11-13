/**
	**options to have following keys:
		**searchText: this should hold the value of search text
		**searchPlaceHolder: this should hold the value of search input box placeholder
**/
(function($){
	$.fn.tableSearch = function(options){
		if(!$(this).is('table')){
			return;
		}
		var tableObj = $(this),
			searchText = (options.searchText) ? options.searchText : 'Search: ',
			searchPlaceHolder = (options.searchPlaceHolder) ? options.searchPlaceHolder : '검색어를 입력하세요',
			divObj = $('<div style="float:right">'+searchText+''),
			inputObj = $('<input class="form-control" type="text" placeholder="'+searchPlaceHolder+'" /></div>'),
			caseSensitive = (options.caseSensitive === true) ? true : false,
			searchFieldVal = '',
			pattern = '';
		inputObj.off('keyup').on('keyup', function(){
			searchFieldVal = $(this).val();
			pattern = (caseSensitive)?RegExp(searchFieldVal):RegExp(searchFieldVal, 'i');
			tableObj.find('tbody tr').hide().each(function(){
				var currentRow = $(this);
				currentRow.find('td').each(function(){
					if(pattern.test($(this).html())){
						currentRow.show();
						return false;
					}
				});
			});
		});
		
		tableObj = tableObj.before(divObj.append(inputObj));
		return;
	}
}(jQuery));