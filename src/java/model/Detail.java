/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDate;
import java.util.ArrayList;

/**
 *
 * @author PC
 */
public class Detail {
    int bookingId;
    int roomId;
    LocalDate inDate;
    LocalDate outDate;
    String notice;
    String type;
    double totalMoney;
    String status;
    ArrayList<Food> food;

    public ArrayList<Food> getFood() {
        return food;
    }

    public void setFood(ArrayList<Food> food) {
        this.food = food;
    }

    public double getAllFoodPrice() {
        double total = 0;
        total = food.stream().map((food1) -> food1.getPrice()).reduce(total, (accumulator, _item) -> accumulator + _item);
        return total;
    }

    public double getTotalTransaction() {
        return getAllFoodPrice() + totalMoney;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public Detail(int bookingId, int roomId, LocalDate inDate, LocalDate outDate, String notice, String type, double totalMoney) {
        this.bookingId = bookingId;
        this.roomId = roomId;
        this.inDate = inDate;
        this.outDate = outDate;
        this.notice = notice;
        this.type = type;
        this.totalMoney = totalMoney;
    }

    public Detail() {
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public LocalDate getInDate() {
        return inDate;
    }

    public void setInDate(LocalDate inDate) {
        this.inDate = inDate;
    }

    public LocalDate getOutDate() {
        return outDate;
    }

    public void setOutDate(LocalDate outDate) {
        this.outDate = outDate;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

}
