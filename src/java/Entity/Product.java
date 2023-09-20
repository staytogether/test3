/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author FPT
 */
public class Product {
    private int productID;
    private String proName;
    private String authorName;
    private String maniDate;
    private double discount;
    private double price;
    private int quantity;
    private int categoryID;
    private int providerID;
    private String image_url;

    public Product() {
    }

    public Product(int productID, String proName, String authorName, String maniDate, double discount, double price, int quantity, int categoryID, int providerID, String image_url) {
        this.productID = productID;
        this.proName = proName;
        this.authorName = authorName;
        this.maniDate = maniDate;
        this.discount = discount;
        this.price = price;
        this.quantity = quantity;
        this.categoryID = categoryID;
        this.providerID = providerID;
        this.image_url = image_url;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getManiDate() {
        return maniDate;
    }

    public void setManiDate(String maniDate) {
        this.maniDate = maniDate;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public int getProviderID() {
        return providerID;
    }

    public void setProviderID(int providerID) {
        this.providerID = providerID;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", proName=" + proName + ", authorName=" + authorName + ", maniDate=" + maniDate + ", discount=" + discount + ", price=" + price + ", quantity=" + quantity + ", categoryID=" + categoryID + ", providerID=" + providerID + ", image_url=" + image_url + '}';
    }
    
    
}
