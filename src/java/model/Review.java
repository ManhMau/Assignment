
package model;

/**
 *
 * @author ACER
 */
public class Review {
    private int reviewID;
    private Account account;
    private int rating;
    private String status;
    private RoomType roomType;
    public Review() {
    }

    public Review(int reviewID, Account account, int rating, String status, RoomType roomType) {
        this.reviewID = reviewID;
        this.account = account;
        this.rating = rating;
        this.status = status;
        this.roomType = roomType;
    }

    public RoomType getRoomType() {
        return roomType;
    }

    public void setRoomType(RoomType roomType) {
        this.roomType = roomType;
    }

    public int getReviewID() {
        return reviewID;
    }

    public void setReviewID(int reviewID) {
        this.reviewID = reviewID;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
