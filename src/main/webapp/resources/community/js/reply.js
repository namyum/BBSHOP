console.log("Reply Module.....");

var replyService = (function(){
	
	function add(reply, callback, error){
		console.log("add reply......");
		
		$.ajax({
			type: 'post',
			url : '/replies/new.do',
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(Result, status, xhr) {
				if(callback) {
					callback(result);
				}
			},
			error: function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		})
	}
	
	function getList(param, callback, error){
		
		var board_num = param.board_num;
		
		var page = param.PAGENUM || 1;
		
		$.ajax({
			url: "/replies/pages/"+ board_num + "/" + page + ".do",
			type: 'get',
			dataType: "json",
			contentType: 'application/x-www-form-urlencoded;charset=utf-8',
			success: function(data){
				if(callback){
					callback(data);
				}
			},
			error: function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		})
	}
	
	function remove(reply_num, callback, error){
		
		$.ajax({
			type : 'delete',
			url : '/replies/' + reply_num + ".do",
			success : function(deleteResult, status, xhr) {
				if(callback){
					callback(deleteResult);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
	}
	
	function update(reply, callback, error){
		
		console.log("reply_num: " + reply.reply_num);
		
		$.ajax({
			type : 'put',
			url : '/replies/' + reply.reply_num + ".do",
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				if(callback){
					callback(result);
				}
			}
		});
	}
	
	function get(reply_num, callback, error){
		
		$.ajax({
			url: "/replies/"+ reply_num + ".do",
			type: 'get',
			dataType: "json",
			contentType: 'application/x-www-form-urlencoded;charset=utf-8',
			success: function(result){
				if(callback){
					callback(result);
				}
			},
			error: function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
	}
	
	return {
		add:add,
		getList:getList,
		remove : remove,
		update : update,
		get : get
	};
})();