<%-- 
    Document   : updateFood
    Created on : Jul 18, 2024, 12:04:00 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Food" %>
<!DOCTYPE html>
<html>
    <body>
        <% Food food = (Food) session.getAttribute("food");%>
        <p>แก้ไขข้อมูลอาหาร</p>
        <form action="AddNewFoodServlet">
            <input type="text" name="id" value="<%= food.getId()%>"><br/>
            <input type="text" name="foodName" value="<%= food.getName()%>"><br/>                      
            
            <label for="foodType"></label><br/>
            <select id="foodType" name="foodType">
                <option value="<%=food.getType()%>">ข้าว</option>
                <option value="<%=food.getType()%>">เเกง</option>
                <option value="<%=food.getType()%>">ก๋วยเตี๋ยว</option>
                <option value="<%=food.getType()%>">ของหวาน</option>
            </select><br/>
            
            <br/><input type="radio" id="notSpicy" name="taste" value="<%=food.getTaste()%>" required>
            <label for="notSpicy">ไม่เผ็ด</label>
            <input type="radio" id="littleSpicy" name="taste" value="<%=food.getTaste()%>">
            <label for="littleSpicy">เผ็ดน้อย</label>
            <input type="radio" id="verySpicy" name="taste" value="<%=food.getTaste()%>">
            <label for="verySpicy">เผ็ดมาก</label><br/>
            
            <input type="text" name="foodPrice" value="<%=food.getPrice()%>"><br/>
           
            <input type="submit" value="แก้ไข">            
        </form>
        <% session.removeAttribute("food"); %>
    </body>
</html>
