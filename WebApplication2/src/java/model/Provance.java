/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author 1795545
 */
public class Provance {
    
    private int provance_id;
    private String provance_name;
    private int country_id;

    public Provance(int provance_id, String provance_name, int country_id) {
        this.provance_id = provance_id;
        this.provance_name = provance_name;
        this.country_id = country_id;
    }

    public int getProvance_id() {
        return provance_id;
    }

    public void setProvance_id(int provance_id) {
        this.provance_id = provance_id;
    }

    public String getProvance_name() {
        return provance_name;
    }

    public void setProvance_name(String provance_name) {
        this.provance_name = provance_name;
    }

    public int getCountry_id() {
        return country_id;
    }

    public void setCountry_id(int country_id) {
        this.country_id = country_id;
    }
    
    
    
    
}
