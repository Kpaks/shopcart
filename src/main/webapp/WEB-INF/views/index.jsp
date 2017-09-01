<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="includes/header.jsp" %>

<div class="col-md-8">

			<div class="row">
				
				<div class="col-md-10 p-l-4">
					<h3>My cart: ({{totalItens()}} items)</h3>
				</div>
			</div>
				<form data-ng-submit="submit()" name="myForm">
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
						  					<div class="col-md-2 pull-right">
						  					 <h4>{{total() | currency}}</h4>
						  					</div>
					  						<div class="col-md-3 pull-right">
						  					<h4>SubTotal ({{totalItens()}} Item(s)):</h4>
						  					</div>
				  					</div>
							</div>
		  				</div>
				  					<div class="row">
						  					<div class="col-md-12">
				  					<button type="submit" class="btn btn-success  pull-right m-r-2">Finalizar Compra</button>
						  					</div>
				  					</div>
				  		</form>
		  	</div>
		  </div>
		  
		  <div class="row" id="finishedForm" hidden>
		  		<div class="col-md-2">
		  		</div>
		  		<div class="col-md-8 content-box-large">
				  			<div class="col-md-12 text-center">
				  				<h3>Pedido Realizado com Sucesso</h3>
				  			</div>
				  			<h3>Resumo do Pedido</h3>
				  			<div class="col-md-12">
				  				<div class="col-md-6">
				  					<p>Número do pedido: 1248895478</p>
				  				</div>
				  				<div class="col-md-6">
				  					Valor: {{total() | currency}}
				  				</div>
				  			</div>
				  			<div class="col-md-12">
				  				<div class="col-md-6">
				  					<div class="col-md-12">
				  					<strong>Seus Dados</strong>
				  					</div>
				  					<div class="col-md-12">
				  					John Doe
				  					</div>
				  				</div>
				  				<div class="col-md-6">
				  					<div class="col-md-12">
				  					<strong>Endereço de Entrega</strong>
				  					</div>
				  					<div class="col-md-12">
				  					Rua Mirassol - 777, Bosque dos Eucaliptos
				  					</div>
				  				</div>
				  			</div>
				  			<div class="col-md-12">
				  			<p>  </p>
				  			</div>
				  			<div class="col-md-12">
				  				<div class="col-md-12">
				  					<strong>Entrega</strong>
				  				</div>
				  				<div class="col-md-12 pull-right">
				  					<p class="pull-right">Entrega em até 4 dias</p> 
				  				</div>
				  				<div ng:repeat="item in finishShop">
				  					<div class="col-md-6">
				  					<p>{{item.name}}</p> 
				  					</div>
				  					<div class="col-md-6">
				  					<p class="pull-right">{{item.qty}}</p> 
				  					</div>
				  				</div>
				  			</div>
				  			
				  				
		  				</div>
		  				<div class="col-md-2" >
		  		</div>
		  </div>
<%@ include file="includes/footer.jsp" %>