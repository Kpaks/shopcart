<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="includes/header.jsp" %>

<div class="col-md-8">
		  	<div class="row">

		  				<div class="col-md-12">
		  					<div class="content-box-header">
			  					<div class="col-md-6 pull-left">Item(s)</div>
			  					<div class="col-md-2  text-center">Price</div>
			  					<div class="col-md-2  text-center">Quantity</div>
			  					<div class="col-md-2 "><span class="pull-right">SubTotal</span></div>
				  			</div>
				  			<div class="content-box-large box-with-header">
				  				<div ng:repeat="item in items">
				  						
				  						
				  						<div class="row">
							                <div class="col-md-2">
							                </div>
							                <div class="col-md-4">
							                    <h2 class="media-heading">{{item.name}}
							                        </h2>
							                    <p>Entretenimento Eletrônico</p>
							                </div>
							                <div class="col-md-2">
							                    <h2 class="media-heading center-block text-center">
							                        <span class="badge "> De R$ {{item.price}}</span></h2>
							                        <h2 class="media-heading center-block text-center">
							                        <span class="badge "> Por R$ {{item.discountPrice}}</span></h2>
							                </div>
							                
							                <div class="col-md-2 text-center spinner-div">
							                    <div class="">
									               <input class="spinner" type="number" ng:model="item.qty" min="0" max="20"> 
									            </div>
												<div class="text-center">
												    <a href="<c:url value="/delete?id={{item.id}}"/>"><span >Remover</span></a>
												    </div>    
							                </div>
							                <div class="col-md-2">
							                	<h2 class="media-heading center-block text-center">
							                        <span class="badge ">{{item.qty * item.discountPrice | currency}}</span></h2>
							                </div>
							            </div>
							            
							            <hr>
				  					</div>
				  					
				  					<div class="row">
					  					<div class="col-md-3 pull-right">
					  					Valor Total: {{total() | currency}}
					  					</div>
				  						<div class="col-md-2 pull-right">
					  					Item(s): {{totalItens()}}
					  					</div>
				  					</div>
							</div>
		  				</div>
		  	</div>


		  </div>
		  
<%@ include file="includes/footer.jsp" %>