package com.dvstudio.RestaurantPOSMakeEasy;

/**
 * @author greg
 * @since 6/21/13
 */
public class Chat {

    private String message;
    private String author;
    private String price;
    public static float total;

    // Required default constructor for Firebase object mapping
    @SuppressWarnings("unused")
    private Chat() {

    }

    Chat(String message, String author,String price) {
        this.message = message;
        this.author = author;
        this.price= price;
        //total+price;
    }

    public static float getTotal() {
        return total;
    }

    public String getMessage() {
        return message;
    }

    public String getAuthor() {
        return author;
    }

    public String getPrice() {
        return price;
    }

}
