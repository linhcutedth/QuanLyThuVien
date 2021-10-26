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
public class CuonSach {
   private String mASACH, mADAUSACH,tINHTRANG;

    public CuonSach() {
    }

    public CuonSach(String mASACH, String mADAUSACH, String tINHTRANG) {
        this.mASACH = mASACH;
        this.mADAUSACH = mADAUSACH;
        this.tINHTRANG = tINHTRANG;
    }

    public String getmASACH() {
        return mASACH;
    }

    public void setmASACH(String mASACH) {
        this.mASACH = mASACH;
    }

    public String getmADAUSACH() {
        return mADAUSACH;
    }

    public void setmADAUSACH(String mADAUSACH) {
        this.mADAUSACH = mADAUSACH;
    }

    public String gettINHTRANG() {
        return tINHTRANG;
    }

    public void settINHTRANG(String tINHTRANG) {
        this.tINHTRANG = tINHTRANG;
    }
   
}

