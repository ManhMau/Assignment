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

    }
