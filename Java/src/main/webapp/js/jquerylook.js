 $(function(){
	 $("button").each(function(i){
		 var a=0;
		 $("#"+this.id+"").click(function(){
			 a++;
			if(a%2==0){
				$("."+this.id+"").css("display","none");
			}else{			
				$("."+this.id+"").css("display","block");
			}
		});
		 
		 var val=$("#"+this.id+"").val();;
		 $("#"+this.id+"").click(function(){
			 $.ajax({
				
				   type: "POST",
				   url: "MessageDelete.do",
				   data: "categoryId="+val+"",
				   success: function(data){
				     if(data="user"){
				    	 window.location.reload();
				     }else{
				    	 alert("删除失败");
				     }
				   }
				});
		
		});
		
		 });
	 
	 $("#positio").change(function(){
		 
		 alert($("#positio").val());
		 $.ajax({
			   type: "POST",
			   url: "twoselect.do",
			   data: "positio=$('#positio').val()",
			   success: function(data){
			   
			   }
			});
		 
	 });
	 });