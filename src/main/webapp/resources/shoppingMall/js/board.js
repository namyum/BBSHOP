console.log("board module...");

var boardService = (function() {
	
	function add(board, callback, error) {
		
		console.log("add board.....");
		
		$.ajax({
			
			type : 'post',
			url : '/savings.do',
			data : JSON.stringify(board),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		})
	}
	
	return {
		add : add
	};
	
})();