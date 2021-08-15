/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class CountDAO extends DBContext {
    //get number of total visit on the page
    public String getVisit() {
        String sql = "SELECT [visit] FROM [counting]";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                int visit = rs.getInt("visit");                
                String strVisit = visit + "";
                int numberOf0 = 6 - strVisit.length();
                for (int i = 0; i < numberOf0; i++){
                    strVisit = "0" + strVisit;
                }
                return strVisit;
            }
        } catch (Exception e) {}
        return "0";
    }
    
    //add 1 to the number of total visit
    public void addVisit(){
        String sql = "UPDATE [counting] SET visit = visit + 1";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.execute();
        } catch (Exception e) {}
    }
}
