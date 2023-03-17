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
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Booking;
import model.Room;

/**
 *
 * @author PC
 */
public class BookingDAO extends DBContext{
    public int insertBooking(Booking b) {
        try {
            String sql = "insert into Booking (roomNo, accountID, inDate, outDate, notice) values (?, ?, ?, ?, ?)";
            PreparedStatement stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setInt(1, b.getRoom().getRoomNo());
            stm.setInt(2, b.getAccount().getAccountId());
            stm.setString(3, b.getIndate().toString());
            stm.setString(4, b.getOutdate().toString());
            stm.setNString(5, b.getNotice());
            stm.executeUpdate();
            ResultSet rs = stm.getGeneratedKeys();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return 0;
    }

    public ArrayList<Booking> getBookingId(Account user) {
        ArrayList<Booking> booking = new ArrayList<>();
        try {
            String sql = "select * from Booking\n"
                    + "where GETDATE() between inDate and outDate\n"
                    + "and accountID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, user.getAccountId());
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Booking b = new Booking();
                b.setId(rs.getInt(1));
                b.setRoom(new Room(rs.getInt(2), null, true));
                b.setIndate(rs.getDate(4).toLocalDate());
                b.setOutdate(rs.getDate(5).toLocalDate());
                b.setNotice(rs.getString(6));
                booking.add(b);
            }
        } catch (SQLException e) {
        }
        return booking;
    }
    
    public ArrayList<Booking> getBookingByRoom(int id) {
        ArrayList<Booking> booking = new ArrayList<>();
        try {
            String sql = "select b.*, a.name from Booking b, Account a where roomNo = ? and a.accountID = b.accountID  order by b.bookingID desc";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Booking b = new Booking();
                b.setId(rs.getInt(1));
                b.setRoom(new Room(rs.getInt(2), null, true));
                b.setIndate(rs.getDate(4).toLocalDate());
                b.setOutdate(rs.getDate(5).toLocalDate());
                b.setNotice(rs.getString(6));
                b.setAccount(new Account(rs.getInt(3), rs.getString(7), "", 1));
                booking.add(b);
            }
        } catch (SQLException e) {
        }
        return booking;
    }

    public HashMap<Integer, Booking> getBookingList() {
        HashMap<Integer, Booking> booking = new HashMap<>();
        try {
            String sql = "select b.bookingID, b.roomNo, a.name, b.inDate, b.outDate, b.notice, b.accountID from Booking b, Account a where b.inDate <= GETDATE() and b.outDate >= GETDATE() and a.accountID = b.accountID";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Booking b = new Booking();
                b.setId(rs.getInt(1));
                b.setRoom(new Room(rs.getInt(2), null, true));
                b.setIndate(rs.getDate(4).toLocalDate());
                b.setOutdate(rs.getDate(5).toLocalDate());
                b.setNotice(rs.getString(6));
                b.setAccount(new Account(rs.getInt(7), rs.getString(3), "", 1));
                booking.put(rs.getInt(2), b);
            }
        } catch (SQLException e) {
        }
        return booking;
    }
    
}
