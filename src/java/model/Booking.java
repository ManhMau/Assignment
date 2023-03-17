/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDate;

/**
 *
 * @author PC
 */
public class Booking {
    private int id;
    private Room room;
    private Account account;
    private LocalDate indate;
    private LocalDate outdate;
    private String notice;

    public Booking() {
    }

    public Booking(int id, Room room, Account account, LocalDate indate, LocalDate outdate, String notice) {
        this.id = id;
        this.room = room;
        this.account = account;
        this.indate = indate;
        this.outdate = outdate;
        this.notice = notice;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public LocalDate getIndate() {
        return indate;
    }

    public void setIndate(LocalDate indate) {
        this.indate = indate;
    }

    public LocalDate getOutdate() {
        return outdate;
    }

    public void setOutdate(LocalDate outdate) {
        this.outdate = outdate;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }
    
}
