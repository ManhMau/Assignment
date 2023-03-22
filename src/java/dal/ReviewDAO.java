/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Review;
import model.RoomType;

/**
 *
 * @author ACER
 */
public class ReviewDAO extends DBContext {

    public int getRatingByType(int rating, int type) {
        int count = 0;
        try {
            String sql = "select count(*) from (select * from Review where rating = ? and roomType = ?) as a";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, rating);
            stm.setInt(2, type);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return count;
    }

    public boolean insertRating(Review r) {
        try {
            String sql = "insert into Review (accountID, rating, status, roomType) values (?, ?, ?, ?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, r.getAccount().getAccountId());
            stm.setInt(2, r.getRating());
            stm.setNString(3, r.getStatus());
            stm.setInt(4, r.getRoomType().getId());
            stm.executeUpdate();
            return true;
        } catch (SQLException e) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }

        public ArrayList<Review> getFiveStarReview() {
        ArrayList<Review> reviewList = new ArrayList<>();
        try {
            String sql = "select r.*, a.name from Review r, Account a where r.rating = 5 and a.accountID = r.accountID order by reviewID desc offset 0 rows fetch next 5 rows only";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                RoomType rt = new RoomType();
                rt.setId(rs.getInt(5));
                reviewList.add(new Review(rs.getInt(1), new Account(rs.getInt(2), rs.getString(6), "", 1), rs.getInt(3), rs.getNString(4), rt));
            }
        } catch (SQLException e) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return reviewList;
    }
        public ArrayList<Review> getReviewByRoomType(int typeID) {
        ArrayList<Review> reviewList = new ArrayList<>();
        try {
            String sql = "select r.*, a.name from Review r, Account a where r.roomType = ? and a.accountID = r.accountID";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, typeID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                RoomType rt = new RoomType();
                rt.setId(rs.getInt(5));
                reviewList.add(new Review(rs.getInt(1), new Account(rs.getInt(2), rs.getString(6), "", 1), rs.getInt(3), rs.getNString(4), rt));
            }
        } catch (SQLException e) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return reviewList;
    }
    public boolean allowReview(int accountID, int typeID) {
        try {
            String sql = "select count(*) from Booking b, Room r where b.accountID = ? and r.RoomType = ? and r.RoomNO = b.roomNo";
            String sql2 = "select count(*) from Review r where r.accountID = ? and r.roomType = ?";
            int i = 0;
            int j = 0;
            PreparedStatement stm = connection.prepareStatement(sql);
            PreparedStatement stm2 = connection.prepareStatement(sql2);
            stm.setInt(1, accountID);
            stm.setInt(2, typeID);
            stm2.setInt(1, accountID);
            stm2.setInt(2, typeID);
            ResultSet rs = stm.executeQuery();
            ResultSet rs2 = stm2.executeQuery();
            while (rs.next()) {
                i = rs.getInt(1);
            }
            while (rs2.next()) {
                j = rs2.getInt(1);
            }
            if (i > 0 && j == 0) {
                return true;
            }
        } catch (SQLException e) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }
    }
