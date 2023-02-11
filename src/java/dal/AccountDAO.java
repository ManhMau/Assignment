/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.Account;

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

    
}
