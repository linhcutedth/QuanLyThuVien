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
public class DauSachDAO {
    public static PreparedStatement pst = null;
    public static ResultSet rs = null;
    public static CallableStatement stmt = null ;
    public static Connection conn = Connect.getConnect();
    
    public static boolean InsertDauSach(DauSach ds) {
        
        String sql = "insert into DAUSACH(MADAUSACH, TENDAUSACH, TACGIA, NXB, NAMXB, TONGSO, VITRI, SANCO, DANGCHOMUON) values(?,?,?,?,?,?,?,?,?)";
        try {
            pst= conn.prepareStatement(sql); 
            pst.setString(1, ds.getmADAUSACH());
            pst.setString(2, ds.gettENDAUSACH());
            pst.setString(3, ds.gettACGIA());
            pst.setString(4, ds.getnXB());
            pst.setInt(5, ds.getnAMXB());
            pst.setString(6, ds.gettONGSO());
            pst.setString(7, ds.getvITRI());
            pst.setString(8, ds.getsANCO());
            pst.setString(9, ds.getdANGCHOMUON());
            return pst.executeUpdate()>0; 
        } catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
        }
    }
   public static boolean DeleteDauSach(String madausach) {
        
         String sql = "call XOA_DAU_SACH(?)";
        try {
            stmt = conn.prepareCall(sql); 
            stmt.setString(1,madausach);
            return stmt.executeUpdate()>0; 
        } catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
        }
    }
   public boolean UpdateDauSach(DauSach ds)  {
        String sql = "update DAUSACH set  TENDAUSACH = ?, TACGIA = ?, NXB = ?, NAMXB=?, TONGSO =?, VITRI=?, SANCO = ?, DANGCHOMUON = ? where MADAUSACH = ?";
        
        try
        {
            pst= conn.prepareStatement(sql); 
            pst.setString(9, ds.getmADAUSACH());
            pst.setString(1, ds.gettENDAUSACH());
            pst.setString(2, ds.gettACGIA());
            pst.setString(3, ds.getnXB());
            pst.setInt(4, ds.getnAMXB());
            pst.setString(5, ds.gettONGSO());
            pst.setString(6, ds.getvITRI());
            pst.setString(7, ds.getsANCO());
            pst.setString(8, ds.getdANGCHOMUON());
               
            return pst.executeUpdate() >0;
        }        catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
    }
}
}
