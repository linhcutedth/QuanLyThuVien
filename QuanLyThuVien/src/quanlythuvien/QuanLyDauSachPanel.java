/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quanlythuvien;

/**
 *
 * @author minh
 */
import java.awt.Color;
import java.sql.*;
import javax.swing.*;
import DAO.*;
import Object.*;
//import com.sun.glass.events.KeyEvent;
import java.awt.event.KeyEvent;
public class QuanLyDauSachPanel extends javax.swing.JPanel {

    /**
     * Creates new form QuanLyDauSachPanel
     */
    public static String sql = "select * from DAUSACH order by MADAUSACH asc";
    public QuanLyDauSachPanel() {
        initComponents();
        showtb();
        setBackground(Color.white);
    }
    public final void showtb()
    {
    DuLieuBang.Load(sql, tbDauSach);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jToolBar1 = new javax.swing.JToolBar();
        jSeparator1 = new javax.swing.JToolBar.Separator();
        btThemMoi = new javax.swing.JButton();
        jSeparator2 = new javax.swing.JToolBar.Separator();
        btXoa = new javax.swing.JButton();
        jSeparator3 = new javax.swing.JToolBar.Separator();
        btCapNhat = new javax.swing.JButton();
        jSeparator4 = new javax.swing.JToolBar.Separator();
        btLamMoi = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        txtMaDauSach = new javax.swing.JTextField();
        txtTenDauSach = new javax.swing.JTextField();
        txtTacGia = new javax.swing.JTextField();
        txtNXB = new javax.swing.JTextField();
        txtTongSo = new javax.swing.JTextField();
        txtViTri = new javax.swing.JTextField();
        txtSanCo = new javax.swing.JTextField();
        txtDangChoMuon = new javax.swing.JTextField();
        txtNam = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbDauSach = new javax.swing.JTable();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        btTimKiem = new javax.swing.JButton();
        txtTimKiem = new javax.swing.JTextField();

        setPreferredSize(new java.awt.Dimension(1074, 571));

        jToolBar1.setRollover(true);
        jToolBar1.setPreferredSize(new java.awt.Dimension(250, 50));
        jToolBar1.add(jSeparator1);

        btThemMoi.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/icons8-add-50.png"))); // NOI18N
        btThemMoi.setFocusable(false);
        btThemMoi.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btThemMoi.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btThemMoi.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btThemMoiActionPerformed(evt);
            }
        });
        jToolBar1.add(btThemMoi);
        jToolBar1.add(jSeparator2);

        btXoa.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/icons8-delete-50.png"))); // NOI18N
        btXoa.setFocusable(false);
        btXoa.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btXoa.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btXoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btXoaActionPerformed(evt);
            }
        });
        jToolBar1.add(btXoa);
        jToolBar1.add(jSeparator3);

        btCapNhat.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/icons8-edit-50.png"))); // NOI18N
        btCapNhat.setFocusable(false);
        btCapNhat.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btCapNhat.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btCapNhat.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btCapNhatActionPerformed(evt);
            }
        });
        jToolBar1.add(btCapNhat);
        jToolBar1.add(jSeparator4);

        btLamMoi.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/icons8-refresh-50.png"))); // NOI18N
        btLamMoi.setFocusable(false);
        btLamMoi.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btLamMoi.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btLamMoi.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btLamMoiActionPerformed(evt);
            }
        });
        jToolBar1.add(btLamMoi);

        jPanel1.setBackground(new java.awt.Color(255, 204, 204));
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder(java.awt.Color.pink, null));
        jPanel1.setPreferredSize(new java.awt.Dimension(309, 394));

        jLabel2.setText("Mã đầu sách");

        jLabel3.setText("Tên đầu sách");

        jLabel4.setText("Tác giả");

        jLabel5.setText("Nhà XB");

        jLabel6.setText("Năm XB");

        jLabel7.setText("Tổng số");

        jLabel8.setText("Vị trí");

        jLabel9.setText("Sẵn có");

        jLabel10.setText("Đang cho mượn");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel10, javax.swing.GroupLayout.DEFAULT_SIZE, 100, Short.MAX_VALUE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtTenDauSach, javax.swing.GroupLayout.DEFAULT_SIZE, 181, Short.MAX_VALUE)
                    .addComponent(txtTacGia)
                    .addComponent(txtNXB)
                    .addComponent(txtTongSo)
                    .addComponent(txtViTri)
                    .addComponent(txtSanCo)
                    .addComponent(txtDangChoMuon)
                    .addComponent(txtMaDauSach, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(txtNam))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtMaDauSach, javax.swing.GroupLayout.DEFAULT_SIZE, 40, Short.MAX_VALUE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtTenDauSach, javax.swing.GroupLayout.DEFAULT_SIZE, 40, Short.MAX_VALUE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtTacGia, javax.swing.GroupLayout.DEFAULT_SIZE, 40, Short.MAX_VALUE)
                    .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtNXB, javax.swing.GroupLayout.DEFAULT_SIZE, 40, Short.MAX_VALUE)
                    .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel6, javax.swing.GroupLayout.DEFAULT_SIZE, 40, Short.MAX_VALUE)
                    .addComponent(txtNam))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtTongSo, javax.swing.GroupLayout.DEFAULT_SIZE, 40, Short.MAX_VALUE)
                    .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtViTri, javax.swing.GroupLayout.DEFAULT_SIZE, 40, Short.MAX_VALUE)
                    .addComponent(jLabel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtSanCo, javax.swing.GroupLayout.DEFAULT_SIZE, 40, Short.MAX_VALUE)
                    .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel10, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(txtDangChoMuon, javax.swing.GroupLayout.DEFAULT_SIZE, 40, Short.MAX_VALUE))
                .addContainerGap(15, Short.MAX_VALUE))
        );

        tbDauSach.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null, null}
            },
            new String [] {
                "MADAUSACH", "TENDAUSACH", "TACGIA", "NHAXB", "NAMXB", "TONGSO", "VITRI", "SANCO", "DANGCHOMUON"
            }
        ));
        tbDauSach.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tbDauSachMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tbDauSach);

        jPanel2.setBackground(new java.awt.Color(255, 204, 204));

        jLabel1.setFont(new java.awt.Font("Times New Roman", 0, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 0, 0));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("QUẢN LÝ ĐẦU SÁCH");
        jLabel1.setBorder(javax.swing.BorderFactory.createEtchedBorder(new java.awt.Color(204, 0, 204), null));

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, 60, Short.MAX_VALUE)
        );

        jButton1.setBackground(new java.awt.Color(255, 255, 153));
        jButton1.setText("THÔNG TIN SÁCH");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        btTimKiem.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/timkiem.png"))); // NOI18N
        btTimKiem.setFocusable(false);
        btTimKiem.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btTimKiem.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btTimKiem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btTimKiemActionPerformed(evt);
            }
        });

        txtTimKiem.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtTimKiemKeyPressed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jToolBar1, javax.swing.GroupLayout.DEFAULT_SIZE, 309, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 739, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(txtTimKiem)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btTimKiem, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jButton1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(txtTimKiem, javax.swing.GroupLayout.DEFAULT_SIZE, 30, Short.MAX_VALUE)
                            .addComponent(btTimKiem, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)))
                    .addComponent(jToolBar1, javax.swing.GroupLayout.PREFERRED_SIZE, 62, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 437, Short.MAX_VALUE)
                    .addComponent(jScrollPane1)))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void tbDauSachMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tbDauSachMouseClicked
        // TODO add your handling code here:
        try {

            int row = this.tbDauSach.getSelectedRow();
            String MArow = (String) (this.tbDauSach.getModel().getValueAt(row, 0));
            String sql1 = " select * from DAUSACH where MADAUSACH='" + MArow + "'";
            ResultSet rs = DuLieuBang.ShowTextField(sql1);

            if (rs.next()) {
              
                this.txtMaDauSach.setText(rs.getString("MADAUSACH"));
                this.txtTenDauSach.setText(rs.getString("TENDAUSACH"));
                this.txtTacGia.setText(rs.getString("TACGIA"));
                this.txtNXB.setText(rs.getString("NXB"));
                this.txtNam.setText(rs.getString("NAMXB"));
                this.txtTongSo.setText(rs.getString("TONGSO"));
                this.txtSanCo.setText(rs.getString("SANCO"));
                this.txtViTri.setText(rs.getString("VITRI"));
                this.txtDangChoMuon.setText(rs.getString("DANGCHOMUON"));

            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }//GEN-LAST:event_tbDauSachMouseClicked

    private void btTimKiemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btTimKiemActionPerformed
        // TODO add your handling code here:
        if(this.txtMaDauSach.getText().length()!=0)
             {
            String sql1 = " select * from DAUSACH where MADAUSACH like '%"+this.txtMaDauSach.getText()+"%' ";
            DuLieuBang.Load(sql1, tbDauSach);
            }
            else if(this.txtTenDauSach.getText().length()!=0)
                {
                    String sql2 = " select * from DAUSACH where TENDAUSACH like '%"+this.txtTenDauSach.getText()+"%' ";
                    DuLieuBang.Load(sql2, tbDauSach);
                }
                else if(this.txtTacGia.getText().length()!=0)
                    {
                        String sql3 = " select * from DAUSACH where TACGIA like '%"+this.txtTacGia.getText()+"%' ";
                        DuLieuBang.Load(sql3, tbDauSach);
                    }
                else if(this.txtNXB.getText().length()!=0)
                    {
                        String sql4 = " select * from DAUSACH where NXB like '%"+this.txtNXB.getText()+"%' ";
                        DuLieuBang.Load(sql4, tbDauSach);
                    }
                else if(this.txtTimKiem.getText().length()!=0)
                    {
                        String sql ="SELECT * FROM DAUSACH where MADAUSACH like'%"+this.txtTimKiem.getText()+"%' "
                            + "or TENDAUSACH like '%"+this.txtTimKiem.getText()+"%' or TACGIA like'%"+this.txtTimKiem.getText()+"%' "
                            + "or NXB like '%"+this.txtTimKiem.getText()+"%'";
                        DuLieuBang.Load(sql, tbDauSach);
                    }
            else
                    JOptionPane.showMessageDialog(null,"Bạn chưa nhập","Thông báo",1);
    }//GEN-LAST:event_btTimKiemActionPerformed

    private void btThemMoiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btThemMoiActionPerformed
        // TODO add your handling code here:
        if(this.txtMaDauSach.getText().length()==0)
             {
            JOptionPane.showMessageDialog(null,"Bạn chưa nhập mã đầu sách","Thông báo",1);
            }
            else if(this.txtTenDauSach.getText().length()==0)
                {
                    JOptionPane.showMessageDialog(null,"Bạn chưa nhập tên đầu sách","Thông báo",1);
                }
                else if(this.txtTacGia.getText().length()==0)
                    {
                        JOptionPane.showMessageDialog(null,"Bạn chưa nhập tác giả","Thông báo",1);
                    }
                else if(this.txtNXB.getText().length()==0)
                    {
                        JOptionPane.showMessageDialog(null,"Bạn chưa nhập NXB","Thông báo",1);
                    }
        else
            {
                try
             {      
                 
                int result = JOptionPane.showConfirmDialog(this,"Bạn chắc chắn muốn thêm đầu sách này","Xác nhận",JOptionPane.YES_NO_OPTION);
                if (result == JOptionPane.YES_OPTION){
                 
            DauSach ds = new DauSach();
            ds.setmADAUSACH(txtMaDauSach.getText());
            ds.settENDAUSACH(txtTenDauSach.getText());
            ds.setnAMXB(Integer.parseInt(txtNam.getText()));
            ds.settACGIA(txtTacGia.getText());
            ds.setnXB(txtNXB.getText());
            ds.settONGSO(txtTongSo.getText());
            ds.setvITRI(txtViTri.getText());
            ds.setsANCO(txtSanCo.getText());
            ds.setdANGCHOMUON(txtDangChoMuon.getText());
            DauSachDAO.InsertDauSach(ds);                  
            JOptionPane.showMessageDialog(null, "Đầu sách được thêm vào thành công","Thông báo",1 );         
            showtb();
        }
             }
        catch(Exception e)
                {
                    //JOptionPane.showMessageDialog(null, "Lỗi:"+ e.getMessage(),"Thông báo",1 );
                     if(e.getMessage().contains("ORA-00001"))
                     JOptionPane.showMessageDialog(null, "Mã đầu sách đã tồn tại, vui lòng nhập lại ", "Lỗi", JOptionPane.WARNING_MESSAGE);
                }    
            } 
    }//GEN-LAST:event_btThemMoiActionPerformed

    private void btXoaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btXoaActionPerformed
        // TODO add your handling code here:
         if(this.txtMaDauSach.getText().length()==0)
           JOptionPane.showMessageDialog(null,"Bạn cần chọn mã đầu sách để xóa","Thông báo",1);
        else
        {
        try{  
                
        int result = JOptionPane.showConfirmDialog(this,"Bạn chắc chắn muốn xóa đầu sách này","Xác nhận", JOptionPane.YES_NO_OPTION);
        if (result == JOptionPane.YES_OPTION){
         DauSachDAO.DeleteDauSach(txtMaDauSach.getText());
        JOptionPane.showMessageDialog(null, "Đầu sách xóa thành công!", "Thông báo",1);
        showtb();
        } else {
        JOptionPane.showMessageDialog(null, "Đầu sách xóa thất bại!", "Thông báo",1);
        }
      } catch (Exception e){
          JOptionPane.showMessageDialog(this, "Lỗi: " + e.getMessage());
         
      }
        } 
    }//GEN-LAST:event_btXoaActionPerformed

    private void btCapNhatActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btCapNhatActionPerformed
        // TODO add your handling code here:
        if(this.txtMaDauSach.getText().length()==0)
            JOptionPane.showMessageDialog(null,"Bạn chưa nhập mã đầu sách","Thông báo",1);
        else
        {
        try{  
            int result = JOptionPane.showConfirmDialog(this,"Bạn chắc chắn muốn cập nhật đầu sách này","Xác nhận",JOptionPane.YES_NO_OPTION);
                if (result == JOptionPane.YES_OPTION){
            DauSach ds = new DauSach();
            ds.setmADAUSACH(txtMaDauSach.getText());
            ds.settENDAUSACH(txtTenDauSach.getText());
            ds.setnAMXB(Integer.parseInt(txtNam.getText()));
            ds.settACGIA(txtTacGia.getText());
            ds.setnXB(txtNXB.getText());
            ds.settONGSO(txtTongSo.getText());
            ds.setvITRI(txtViTri.getText());
            ds.setsANCO(txtSanCo.getText());
            ds.setdANGCHOMUON(txtDangChoMuon.getText());
            DauSachDAO dao = new DauSachDAO();
            dao.UpdateDauSach(ds);           
            JOptionPane.showMessageDialog(null, "Đầu sách được sửa thành công","Thông báo",1 ); 
            showtb();
        }
        }
        catch(Exception e)
                {
                    JOptionPane.showMessageDialog(null, "Lỗi!"+ e.getMessage(),"Thông báo",1 );
                }
        }
    }//GEN-LAST:event_btCapNhatActionPerformed

    private void btLamMoiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btLamMoiActionPerformed
        // TODO add your handling code here:
        txtMaDauSach.setText("");
        txtTenDauSach.setText("");
        txtTacGia.setText("");
        txtNXB.setText("");
        txtNam.setText(null);
        txtTongSo.setText("");
        txtSanCo.setText("");
        txtViTri.setText("");
        txtDangChoMuon.setText("");
        txtTimKiem.setText("");
        showtb();
    }//GEN-LAST:event_btLamMoiActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        new QuanLyCuonSach().setVisible(true);
    }//GEN-LAST:event_jButton1ActionPerformed

    private void txtTimKiemKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtTimKiemKeyPressed
        // TODO add your handling code here:
        if(evt.getKeyCode()==KeyEvent.VK_ENTER)
        {
            String sql ="SELECT * FROM DAUSACH where MADAUSACH like'%"+this.txtTimKiem.getText()+"%' "
                    + "or TENDAUSACH like '%"+this.txtTimKiem.getText()+"%' or TACGIA like'%"+this.txtTimKiem.getText()+"%' "
                    + "or NXB like '%"+this.txtTimKiem.getText()+"%'";
            DuLieuBang.Load(sql, tbDauSach);
        }
    }//GEN-LAST:event_txtTimKiemKeyPressed
     JPanel childpanel;   

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btCapNhat;
    private javax.swing.JButton btLamMoi;
    private javax.swing.JButton btThemMoi;
    private javax.swing.JButton btTimKiem;
    private javax.swing.JButton btXoa;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JToolBar.Separator jSeparator1;
    private javax.swing.JToolBar.Separator jSeparator2;
    private javax.swing.JToolBar.Separator jSeparator3;
    private javax.swing.JToolBar.Separator jSeparator4;
    private javax.swing.JToolBar jToolBar1;
    private javax.swing.JTable tbDauSach;
    private javax.swing.JTextField txtDangChoMuon;
    private javax.swing.JTextField txtMaDauSach;
    private javax.swing.JTextField txtNXB;
    private javax.swing.JTextField txtNam;
    private javax.swing.JTextField txtSanCo;
    private javax.swing.JTextField txtTacGia;
    private javax.swing.JTextField txtTenDauSach;
    private javax.swing.JTextField txtTimKiem;
    private javax.swing.JTextField txtTongSo;
    private javax.swing.JTextField txtViTri;
    // End of variables declaration//GEN-END:variables
}
