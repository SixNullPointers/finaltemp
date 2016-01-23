    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    <html>  
    <head>  
    <title>Spring Hello World</title>  
    <style>  
    body {  
     font-size: 20px;  
     color: teal;  
     font-family: Calibri;  
    }  
      
    td {  
     font-size: 15px;  
     color: black;  
     width: 100px;  
     height: 22px;  
     text-align: left;  
    }  
      
    .heading {  
     font-size: 18px;  
     color: white;  
     font: bold;  
     background-color: orange;  
     border: thick;  
    }  
    </style>  
    </head>  
    <body>  

      <div>  
       <form method="Post" action="insert" modelAttribute="user">  
        <table>  
         <tr>  
          <td>First Name :</td>  
          <td><input type="text" name ="firstName"/></td>  
         </tr>  
         <tr>  
          <td>Last Name :</td>  
          <td><input type="text" name="lastName" /></td>  
         </tr>  
         <tr>  
          <td>Gender :</td> 
          <c:forEach  items="${map.genderList}" var='list'>
          <td><input type="radio" name="gender"  value="${list}"/>${list }</td>
          </c:forEach> 
         
         </tr>  
         <tr>  
          <td>City :</td>  
          <td><select name="city">
          <option value="All" selected="true">All</option>
          <c:forEach items='${map.cityList}' var='list'>
          <option value="{list}">${list}</option>
          
          
          </c:forEach>
          
          </select></td>  
         </tr>  
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Save" /></td>  
         </tr>  
         <tr>  
            
          <td colspan="2"><a href="getList">Click Here to See User List</a></td>  
         </tr>  
        </table>  
       </form>  
      </div>  
      
    </body>  
    </html>  