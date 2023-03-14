/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Logger;
import model.Food;
import model.FoodCategory;

/**
 *
 * @author PC
 */
public class FoodDAO extends DBContext{
     private Logger LOGGER = Logger.getLogger(Food.class.getName());

    PreparedStatement stm;
    ResultSet rs;

    public ArrayList<Food> findAll(int categoryId, int page, int num) {
        ArrayList<Food> foods = new ArrayList<>();
        try {
            String sql = "select f.*, fc.* from Food f, FoodCategory fc\n"
                    + "where f.foodCategoryId = fc.foodCategoryId\n"
                    + (categoryId != 0 ? "and fc.foodCategoryId = ? " : "")
                    + "order by f.foodID\n"
                    + "offset (?-1)*? rows\n"
                    + "fetch next ? rows only";
            stm = connection.prepareStatement(sql);
            if (categoryId != 0) {
                stm.setInt(1, categoryId);
                stm.setInt(2, page);
                stm.setInt(3, num);
                stm.setInt(4, num);
            } else {
                stm.setInt(1, page);
                stm.setInt(2, num);
                stm.setInt(3, num);
            }
            rs = stm.executeQuery();
            while (rs.next()) {
                Food f = new Food();
                f.setFoodId(rs.getInt(1));
                f.setFoodName(rs.getString(2));
                f.setPrice(rs.getDouble(3));
                f.setQuantity(rs.getInt(4));
                f.setFoodImage(rs.getString(5));
                f.setFoodCategory(new FoodCategory(rs.getInt(7), rs.getString(8)));
                foods.add(f);
            }
        } catch (SQLException e) {
        }
        return foods;
    }

    public int countAll(int categoryId) {
        try {
            String sql = "select count(*) from Food f, FoodCategory fc\n"
                    + "where f.foodCategoryId = fc.foodCategoryId\n"
                    + (categoryId != 0 ? "and fc.foodCategoryId = ?" : "");
            stm = connection.prepareStatement(sql);
            if (categoryId != 0) {
                stm.setInt(1, categoryId);
            }
            rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }

    public ArrayList<FoodCategory> findAllFoodCategory() {
        ArrayList<FoodCategory> categories = new ArrayList<>();
        try {
            String sql = "select * from FoodCategory";
            stm = connection.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                categories.add(new FoodCategory(rs.getInt(1), rs.getString(2)));
            }
        } catch (SQLException e) {
        }
        return categories;
    }

   
    
}
