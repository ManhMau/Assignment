/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Account;
import model.Detail;
import model.Food;

/**
 *
 * @author PC
 */
public class AccountDAO extends DBContext{
    
    PreparedStatement stm;
    ResultSet rs;
     public int accountRegister(Account account) {
        try {
            String sql = "insert into Account (name, password, roleID) values (?,?,?)";
            stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setString(1, account.getName());
            stm.setString(2, account.getPassword());
            stm.setInt(3, account.getRole());
            return stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("register account error in DAO");
        }
        return 0;
    }
    public Account getAccount(Account account) {
        try {
            String sql = "select a.accountID, a.name, a.password, a.roleID from Account a where a.name = ? and a.password=?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, account.getName());
            stm.setString(2, account.getPassword());
            rs = stm.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public Account getAccountByName(Account account) {
        try {
            String sql = "select a.accountID, a.name, a.password, a.roleID from Account a where a.name = ?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, account.getName());
            rs = stm.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public ArrayList<Food> findAllFood(Account acc, int bookingId, boolean accessAll) {
        ArrayList<Food> d = new ArrayList<>();
        try {
            String sql = "select f.foodID, f.name,lfo.quantity,  lfo.quantity*f.price as total, f.foodImage\n"
                    + "from List_Food_Order lfo, Food f, Booking b\n"
                    + "where b.bookingID = lfo.bookingID and f.foodID = lfo.foodId\n"
                    + "and b.bookingID  = ? " + (accessAll ? "" : "and b.accountID = ?");
            stm = connection.prepareStatement(sql);
            stm.setInt(1, bookingId);
            if (!accessAll) {
                stm.setInt(2, acc.getAccountId());
            }
            rs = stm.executeQuery();
            while (rs.next()) {
                Food f = new Food();
                f.setFoodId(rs.getInt(1));
                f.setFoodName(rs.getString(2));
                f.setQuantity(rs.getInt(3));
                f.setPrice(rs.getDouble(4));
                f.setFoodImage(rs.getString(5));
                d.add(f);
            }
        } catch (SQLException e) {
        }
        return d;
    }
    public ArrayList<Detail> findAllBooking(Account acc, boolean accessAll) {
        ArrayList<Detail> d = new ArrayList<>();
        try {
            String sql = "select b.*,rt.type,rt.money * DATEDIFF(DAY,inDate,outDate) as totalMoney from Booking b, Room r, RoomType rt\n"
                    + "where r.RoomNO = b.roomNo and r.RoomType = rt.typeID\n"
                    + (accessAll ? "" : "and b.accountID = ?\n")
                    + "order by inDate desc";
            stm = connection.prepareStatement(sql);
            if (!accessAll) {
                stm.setInt(1, acc.getAccountId());
            }
            rs = stm.executeQuery();
            while (rs.next()) {
                d.add(new Detail(rs.getInt(1), rs.getInt(2), rs.getDate(4).toLocalDate(), rs.getDate(5).toLocalDate(), rs.getString(6), rs.getString(7), rs.getDouble(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return d;
    }

}
