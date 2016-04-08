/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

public class LoginHandler {
    boolean authenticate(String name,String pwd){
        if(name.equals("admin")&& pwd.equals("admin")){
            return true;
        }
        return false;
    }
    
}
