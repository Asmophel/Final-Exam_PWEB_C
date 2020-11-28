<html>
    <head>
        <title>Login System</title>
    </head>
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <body>
        <%
        String email=(String)session.getAttribute("email");
        
        //redirect user to home page if already logged in
        if(email!=null){
            response.sendRedirect("EmployeeController?action=LIST");
        }
 
        String status=request.getParameter("status");
        
        if(status!=null){
        	if(status.equals("false")){
        		   out.print("Incorrect login details!");	           		
        	}
        	else{
        		out.print("Some error occurred!");
        	}
        }
        %>
    
        <div class="container">
        	<form action="loginprocess" method="post"> 
       		<div class="card">
	        	<div class="card-header text-left font-weight-bold">
	        		Register
	        	</div>  
                    
	        	<div class="card-body">
	        		 
	                    <div class="form-group">
	                    	<input type="text" name="email" class="form-control" name = "email" placeholder="Enter Email" value = "${employee.email}"/>
	                    </div>
	                	<div class="form-group">
	                		<input type="password" name="password" class="form-control" name = "password" placeholder="Enter password" value = "${employee.email}"/>
	                	</div>
	        		
	        	</div>
	        	<div class="card-footer text-left">    
                                <button type = "submit" class = "btn btn-primary">Save</button>
	        	</div>
       		</div>
        	</form>
        </div>
    </body>
</html>