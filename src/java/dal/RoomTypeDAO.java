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
import model.RoomType;

/**
 *
 * @author ACER
 */
public class RoomTypeDAO extends DBContext {

    public ArrayList<RoomType> getAllRoomType() {
        ArrayList<RoomType> roomTypes = new ArrayList<>();
        try {
            String sql = "select * from RoomType";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                roomTypes.add(new RoomType(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (SQLException e) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return roomTypes;
    }

       }
