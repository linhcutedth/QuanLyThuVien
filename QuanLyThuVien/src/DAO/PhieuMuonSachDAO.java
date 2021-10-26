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
public class PhieuMuonSachDAO {
    public static PreparedStatement pst = null;
    public static ResultSet rs = null;
    public static CallableStatement stmt = null ;
    public static Connection conn = Connect.getConnect();
  
      public static boolean InsertPhieuMuonSach(PhieuMuonSach pms) {
        
        String sql = "call THEM_PHIEUMUONSACH(?,?,?)";
        try {
            stmt = conn.prepareCall(sql);
            stmt.setString(1, pms.getmAPHIEUMUONSACH());
            stmt.setString(2, pms.getmADOCGIA());
            stmt.setDate(3,(Date) pms.getnGAYMUON());
            
            return stmt.executeUpdate()>0; 
        } catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
        }
    }
   public static boolean DeletePhieuMuonSach(String maphieumuonsach) {
        
         String sql = "call xoa_phieu_muon_sach(?)";
        try {
           stmt = conn.prepareCall(sql);
           stmt.setString(1,maphieumuonsach);
            return stmt.executeUpdate()>0; 
        } catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
        }
    }
   public boolean UpdatePhieuMuonSach(PhieuMuonSach pms)  {
        String sql = "update PHIEUMUONSACH set  MADOCGIA = ?, NGAYMUON = ? where MAPHIEUMUONSACH = ?";
        
        try
        {
           pst= conn.prepareStatement(sql); 
           pst.setString(3, pms.getmAPHIEUMUONSACH());
           pst.setString(1, pms.getmADOCGIA());
           pst.setDate(2,(Date) pms.getnGAYMUON());
               
            return pst.executeUpdate() >0;
        }        catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
    }
}
}
