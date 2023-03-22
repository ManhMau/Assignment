/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
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
    public RoomType getRoomTypeByID(int id) {
        try {
            String sql = "select * from RoomType where typeID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return new RoomType(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11));
            }
        } catch (SQLException e) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
    public ArrayList<RoomType> getRoomByFilter(LocalDate dateIn, LocalDate dateOut, int peoplePerRoom) {
        ArrayList<RoomType> roomList = new ArrayList<>();
        try {
            String sql = "select distinct rt1.* from Room r1, RoomType rt1\n"
                    + "where r1.RoomNO not in\n"
                    + "(select distinct r.roomNo from Room r, Booking b where ((? between b.inDate and b.outDate)\n"
                    + "or (? between b.inDate and b.outDate)) \n"
                    + "and r.RoomNO = b.roomNo \n"
                    + ")\n"
                    + "and r1.RoomType = rt1.typeID and rt1.peoplePerRoom like ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, (dateIn == null) ? "2000-01-01" : dateIn.toString());
            stm.setString(2, (dateIn == null) ? "9999-01-01" : dateIn.toString());
            stm.setString(3, (peoplePerRoom == 0) ? "%%" : ("%" + peoplePerRoom + "%"));
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                roomList.add(new RoomType(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11)));
            }
        } catch (SQLException e) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return roomList;
    }
       }
