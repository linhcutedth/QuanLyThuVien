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
public class DauSach {
    private String mADAUSACH, tENDAUSACH, tACGIA, nXB, tONGSO, vITRI, sANCO, dANGCHOMUON;
    private int nAMXB;

    public DauSach() {
    }

    public DauSach(String mADAUSACH, String tENDAUSACH, String tACGIA, String nXB, int nAMXB, String tONGSO, String vITRI, String sANCO, String dANGCHOMUON) {
        this.mADAUSACH = mADAUSACH;
        this.tENDAUSACH = tENDAUSACH;
        this.tACGIA = tACGIA;
        this.nXB = nXB;
        this.nAMXB = nAMXB;
        this.tONGSO = tONGSO;
        this.vITRI = vITRI;
        this.sANCO = sANCO;
        this.dANGCHOMUON = dANGCHOMUON;
    }

    public int getnAMXB() {
        return nAMXB;
    }

    public void setnAMXB(int nAMXB) {
        this.nAMXB = nAMXB;
    }

   

    public String getmADAUSACH() {
        return mADAUSACH;
    }

    public void setmADAUSACH(String mADAUSACH) {
        this.mADAUSACH = mADAUSACH;
    }

    public String gettENDAUSACH() {
        return tENDAUSACH;
    }

    public void settENDAUSACH(String tENDAUSACH) {
        this.tENDAUSACH = tENDAUSACH;
    }

    public String gettACGIA() {
        return tACGIA;
    }

    public void settACGIA(String tACGIA) {
        this.tACGIA = tACGIA;
    }

    public String getnXB() {
        return nXB;
    }

    public void setnXB(String nXB) {
        this.nXB = nXB;
    }

    public String gettONGSO() {
        return tONGSO;
    }

    public void settONGSO(String tONGSO) {
        this.tONGSO = tONGSO;
    }

    public String getvITRI() {
        return vITRI;
    }

    public void setvITRI(String vITRI) {
        this.vITRI = vITRI;
    }

    public String getsANCO() {
        return sANCO;
    }

    public void setsANCO(String sANCO) {
        this.sANCO = sANCO;
    }

    public String getdANGCHOMUON() {
        return dANGCHOMUON;
    }

    public void setdANGCHOMUON(String dANGCHOMUON) {
        this.dANGCHOMUON = dANGCHOMUON;
    }
    
    
}

    