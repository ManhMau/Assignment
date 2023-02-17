/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ACER
 */
public class RoomType {

    private int id;
    private String type;
    private double money;
    private String img1;
    private String img2;
    private String img3;
    private String img4;
    private int square;
    private int peoplePerRoom;
    private int bathNum;
    private String description;

    public RoomType() {
    }

    public RoomType(int id, String type, double money, String img1, String img2, String img3, String img4, int square, int peoplePerRoom, int bathNum, String description) {
        this.id = id;
        this.type = type;
        this.money = money;
        this.img1 = img1;
        this.img2 = img2;
        this.img3 = img3;
        this.img4 = img4;
        this.square = square;
        this.peoplePerRoom = peoplePerRoom;
        this.bathNum = bathNum;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public String getImg3() {
        return img3;
    }

    public void setImg3(String img3) {
        this.img3 = img3;
    }

    public String getImg4() {
        return img4;
    }

    public void setImg4(String img4) {
        this.img4 = img4;
    }

    public int getSquare() {
        return square;
    }

    public void setSquare(int square) {
        this.square = square;
    }

    public int getPeoplePerRoom() {
        return peoplePerRoom;
    }

    public void setPeoplePerRoom(int peoplePerRoom) {
        this.peoplePerRoom = peoplePerRoom;
    }

    public int getBathNum() {
        return bathNum;
    }

    public void setBathNum(int bathNum) {
        this.bathNum = bathNum;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
