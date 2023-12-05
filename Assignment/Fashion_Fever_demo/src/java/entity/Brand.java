/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Admin
 */
public class Brand {
    private String bid;
    private String bname;

    public Brand() {
    }

    public Brand(String bid, String bname) {
        this.bid = bid;
        this.bname = bname;
    }

    public String getBid() {
        return bid;
    }

    public void setBid(String bid) {
        this.bid = bid;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    @Override
    public String toString() {
        return "Brand{" + "bid=" + bid + ", bname=" + bname + '}';
    }

    
    
}
