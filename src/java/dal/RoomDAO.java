/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Room;
import model.RoomType;

/**
 *
 * @author PC
 */
public class RoomDAO extends DBContext{
     public Room getFreeRoom(LocalDate indate, LocalDate outdate, int type) {
        try {
            String sql = "select * from Room r \n"
                    + "where r.RoomNO not in \n"
                    + "(\n"
                    + "select distinct r.roomNo from Room r, Booking b where ((? between b.inDate and b.outDate) or (? between b.inDate and b.outDate))\n"
                    + "and r.RoomNO = b.roomNo \n"
                    + ") and r.RoomType = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, indate.toString());
            stm.setString(2, outdate.toString());
            stm.setInt(3, type);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                RoomType rt = new RoomType();
                rt.setId(rs.getInt(2));
                return new Room(rs.getInt(1), rt, false);
            }
        } catch (SQLException e) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public ArrayList<Room> getRoomByType(int type) {
        ArrayList<Room> roomList = new ArrayList<>();
        try {
            String sql = "select * from Room r where r.RoomType = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, type);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                RoomType rt = new RoomType();
                rt.setId(type);
                roomList.add(new Room(rs.getInt(1), rt, false));
            }
        } catch (SQLException e) {
        }
        return roomList;
    }

    
    
}
