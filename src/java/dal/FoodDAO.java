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
import model.ListFood;
import utils.CartList;

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
    public Food findById(int id) {
        try {
            String sql = "select f.*, fc.* from Food f, FoodCategory fc\n"
                    + "where f.foodCategoryId = fc.foodCategoryId and  f.foodID = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            while (rs.next()) {
                Food f = new Food();
                f.setFoodId(rs.getInt(1));
                f.setFoodName(rs.getString(2));
                f.setPrice(rs.getDouble(3));
                f.setQuantity(rs.getInt(4));
                f.setFoodImage(rs.getString(5));
                f.setFoodCategory(new FoodCategory(rs.getInt(7), rs.getString(8)));
                return f;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public boolean insertFoodOrder(CartList cartList, int bookingId) {
        try {
            String sql = "insert into List_Food_Order values (?,?,?)";
            String sql1 = "update Food \n"
                    + "set quantity = ?\n"
                    + "where foodID = ?";
            stm = connection.prepareStatement(sql);
            PreparedStatement stm1 = connection.prepareStatement(sql1);
            for (ListFood value : cartList.getCarts().values()) {
                stm.setInt(1, bookingId);
                stm.setInt(2, value.getFood().getFoodId());
                stm.setInt(3, value.getQuantity());
                stm1.setInt(1, value.getFood().getQuantity() - value.getQuantity());
                stm1.setInt(2, value.getFood().getFoodId());
                stm.executeUpdate();
                stm1.executeUpdate();
            }
            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }
       public boolean updateFood(Food f) {
        try {
            String sql = "update Food\n"
                    + "set name = ?, price = ?, quantity = ?, foodImage = ?, foodCategoryId =? \n"
                    + "where foodID = ?";
            stm = connection.prepareStatement(sql);
            stm.setNString(1, f.getFoodName());
            stm.setDouble(2, f.getPrice());
            stm.setInt(3, f.getQuantity());
            stm.setString(4, f.getFoodImage());
            stm.setInt(5, f.getFoodCategory().getFoodCategoryId());
            stm.setInt(6, f.getFoodId());
            stm.executeUpdate();
            return true;
        } catch (SQLException e) {
            return false;
        }
    }
    public boolean insertFood(Food f) {
        try {
            String sql = "insert into Food (name, price, quantity, foodImage, foodCategoryId)\n"
                    + "values (?,?,?,?,?)";
            stm = connection.prepareStatement(sql);
            stm.setNString(1, f.getFoodName());
            stm.setDouble(2, f.getPrice());
            stm.setInt(3, f.getQuantity());
            stm.setString(4, f.getFoodImage());
            stm.setInt(5, f.getFoodCategory().getFoodCategoryId());
            stm.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }
}
