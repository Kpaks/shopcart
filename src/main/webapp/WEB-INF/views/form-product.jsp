<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="includes/header.jsp" %>

<div class="col-md-8">
		  	<div class="row">

		  				<div class="col-md-12">
		  					<div class="content-box-header">
			  					<div class="panel-title">Product Register</div>
				  			</div>
				  			<div class="content-box-large box-with-header">
				  				<form action="insert" method="POST" modelAttribute="product">
				  						<div class="row">
				  						</div>
									  <div class="form-group">
									    <label for="name">Product: </label>
									    
									    <div class="input-group">
				                                    <span class="input-group-addon"><i class="fa fa-product-hunt"></i></span> 
									    			<input type="text" class="form-control"  name="name" placeholder="Enter product name" required>
		                                </div>
									    <small id="emailHelp" class="form-text text-muted">Don't forget the product name.</small>
									  </div>
									  
									  <div class="form-group">
									    <label for="area">Price: </label>
									  	<div class="input-group">
									  	<span class="input-group-addon"><i class="fa fa-usd"></i></span> 
									    <input type="number" class="form-control" id="price" name="price" placeholder="Enter product price" required>
									    </div>
									  </div>
									  <button type="submit" class="btn btn-primary">Submit</button>
									</form>
												  			


							</div>
		  				</div>
		  	</div>


		  </div>
		  
<%@ include file="includes/footer.jsp" %>