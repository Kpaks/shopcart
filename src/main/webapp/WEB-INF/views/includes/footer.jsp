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
     
      
      app.controller('myController', ['$scope',function($scope) {
    	  
    	  

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
          
          $scope.totalItens = function() {
              var totalItens = 0;
              angular.forEach($scope.items, function(item) {
                  totalItens += item.qty;
              })

              return totalItens;
          }
    	  
      }]);
      
      
      
      
      
      </script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="static/bootstrap/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="static/js/custom.js" />"></script>
  </body>
</html>