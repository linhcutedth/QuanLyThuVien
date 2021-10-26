/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Object;

/**
 *
 * @author minh
 */
import java.sql.*;
public class PhieuMuonSach {
   private String mAPHIEUMUONSACH,mADOCGIA;
   private Date nGAYMUON;

    public PhieuMuonSach() {
    }

    public PhieuMuonSach(String mAPHIEUMUONSACH, String mADOCGIA, Date nGAYMUON) {
        this.mAPHIEUMUONSACH = mAPHIEUMUONSACH;
        this.mADOCGIA = mADOCGIA;
        this.nGAYMUON = nGAYMUON;
    }

    public String getmAPHIEUMUONSACH() {
        return mAPHIEUMUONSACH;
    }

    public void setmAPHIEUMUONSACH(String mAPHIEUMUONSACH) {
        this.mAPHIEUMUONSACH = mAPHIEUMUONSACH;
    }

    public String getmADOCGIA() {
        return mADOCGIA;
    }

    public void setmADOCGIA(String mADOCGIA) {
        this.mADOCGIA = mADOCGIA;
    }

    public Date getnGAYMUON() {
        return nGAYMUON;
    }

    public void setnGAYMUON(Date nGAYMUON) {
        this.nGAYMUON = nGAYMUON;
    }
   
   
   
   
    
}
