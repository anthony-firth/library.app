<html>
<head>
	<title>Library App</title>
	<link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css' />
	
	
</head>

<body>
 
	<div class="bs-example">
	  
		<div class="bootstrap-table" style="width: 600px; border: 1px; float: left; padding: 20px">

	  		<h3>People</h3>

			<table class="table table-hover" id="people-table">
				<tr>
					<th>Name</th>  
					<th>Phone</th>  
					<th>Email</th> 
				</tr>
				
				<#list model["peopleList"] as person>
				<tr data-toggle="modal" data-id="${person.id}" data-target="#loansModal">
					<td>${person.name}</td> 
					<td>${person.phone}</td> 
					<td>${person.email}</td> 					
				</tr>
				</#list>
				
			</table>
	 	
		</div>		
	</div>
	  
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="Books on loan">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        			<h4 class="modal-title" id="myModalLabel">Books on loan</h4>
      			</div>
      			<div class="modal-body">
					<table class="table table-hover table-bordered" id="loans-table">
						<tr>
							<th>Title</th>
							<th>Author</th>
							<th>ISBN</th>
						</tr>
					</table>	
      			</div>
      			    
	        	<div class="modal-footer">
        			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		     	</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script>
	$(function(){
	    $(".table-hover").find('tr[data-target]').on('click', function(){
	        
	        request = $.ajax({ 
	        	url: "/getLoans",
	        	data: { personId: $(this).data('id') }, 
	        	dataType: "json"
	        });

    		request.done(function (response, textStatus, jqXHR){
        		
        		$('#loans-table').find("tr:gt(0)").remove();
        		
        		for(var i=0;i<response.length;i++)
			    {
			        var tr="<tr>";
			        var td1="<td>"+response[i]["title"]+"</td>";
			        var td2="<td>"+response[i]["author"]+"</td>";
			        var td3="<td>"+response[i]["isbn"]+"</td></tr>";
			
			       $("#loans-table").append(tr+td1+td2+td3); 
			
			    }   
    		});	        
	        
	        $('#myModalLabel').html('Books on loan for ' + $(this).find('td:first').text());
	        
	        $('#myModal').modal('show');	         
	    });
	    
	});
	</script>	
		  
</body>
</html>  