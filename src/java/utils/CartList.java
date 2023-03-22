/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.HashMap;
import java.util.Map;
import model.ListFood;

/**
 *
 * @author PC
 */
public class CartList {
    public Map<Integer, ListFood> carts = new HashMap<>();
    public double total;

    public CartList() {
    }

    public Map<Integer, ListFood> getCarts() {
        return carts;
    }

    public double getTotal() {
        int t = 0;
        for (ListFood value : carts.values()) {
            t += value.getPrice();
        }
        return t;

    }

    public void setTotal(int total) {
        this.total = total;
    }

    public void setCarts(Map<Integer, ListFood> carts) {
        this.carts = carts;
    }


}
