/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author minh
 */
import java.sql.*;
import Object.*;
public class ChiTietMuonSachDAO {
    public static PreparedStatement pst = null;
    public static ResultSet rs = null;
    public static CallableStatement stmt = null ;
    public static Connection conn = Connect.getConnect();
  
      public static boolean InsertCTMS(ChiTietMuonSach ctms) {
        
        String sql = "call THEM_CTMS(?,?)";
        try {
            stmt = conn.prepareCall(sql);
            stmt.setString(1, ctms.getmAPHIEUMUONSACH());
            stmt.setString(2, ctms.getmASACH());         
            
            return stmt.executeUpdate()>0; 
        } catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
        }
    }
   public static boolean DeleteCTMS(ChiTietMuonSach ctms) {
        
         String sql = "call XOA_CTMS(?,?)";
        try {
            stmt = conn.prepareCall(sql);
            stmt.setString(1, ctms.getmAPHIEUMUONSACH());
            stmt.setString(2, ctms.getmASACH());         
            
            return stmt.executeUpdate()>0; 
        } catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
        }
    }
   public boolean UpdateCTMS(ChiTietMuonSach ctms)  {
        String sql = "update CTMS set  MASACH =  ? where MAPHIEUMUONSACH = ?";
        
        try
        {
           pst= conn.prepareStatement(sql); 
           pst.setString(2, ctms.getmAPHIEUMUONSACH());
           pst.setString(1, ctms.getmASACH()); 
               
            return pst.executeUpdate() >0;
        }        catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
    }
}
}
