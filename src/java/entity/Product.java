/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.text.NumberFormat;
import java.util.Locale;

/**
 *
 * @author Admin
 */
public class Product {
    private int id;
    private String name;
    private String image_url;
    private Double price;

    public Product() {
    }

    public Product(int id, String name, String image_url, Double price) {
        this.id = id;
        this.name = name;
        this.image_url = image_url;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public String getPrice() {
        return NumberFormat.getInstance(new Locale("de", "DE")).format(price);
//        return NumberFormat.getCurrencyInstance(new Locale("vn", "VN")).format(price);
    }
    
    public double getPriceDouble() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", image_url=" + image_url + ", price=" + price + '}';
    }
   
}
