 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 </div>
  </div>
  
      <script>
      
    	  
      $("input[name='productQty']").TouchSpin({
          min: 0,
          max: 100,
          stepinterval: 50,
          maxboostedstep: 100
      });
      
      
      var app = angular.module('myApp',['ngRoute']);
     
      
      app.controller('myController', ['$scope','$http', function($scope,$http) {
    	  

    	  $scope.items = [];
          
          materialList = $.parseJSON('${producties}')
          
          for (var int = 0; int < materialList.length; int++) {
        	  (materialList[int])["qty"] = 1;
        	  $scope.items.push(materialList[int])
    		}
          
          console.log($scope.items);
          
          $scope.total = function() {
              var total = 0;
              angular.forEach($scope.items, function(item) {
                  total += item.qty * item.discountPrice;
              })

              return total;
          }
          
          $scope.totalCart = function() {
              var totalCart = 0;
              angular.forEach(finishShop, function(item) {
                  total += item.qty * item.discountPrice;
              })

              return totalCart;
          }
          
          $scope.totalItens = function() {
              var totalItens = 0;
              angular.forEach($scope.items, function(item) {
                  totalItens += item.qty;
              })

              return totalItens;
          }
          
          
          $scope.addItem = function () {
        	  
        	  if(!($scope.items == [])){
        		  
        		  angular.forEach($scope.items, function(item) {
                      totalItens += item.qty;
                  })
        		  
        		  
    		       $scope.items.push({
    		          materialId: itemId,
    		          ecode: itemEcode,
    		          value: unitValue.replace("$","").replace(",","").replace(",",""),
    		          currency: itemCurrency,
    		          quantity: itemQuantity
    		       });
    		       
        	  }else{
        		  alert("There is no items in the cart.");
        		   }  
        	  
         };
         
         $scope.submit = function() {
        	 if ($scope.items.length != 0) {
        		 var date = JSON.stringify($scope.items);
        	 $http({
        	        method: 'POST',
        	        url: 'finish-shop',
        	        data: date,
        	        async: false
        	        
        	    }).then(function (response) {
        	    	$( '#cartForm' ).hide();
        	    	$( '.header' ).hide();
        	    	
        	    	$scope.finishShop = response.data;
        	    	$( '#finishedForm' ).show();
        	    	
        	    	
        	    	
        	    })
    		} else alert("Applied Material List is empty!");
        	    
         };
    	  
      }]);
      
      app.$inject = ['$scope', '$http'];
      
      
      
      
      </script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="static/bootstrap/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="static/js/custom.js" />"></script>
  </body>
</html>