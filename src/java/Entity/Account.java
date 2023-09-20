/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;



/**
 *
 * @author admin
 */
public class Account {
    private String accountID;
    private String dob;
    private String  phone;
    private String  address;
    private String  password;
    private String  username;
    private String  email;

    public Account() {
    }

    public Account(String accountID, String dob, String phone, String address, String password, String username, String email) {
        this.accountID = accountID;
        this.dob = dob;
        this.phone = phone;
        this.address = address;
        this.password = password;
        this.username = username;
        this.email = email;
    }

    public Account(String dob, String phone, String address, String password, String username, String email) {
        this.dob = dob;
        this.phone = phone;
        this.address = address;
        this.password = password;
        this.username = username;
        this.email = email;
    }
    
    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
        this.accountID = accountID;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Account{" + "accountID=" + accountID + ", dob=" + dob + ", phone=" + phone + ", address=" + address + ", password=" + password + ", username=" + username + ", email=" + email + '}';
    }
      
}
