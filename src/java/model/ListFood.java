/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author PC
 */
public class ListFood {
     private int bookingId;
    private Food food;
    private int quantity;
    private double price;

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getPrice() {
        return food.getPrice() * quantity;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public Food getFood() {
        return food;
    }

    public void increase() {
        this.quantity = quantity + 1;
    }

    public void decrease() {
        this.quantity = quantity - 1;
    }

    public void setFood(Food food) {
        this.food = food;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }


}
