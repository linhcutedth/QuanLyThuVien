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
public class HoaDon extends PhieuTraSach {
    private String mAHD,mAPHIEUTRA,tIENNO,tIENTHU,tIENTHUA;

    public HoaDon() {
    }

    public HoaDon(String mAHD, String mAPHIEUTRA, String tIENNO, String tIENTHU, String tIENTHUA) {
        this.mAHD = mAHD;
        this.mAPHIEUTRA = mAPHIEUTRA;
        this.tIENNO = tIENNO;
        this.tIENTHU = tIENTHU;
        this.tIENTHUA = tIENTHUA;
    }

    public String getmAHD() {
        return mAHD;
    }

    public void setmAHD(String mAHD) {
        this.mAHD = mAHD;
    }

    public String getmAPHIEUTRA() {
        return mAPHIEUTRA;
    }

    public void setmAPHIEUTRA(String mAPHIEUTRA) {
        this.mAPHIEUTRA = mAPHIEUTRA;
    }

    public String gettIENNO() {
        return tIENNO;
    }

    public void settIENNO(String tIENNO) {
        this.tIENNO = tIENNO;
    }

    public String gettIENTHU() {
        return tIENTHU;
    }

    public void settIENTHU(String tIENTHU) {
        this.tIENTHU = tIENTHU;
    }

    public String gettIENTHUA() {
        return tIENTHUA;
    }

    public void settIENTHUA(String tIENTHUA) {
        this.tIENTHUA = tIENTHUA;
    }
    
}
    