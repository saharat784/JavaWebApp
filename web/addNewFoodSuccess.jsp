<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Food" %>
<!DOCTYPE html>
<html>
    <body>
        <!-- get session object movie -->
        <% Food food = (Food) session.getAttribute("food");%>
        <p>อาหารที่เพิ่มแล้ว</p>
        id: <%=food.getId()%><br/>
        ชื่อ: <%= food.getName()%><br/>        
        ประเภท: <%= food.getType()%><br/>
        รสชาติ: <%=food.getTaste()%><br/>
        ราคา: <%=food.getPrice()%><br/>
        <a href="updateFood.jsp">แก้ไขข้อมูลอาหาร</a>
    </body>
</html>
