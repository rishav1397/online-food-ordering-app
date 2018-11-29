/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author rishav
 */
public class login {
     private String username;
    private String password;
    public login(){}
    public login(String username,String password){
        this.username=username;
        this.password=password;
    }
    public void setUsername(String username){
        this.username=username;
    }
    public void setPassword(String password){
        this.password=password;
    }
    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }
    @Override
    public boolean equals(Object obj) {
        login l=(login)obj;
        if(username.equals(l.getUsername())&&password.equals(l.getPassword()))
            return true;
        else
            return false;
    }
}
