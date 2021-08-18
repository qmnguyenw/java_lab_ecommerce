/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class CountDAO extends DBContext {
    DBContext db;

    public CountDAO() {
        db = new DBContext();
    }
    
    public String getVisit() throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int count = 0;
        String visitStr = "";
        try {
            con = db.getConnection();
            String query = "SELECT [visit] FROM [Count]";
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()) {
                count = rs.getInt(1);
            }
            visitStr = String.format("%05d", count);
            return visitStr;
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps, rs);
        }
    }
    
    public void addVisit() throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = db.getConnection();
            String query = "UPDATE [Count] SET [visit] = [visit] + 1";
            ps = con.prepareStatement(query);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps, rs);
        }
    }
}
