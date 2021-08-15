/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.math.BigDecimal;

/**
 *
 * @author Admin
 */
public class ProductDAO {
    private int id;
    private String name;
    private String image_url;
    private BigDecimal price;

    public ProductDAO() {
    }

    public ProductDAO(int id, String name, String image_url, BigDecimal price) {
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

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "ProductDAO{" + "id=" + id + ", name=" + name + ", image_url=" + image_url + ", price=" + price + '}';
    }
    
}
