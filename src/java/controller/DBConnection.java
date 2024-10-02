package controller;

import java.sql.*;
import model.Food;

public class DBConnection {

    public boolean insertNewStore(Food food) {
        boolean result = false;
        Connection connection = null;
        Statement statement = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/godshop",
                    "root", "");

            statement = connection.createStatement();

            // แปลง array ของตัวกรองเป็น String ที่คั่นด้วย semicolon          

            String query = "INSERT INTO food "
                    + "(id,foodName,foodType, foodTaste, foodPrice) "
                    + "VALUES('" +food.getId()+"', '"
                    + food.getName() + "', '"
                    + food.getType() + "', '"
                    + food.getTaste() + "', '"
                    + food.getPrice() + "')"+"ON DUPLICATE KEY UPDATE foodName = VALUES(foodName),foodType = VALUES(foodType),foodTaste = VALUES(foodTaste),foodPrice = VALUES(foodPrice)";
            System.out.println("........SQL: " + query);

            int i = statement.executeUpdate(query);
            if (i != 0) {
                result = true;
            }
        } catch (ClassNotFoundException | SQLException e) {
        } finally {
            // ปิด statement และ connection
            try {
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
            }
        }
        return result;
    }
}
