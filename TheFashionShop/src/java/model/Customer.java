/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nhat Anh
 */
public class Customer {
      private  int CustomerID;
    private String Fullname;
    private String Email;
    private String Password;
    private String Address;
    private int Phone;

    public Customer() {
    }

    public Customer(int CustomerID, String Fullname, String Email, String Password, String Address, int Phone) {
        this.CustomerID = CustomerID;
        this.Fullname = Fullname;
        this.Email = Email;
        this.Password = Password;
        this.Address = Address;
        this.Phone = Phone;
    }

    public int getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(int CustomerID) {
        this.CustomerID = CustomerID;
    }

    public String getFullname() {
        return Fullname;
    }

    public void setFullname(String Fullname) {
        this.Fullname = Fullname;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public int getPhone() {
        return Phone;
    }

    public void setPhone(int Phone) {
        this.Phone = Phone;
    }

    @Override
    public String toString() {
        return "Customer{" + "CustomerID=" + CustomerID + ", Fullname=" + Fullname + ", Email=" + Email + ", Password=" + Password + ", Address=" + Address + ", Phone=" + Phone + '}';
    }
    
}
