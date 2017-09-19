<%--
Document   : index
Created on : 25/08/2017, 10:24:33
Author     : Rodrigo Cardoso
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
int array [] = new int [6];
Random num = new Random();

int i = 0;
boolean test = true;

while(i<array.length){
  int aux = num.nextInt(60)+1;
  if(i>0){
    for(int compare : array){
      if (compare == aux) {
        test = false;
      }
    }
  }
  if(test!=false){
    array[i++] = aux;
    aux = 0;
  }
}
Arrays.sort(array);
%>
<!DOCTYPE html>
<html>
  <head>
    <link href="css/odometer-theme-car.css" rel="stylesheet" type="text/css"/>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <script src="js/odometer.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Mega Sena</title>

      <script>
        var j = <%=Arrays.toString(array)%>;
        var k = function(id, i){
          var o = document.getElementById(id);
          setTimeout(function(){
            var str, str2;
            if (j[i] < 10) {
              str = "0"+j[i];
              str2 = "1"+ str +"1";
            }else{
              str2 = "1"+ j[i] +"1";
            }
          o.innerHTML = str2;
          //console.log(str2);
          }, 1000);
        };
        var onLoad = function(){
          for (var i = 0; i < j.length; i++) {
            k("odometer"+i, i);
          }
        };
      </script>
    </head>
    <body onload="onLoad()" class = "corpo">
      <h1 class = "titulo">Seu gerador de numeros da sorte!!</h1>
        <div id="odometer0" class="odometer">99</div>
        <div id="odometer1" class="odometer">99</div>
        <div id="odometer2" class="odometer">99</div>
        <div id="odometer3" class="odometer">99</div>
        <div id="odometer4" class="odometer">99</div>
        <div id="odometer5" class="odometer">99</div>
    </body>
  </html>
