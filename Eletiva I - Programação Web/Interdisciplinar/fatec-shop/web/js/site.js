(function(){
	$("#logar").click(function(){	
		$("#login").show();		
	});

	$("#registro").click(function(){
		//$("#login").modal('hide');				
		$("#registrar").show();				
	});

	$("#confimar-login").click(function(){

		var senha = $("#psw").val();
		var usuario = $("#usrname").val();

		bootbox.alert("Olá " + usuario);
		$("#login").modal('toggle');	
	});

	$("#cart").click(function() {
		$(".shopping-cart").fadeToggle( "fast");
	});	
})();