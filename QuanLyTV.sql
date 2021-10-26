/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     30/5/2021 12:28:16 PM                        */
/*==============================================================*/


alter table CTMS
   drop constraint FK_CTMS_CTMS_PHIEUMUO;

alter table CTMS
   drop constraint FK_CTMS_CTMS2_CUONSACH;

alter table CTTS
   drop constraint FK_CTTS_CTTS_PHIEUTRA;

alter table CTTS
   drop constraint FK_CTTS_CTTS2_CUONSACH;

alter table CUONSACH
   drop constraint FK_CUONSACH_CO_DAUSACH;

alter table HOADON
   drop constraint FK_HOADON_TONTAI_PHIEUTRA;

alter table PHIEUMUONSACH
   drop constraint FK_PHIEUMUO_THUOC_DOCGIA;

alter table PHIEUTRASACH
   drop constraint FK_PHIEUTRA_THUOC2_DOCGIA;

drop index CTMS2_FK;

drop index CTMS_FK;

drop table CTMS cascade constraints;

drop index CTTS2_FK;

drop index CTTS_FK;

drop table CTTS cascade constraints;

drop index CO_FK;

drop table CUONSACH cascade constraints;

drop table DAUSACH cascade constraints;

drop table DOCGIA cascade constraints;

drop index TONTAI_FK;

drop table HOADON cascade constraints;

drop index THUOC_FK;

drop table PHIEUMUONSACH cascade constraints;

drop index TONTAI2_FK;

drop index THUOC2_FK;

drop table PHIEUTRASACH cascade constraints;

/*==============================================================*/
/* Table: CTMS                                                  */
/*==============================================================*/
create table CTMS 
(
   MAPHIEUMUONSACH      CHAR(4)              not null,
   MASACH               CHAR(6)              not null,
   constraint PK_CTMS primary key (MAPHIEUMUONSACH, MASACH)
);

/*==============================================================*/
/* Index: CTMS_FK                                               */
/*==============================================================*/
create index CTMS_FK on CTMS (
   MAPHIEUMUONSACH ASC
);

/*==============================================================*/
/* Index: CTMS2_FK                                              */
/*==============================================================*/
create index CTMS2_FK on CTMS (
   MASACH ASC
);

/*==============================================================*/
/* Table: CTTS                                                  */
/*==============================================================*/
create table CTTS 
(
   MAPHIEUTRA           CHAR(4)              not null,
   MASACH               CHAR(6)              not null,
   SONGAYTRATRE         INTEGER,
   TIENPHAT             NUMBER,
   constraint PK_CTTS primary key (MAPHIEUTRA, MASACH)
);

/*==============================================================*/
/* Index: CTTS_FK                                               */
/*==============================================================*/
create index CTTS_FK on CTTS (
   MAPHIEUTRA ASC
);

/*==============================================================*/
/* Index: CTTS2_FK                                              */
/*==============================================================*/
create index CTTS2_FK on CTTS (
   MASACH ASC
);

/*==============================================================*/
/* Table: CUONSACH                                              */
/*==============================================================*/
create table CUONSACH 
(
   MASACH               CHAR(6)              not null,
   MADAUSACH            CHAR(6)              not null,
   TINHTRANG            VARCHAR2(20),
   constraint PK_CUONSACH primary key (MASACH)
);

/*==============================================================*/
/* Index: CO_FK                                                 */
/*==============================================================*/
create index CO_FK on CUONSACH (
   MADAUSACH ASC
);

/*==============================================================*/
/* Table: DAUSACH                                               */
/*==============================================================*/
create table DAUSACH 
(
   MADAUSACH            CHAR(6)              not null,
   TENDAUSACH           VARCHAR2(100),
   TACGIA               VARCHAR2(200),
   NXB                  VARCHAR2(100),
   NAMXB               INTEGER,
   TONGSO               NUMBER,
   VITRI                VARCHAR2(30),
   SANCO                INTEGER,
   DANGCHOMUON          INTEGER,
   constraint PK_DAUSACH primary key (MADAUSACH)
);

/*==============================================================*/
/* Table: DOCGIA                                                */
/*==============================================================*/
create table DOCGIA 
(
   MADOCGIA             CHAR(4)              not null,
   HOTEN                VARCHAR2(40),
   NGAYSINH             DATE,
   LOAIDG               VARCHAR2(20),
   DIACHI               VARCHAR2(50),
   EMAIL                VARCHAR2(40),
   NGLAPTHE             DATE,
   TINHTRANG       VARCHAR(20),
   constraint PK_DOCGIA primary key (MADOCGIA)
);

/*==============================================================*/
/* Table: HOADON                                                */
/*==============================================================*/
create table HOADON 
(
   MAHD                 CHAR(4)              not null,
   MAPHIEUTRA           CHAR(4)              not null,
   TIENNO               NUMBER(8,2),
   TIENTHU              NUMBER(8,2),
   TIENTHUA             NUMBER(8,2),
   constraint PK_HOADON primary key (MAHD)
);

/*==============================================================*/
/* Index: TONTAI_FK                                             */
/*==============================================================*/
create index TONTAI_FK on HOADON (
   MAPHIEUTRA ASC
);

/*==============================================================*/
/* Table: PHIEUMUONSACH                                         */
/*==============================================================*/
create table PHIEUMUONSACH 
(
   MAPHIEUMUONSACH      CHAR(4)              not null,
   MADOCGIA             CHAR(4)              not null,
   NGAYMUON             DATE,
   constraint PK_PHIEUMUONSACH primary key (MAPHIEUMUONSACH)
);

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on PHIEUMUONSACH (
   MADOCGIA ASC
);

/*==============================================================*/
/* Table: PHIEUTRASACH                                          */
/*==============================================================*/
create table PHIEUTRASACH 
(
   MAPHIEUTRA           CHAR(4)              not null,
   MADOCGIA             CHAR(4)              not null,
   NGAYTRA              DATE,
   TIENPHATKINAY        NUMBER(8,2),
   constraint PK_PHIEUTRASACH primary key (MAPHIEUTRA)
);

/*==============================================================*/
/* Index: THUOC2_FK                                             */
/*==============================================================*/
create index THUOC2_FK on PHIEUTRASACH (
   MADOCGIA ASC
);

/*==============================================================*/
/* Index: TONTAI2_FK                                            */
/*==============================================================*/
create index TONTAI2_FK on PHIEUTRASACH (
   
);

alter table CTMS
   add constraint FK_CTMS_CTMS_PHIEUMUO foreign key (MAPHIEUMUONSACH)
      references PHIEUMUONSACH (MAPHIEUMUONSACH);

alter table CTMS
   add constraint FK_CTMS_CTMS2_CUONSACH foreign key (MASACH)
      references CUONSACH (MASACH);

alter table CTTS
   add constraint FK_CTTS_CTTS_PHIEUTRA foreign key (MAPHIEUTRA)
      references PHIEUTRASACH (MAPHIEUTRA);

alter table CTTS
   add constraint FK_CTTS_CTTS2_CUONSACH foreign key (MASACH)
      references CUONSACH (MASACH);

alter table CUONSACH
   add constraint FK_CUONSACH_CO_DAUSACH foreign key (MADAUSACH)
      references DAUSACH (MADAUSACH);

alter table HOADON
   add constraint FK_HOADON_TONTAI_PHIEUTRA foreign key (MAPHIEUTRA)
      references PHIEUTRASACH (MAPHIEUTRA);

alter table PHIEUMUONSACH
   add constraint FK_PHIEUMUO_THUOC_DOCGIA foreign key (MADOCGIA)
      references DOCGIA (MADOCGIA);

alter table PHIEUTRASACH
   add constraint FK_PHIEUTRA_THUOC2_DOCGIA foreign key (MADOCGIA)
      references DOCGIA (MADOCGIA);
      
      
      
      
/*==================================================*/
/*===                                          BANG USER                                                  ===*/
/*==================================================*/

CREATE TABLE NGUOIDUNG
(
        TEN VARCHAR(50) NOT NULL,
        MATKHAU VARCHAR(30),
        QUYEN INT, -- 1: QUảN Lý, 2: THủ THư
        CONSTRAINT PK_TEN PRIMARY KEY(TEN)
)

/*==================================================*/
/*===                                         MOT SO RANG BUOC                              ===*/
/*==================================================*/

--1.  Dia chi email phai ket thuc bang cum @gmail.com
ALTER TABLE DOCGIA
ADD CONSTRAINT CHECK_EMAIL CHECK(EMAIL LIKE ('%@gmail.com'));

--2.  Tinh trang cuon sach co hai trang thai 'Sẵn có' hoac 'Đang cho mượn'
ALTER TABLE CUONSACH
ADD CONSTRAINT CHECK_TINHTR CHECK(TINHTRANG IN ('Sẵn có', 'Đang cho mượn'));

/*==================================================*/
/*===                                  DANH SACH HAM                                            ===*/
/*==================================================*/

---- FUNC1: TINH TIEN THUA

CREATE OR REPLACE FUNCTION CAL_TIENTHUA(MAHOADON HOADON.MAHD%TYPE)
RETURN NUMBER
IS
TOTAL NUMBER;
SENT NUMBER;
GIVE NUMBER;
BEGIN
    GIVE :=0;
    SELECT TIENNO, TIENTHU INTO TOTAL, SENT
    FROM HOADON
    WHERE MAHD = MAHOADON;
    
    GIVE :=SENT - TOTAL;
    RETURN GIVE;
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
    --dbms_output.put_line('NULL');
    return null;
END;

-- FUNC2: TINH SO NGAY MUON SACH
CREATE OR REPLACE FUNCTION CALCDAYBORROW(MADG PHIEUMUONSACH.MADOCGIA%TYPE,
                                         MAPM PHIEUMUONSACH.MAPHIEUMUONSACH%TYPE,
                                         MS CTMS.MASACH%TYPE)
RETURN number IS 
    CALCDAY NUMBER(10) := 0;
    TRA DATE;
    MUON DATE;
BEGIN 
    SELECT NGAYTRA INTO  TRA 
    FROM PHIEUTRASACH PT, CTTS
    WHERE MADOCGIA = MADG
            AND MASACH=MS
            AND PT.MAPHIEUTRA=CTTS.MAPHIEUTRA;
            
    SELECT NGAYMUON INTO MUON 
    FROM PHIEUMUONSACH PM, CTMS, CUONSACH CS
    WHERE MADOCGIA = MADG
            AND PM.MAPHIEUMUONSACH= MAPM
            AND PM.MAPHIEUMUONSACH = CTMS.MAPHIEUMUONSACH
            AND CTMS.MASACH= CS.MASACH
            AND CTMS.MASACH=MS;
            
    CALCDAY := TRA - MUON;    
    RETURN CALCDAY;
    
    EXCEPTION
    WHEN NO_DATA_FOUND THEN 
    RETURN NULL;
END;

-- FUNC3: Kiem tra cuon sach dang "Sẵn có" hay khong
CREATE OR REPLACE FUNCTION TINHTRANGCUONSACH (v_masach cuonsach.masach%type)
RETURN CHAR
IS
    MS CHAR(6);
BEGIN
    SELECT MASACH INTO MS
    FROM CUONSACH
    WHERE MASACH=V_MASACH AND TINHTRANG='Sẵn có';
    RETURN MS;
    
    EXCEPTION WHEN NO_DATA_FOUND
    THEN RETURN NULL;
END;

--FUNC4: kiem tra tong so dau sach có bằng số lượng đầu sách sẵn có hay không
CREATE OR REPLACE FUNCTION KIEMTRADAUSACH(v_madausach dausach.madausach%type)
RETURN CHAR IS
MDS CHAR(6);
BEGIN
    SELECT MADAUSACH INTO MDS
    FROM DAUSACH
    WHERE MADAUSACH=V_MADAUSACH AND TONGSO = SANCO;
    RETURN MDS;
    
    EXCEPTION WHEN NO_DATA_FOUND
    THEN RETURN NULL;
END;

--FUNC5: Kiểm tra xem cuốn sách đã được độc giả mượn từ trước hay chưa.
create or replace function kiemtra (v_dg Phieumuonsach.madocgia%type,
                                    v_ms ctms.masach%type)
return boolean
is 
cursor cur is 
select pm.maphieumuonsach
from phieumuonsach pm, ctms
where pm.maphieumuonsach = ctms.maphieumuonsach
and ctms.masach = v_ms
and pm.madocgia = v_dg;
test phieumuonsach.maphieumuonsach%type;
begin
open cur;
fetch cur into test;
if (cur%rowcount != 0) then 
return true;
else return false;
end if;
close cur;
end;
/*==================================================*/
/*===                                  DANH SACH PROCEDURE                            ===*/
/*==================================================*/

--PROC1: Hạn sử dụng thẻ độc giả là 6 tháng, cập nhật tình trạng thẻ độc giả
ALTER SESSION ON NLS_DATE_FORMAT = 'DD/MM/YYYY';

CREATE OR REPLACE PROCEDURE UPDATE_TINHTRANGTHEDG(MDG DOCGIA.MADOCGIA%TYPE) IS
    CURSOR NGLT_DG IS SELECT MADOCGIA, (CURRENT_DATE - NGLAPTHE) AS DATEDIFF FROM DOCGIA WHERE MADOCGIA = MDG;
    MADG DOCGIA.MADOCGIA%type;
    TOTAL INT;
BEGIN
    OPEN NGLT_DG;
    LOOP
    FETCH NGLT_DG INTO MADG, TOTAL;
    EXIT WHEN NGLT_DG%NOTFOUND;
    IF TOTAL > 180 THEN
        UPDATE DOCGIA SET TINHTRANG = 'Hết hạn' WHERE MADOCGIA = MADG;
    ELSE UPDATE DOCGIA SET TINHTRANG = 'Còn hạn' WHERE MADOCGIA = MADG;
    
   -- DBMS_OUTPUT.PUT_LINE(TOTAL);
   END IF;
     END LOOP;
     CLOSE NGLT_DG;
END;

-- PROC2: Thêm độc giả

CREATE OR REPLACE PROCEDURE THEM_DOC_GIA(v_madocgia docgia.madocgia%type,
                                                                                                                v_hoten docgia.hoten%type,
                                                                                                                v_ngsinh docgia.ngaysinh%type, 
                                                                                                                v_loaiDG docgia.loaidg%type,
                                                                                                                v_diachi docgia.diachi%type,
                                                                                                                v_email docgia.email%type,
                                                                                                                v_nglt docgia.nglapthe%type)
IS
BEGIN
    INSERT INTO DOCGIA(MADOCGIA, HOTEN, NGAYSINH, LOAIDG, DIACHI, EMAIL, NGLAPTHE)
    VALUES(v_madocgia, v_hoten, v_ngsinh,v_loaiDG, v_diachi, v_email, v_nglt);
    BEGIN
        UPDATE_TINHTRANGTHEDG(v_madocgia);
    END;
    COMMIT;
END;


-- PROC3: Cập nhật tình trạng đầu sách
create or replace PROCEDURE UPDATE_TINHTRANGSACH(v_mads dausach.madausach%type) IS
total_san INT;
BEGIN

select count(*) into total_san
from cuonsach
where tinhtrang in('Sẵn có', 'sẵn có') and madausach = v_mads;

update dausach 
set sanco = total_san, dangchomuon = tongso-total_san
where madausach = v_mads;

END;


-- PROC4: Cập nhật tiền nợ
CREATE OR REPLACE PROCEDURE UPDATE_TIENNO(MAPT VARCHAR) IS
    V_PHAT PHIEUTRASACH.TIENPHATKINAY%TYPE;
    V_NO HOADON.TIENNO%TYPE;
BEGIN
    SELECT TIENPHATKINAY INTO V_PHAT
    FROM PHIEUTRASACH
    WHERE MAPHIEUTRA = MAPT;

    UPDATE HOADON
    SET TIENNO = V_PHAT
    WHERE MAPHIEUTRA = MAPT;
    COMMIT;
END;

-- PROC5: Thêm một hóa đơn mới.
CREATE OR REPLACE PROCEDURE THEM_HOA_DON(V_MAHD HOADON.MAHD%TYPE, V_MAPT hoadon.maphieutra%TYPE, V_THU hoadon.tienthu%TYPE ) 
IS
V_THUA HOADON.TIENTHUA%TYPE;
BEGIN


INSERT INTO HOADON(MAHD, MAPHIEUTRA, TIENTHU) VALUES (V_MAHD, V_MAPT, V_THU);
begin
UPDATE_TIENNO(V_MAPT );
end;

V_THUA := CAL_TIENTHUA(V_MAHD);

UPDATE HOADON
SET TIENTHUA =V_THUA
WHERE MAHD = V_MAHD; 

END;

-- PROC6: Thêm chi tiết trả sách
SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE THEM_CTTS (V_MAPT PHIEUTRASACH.MAPHIEUTRA%TYPE, V_MS CTTS.MASACH%TYPE)
IS
V_MADG PHIEUTRASACH.MADOCGIA%TYPE;
v_mapm phieumuonsach.maphieumuonsach%type;
v_sntt ctts.songaytratre%type;

BEGIN
    select madocgia into v_madg
    from phieutrasach
    where maphieutra = v_mapt;
    
    select pms.maphieumuonsach into v_mapm
    from phieumuonsach pms, ctms
    where pms.maphieumuonsach = ctms.maphieumuonsach and pms.madocgia = v_madg and ctms.masach = v_ms;
    
    insert into ctts values(v_mapt, v_ms, 0, 0);
    
    v_sntt := calcdayborrow(v_madg, v_mapm, v_ms)- 90;
    
    update ctts 
    set songaytratre = v_sntt
    where maphieutra = v_mapt and  masach = v_ms;
    
    update ctts 
    set tienphat = songaytratre * 1000
    where maphieutra = v_mapt and masach = v_ms;
    EXCEPTION
    when no_data_found then 
    DBMS_OUTPUT.PUT_LINE('Them khong thanh cong!');
    
    COMMIT;
end;

--PROC7: Thêm một phiếu mượn sách mới
create or replace PROCEDURE THEM_PHIEUMUONSACH(v_maphieumuonsach phieumuonsach.maphieumuonsach%type,
                                                                                                                          v_madocgia phieumuonsach.madocgia%type,
                                                                                                                          v_ngaymuon phieumuonsach.ngaymuon%type)
                                        
IS
    TINHTRANG DOCGIA.TINHTRANG%TYPE;
BEGIN
    SELECT DOCGIA.TINHTRANG INTO TINHTRANG
    FROM DOCGIA
    WHERE docgia.madocgia = v_madocgia; 
    
    IF TINHTRANG = 'Còn hạn' THEN
        BEGIN
                INSERT INTO PHIEUMUONSACH(MAPHIEUMUONSACH, MADOCGIA,NGAYMUON)
                VALUES(v_maphieumuonsach, v_madocgia, v_ngaymuon);
        END;
    END IF;
    
    exception 
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Them không thành công');
    commit;
END;

--PROC8: Thêm chi tiết mượn sách
/*create or replace procedure THEM_CTMS( v_maphieumuonsach ctms.maphieumuonsach%type,
                                                                                            v_masach ctms.masach%type)
IS
        tinhtrang cuonsach.tinhtrang%type;
begin
        select cuonsach.tinhtrang into tinhtrang
        from cuonsach
        where cuonsach.masach = v_masach;

        if tinhtrang = 'Sẵn có' then
              begin
                 insert into CTMS(maphieumuonsach, masach) values (v_maphieumuonsach, v_masach);
              end;
         else 
            DBMS_OUTPUT.PUT_LINE('Thêm không thành công, cuốn sách này đang cho mượn');
        end if;
        commit;
end;*/

create or replace PROCEDURE THEM_CTMS( v_maphieumuonsach ctms.maphieumuonsach%type,
                                        v_masach ctms.masach%type)
IS
tinhtrang cuonsach.tinhtrang%type;
v_mads dausach.madausach%type;
v_madg docgia.madocgia%type;
 v_mapms_old ctms.maphieumuonsach%type;
BEGIN
    SELECT cuonsach.tinhtrang, madausach into tinhtrang, v_mads
    from CUONSACH
    where cuonsach.masach = v_masach;
        
    select madocgia into v_madg
    from phieumuonsach
    where maphieumuonsach = v_maphieumuonsach;
    IF tinhtrang = 'Sẵn có'  THEN
    begin
       
    if(kiemtra(v_madg, v_masach)) then
            --   DBMS_OUTPUT.PUT_LINE('Thêm thành công');
            select pm.maphieumuonsach into v_mapms_old
            from phieumuonsach pm, ctms ct
            where pm.maphieumuonsach = ct.maphieumuonsach and pm.madocgia = v_madg and ct.masach = v_masach;
           xoa_ctms(v_mapms_old, v_masach);
    
    end if;
        
        INSERT into CTMS(maphieumuonsach, masach) values (v_maphieumuonsach, v_masach);
        update_tinhtrangsach(v_mads);
       
    end;
    else 
        DBMS_OUTPUT.PUT_LINE('Thêm không thành công, cuốn sách này đang cho mượn');
    END IF;
    
    --when no_data_found then
        
    COMMIT;
END;

--PROC9: Them cuon sach
create or replace procedure them_cuon_sach(v_masach cuonsach.masach%type, v_mads cuonsach.madausach%type) 
is
begin

insert into cuonsach(masach, madausach) values(v_masach, v_mads);

update cuonsach
set tinhtrang ='Sẵn có'
where masach =v_masach;

update dausach
set tongso = tongso+1
where madausach = v_mads;

begin 
update_tinhtrangsach(v_mads);
end;

end;

--PROC10: Xoa cuon sach
CREATE OR REPLACE PROCEDURE XOA_CUON_SACH(v_masach cuonsach.masach%type)
IS
    CURSOR PM_CUR IS SELECT MAPHIEUMUONSACH FROM CTMS WHERE MASACH = V_MASACH;
    CURSOR PT_CUR IS SELECT MAPHIEUTRA FROM CTTS WHERE MASACH = V_MASACH;
    MAPM PHIEUMUONSACH.MAPHIEUMUONSACH%TYPE;
    MAPT PHIEUTRASACH.MAPHIEUTRA%TYPE;
    MADS DAUSACH.MADAUSACH%TYPE;
BEGIN
    IF (TINHTRANGCUONSACH(V_MASACH) = V_MASACH)
    THEN
         SELECT MADAUSACH INTO MADS
         FROM CUONSACH
        WHERE MASACH = V_MASACH;
    
        OPEN PM_CUR;
        LOOP
            FETCH PM_CUR INTO MAPM;
            EXIT WHEN PM_CUR%NOTFOUND;
            IF ( MAPM IS NOT NULL ) THEN 
                    DELETE FROM CTMS WHERE MAPHIEUMUONSACH = MAPM
                                                                            AND MASACH = V_MASACH; 
            END IF ;
        END LOOP;
        CLOSE PM_CUR;

        OPEN PT_CUR;
        LOOP
            FETCH PT_CUR INTO MAPT;
            EXIT WHEN PT_CUR%NOTFOUND;
            IF ( MAPT IS NOT NULL ) THEN 
            DELETE FROM CTTS WHERE MAPHIEUTRA = MAPT
                                                                AND MASACH = V_MASACH; 
            END IF ;
        END LOOP;
        CLOSE PT_CUR;

        DELETE FROM CUONSACH WHERE MASACH = V_MASACH;
    
        UPDATE DAUSACH 
        SET TONGSO = TONGSO-1
        WHERE MADAUSACH =MADS;

        BEGIN
            UPDATE_TINHTRANGSACH(MADS);
        END;
    END IF;
    
    EXCEPTION 
            WHEN NO_DATA_FOUND THEN
                dbms_output.put_line('XOA KHONG THANH CONG');
    COMMIT;
END;

--PROC11: Xoa dau sach
CREATE OR REPLACE PROCEDURE XOA_DAU_SACH(v_madausach dausach.madausach%type)
IS
    CURSOR CS_CUR IS SELECT MASACH FROM CUONSACH WHERE MADAUSACH = V_MADAUSACH;
    MS CUONSACH.MASACH%TYPE;

BEGIN
    IF (KIEMTRADAUSACH(V_MADAUSACH) = V_MADAUSACH)
    THEN
        OPEN CS_CUR;
        LOOP
            FETCH CS_CUR INTO MS;
            EXIT WHEN CS_CUR%NOTFOUND;
            IF (MS IS NOT NULL) THEN XOA_CUON_SACH(MS); END IF;
        END LOOP;
        CLOSE CS_CUR;
    
        DELETE FROM DAUSACH WHERE MADAUSACH = V_MADAUSACH;
    END IF;
    
    EXCEPTION 
        WHEN NO_DATA_FOUND THEN
            dbms_output.put_line('XOA KHONG THANH CONG');
    COMMIT;
END;

-- PROC12: XOA CTTS

create or replace PROCEDURE XOA_CTTS(V_MAPHIEUTRA CTTS.MAPHIEUTRA%type, V_MASACH CTTS.MASACH%TYPE)
IS
BEGIN
    DELETE FROM CTTS WHERE MAPHIEUTRA = V_MAPHIEUTRA AND MASACH = V_MASACH;
    COMMIT;
END;

--PROC13: XOA CTMS

create or replace PROCEDURE XOA_CTMS(v_mapms phieumuonsach.maphieumuonsach%type,  v_masach cuonsach.masach%type)
IS
    v_madg docgia.madocgia%type;
    v_maphieutra ctts.maphieutra%type;
BEGIN 
     if (tinhtrangcuonsach(v_masach) = v_masach) then
        select madocgia into v_madg
        from phieumuonsach
        where maphieumuonsach = v_mapms;
        
        select pts.maphieutra into v_maphieutra
        from phieutrasach pts, ctts ct
        where pts.maphieutra = ct.maphieutra and pts.madocgia = v_madg and ct.masach = v_masach;
        
        delete from  ctts  where maphieutra =  v_maphieutra and masach = v_masach;
    
        delete from ctms where maphieumuonsach = v_mapms and masach = v_masach;
    else
        dbms_output.put_line('Xoa chi tiet muon sach khong thanh cong');
    end if;
    COMMIT;
END;

--PROC14: Xoa phieu tra sach
create or replace PROCEDURE xoa_phieu_tra_sach(v_mapts phieutrasach.maphieutra%type)
is
begin
    delete from ctts where maphieutra = v_mapts;
    
    delete from hoadon where maphieutra = v_mapts;
    
    delete from phieutrasach where maphieutra = v_mapts;
    
end;

--PROC15: Xoa phieu muon sach
create or replace procedure xoa_phieu_muon_sach (v_mapms phieumuonsach.maphieumuonsach%type)
is
    cursor ctms_cur is select masach from ctms where maphieumuonsach = v_mapms;
    v_ms cuonsach.masach%type;
    v_madg docgia.madocgia%type;
    v_mapts phieutrasach.maphieutra%type;
    v_kt boolean;
begin
    v_kt := true;
    open ctms_cur;
    loop
        fetch ctms_cur into v_ms;
        exit when ctms_cur%notfound;
        
        if(tinhtrangcuonsach(v_ms) != v_ms) then -- kiểm tra sách đang sẵn có hay không
            v_kt := false;
            exit;
        end if;
    
    end loop;
    close ctms_cur;
    
    if  (v_kt = true) then 
        select madocgia into v_madg
        from phieumuonsach
        where maphieumuonsach = v_mapms;
        
         open ctms_cur;
         loop
            fetch ctms_cur into v_ms;
            exit when ctms_cur%notfound;
            
            select pts.maphieutra into v_mapts
            from phieutrasach pts, ctts ct
            where pts.maphieutra = ct.maphieutra and pts.madocgia = v_madg and ct.masach = v_ms;
            
            xoa_ctts (v_mapts, v_ms);
        end loop;
        close ctms_cur;
        delete from ctms where maphieumuonsach = v_mapms;
        delete from phieumuonsach where maphieumuonsach = v_mapms;
    else
        dbms_output.put_line('Xoa khong thanh cong');
    end if;
    
    exception 
        when no_data_found then
             dbms_output.put_line('Xoa khong thanh cong');
    commit;
end;
            
--PROC16: Xoa doc gia
create or replace procedure xoa_doc_gia(v_madg docgia.madocgia%type)
is
        cursor pms_cur is select maphieumuonsach from phieumuonsach where madocgia = v_madg;
        cursor pts_cur is select maphieutra from phieutrasach where madocgia = v_madg;
        v_mapts phieutrasach.maphieutra%type;
        v_mapms phieumuonsach.maphieumuonsach%type;
        v_docgia docgia.madocgia%type;
        total_muon int;
        total_tra int;
begin
        -- kiem tra doc gia ton tai trong he thong hay hong
        select madocgia into v_docgia
        from docgia
        where madocgia = v_madg;
        
        if (v_docgia = null) then
            dbms_output.put_line('Doc gia khong ton tai');
        else 
            begin
        -- kiem tra docgia co dang muon sach hay hong
             select count(*) into total_muon
             from ctms ct, phieumuonsach pms
            where ct.maphieumuonsach = pms.maphieumuonsach and madocgia = v_madg;
    
            select count(*) into total_tra
            from ctts ct, phieutrasach pts
            where ct.maphieutra = pts.maphieutra and madocgia = v_madg;
        
             if(total_muon = total_tra) then
                    open pms_cur;
                    loop
                        fetch pms_cur into v_mapms;
                        exit when pms_cur%notfound;
                        
                        xoa_phieu_muon_sach(v_mapms);
                    end loop;
                    close pms_cur; 
                    
                    
                    open pts_cur;
                    loop
                        fetch pts_cur into v_mapts;
                        exit when pts_cur%notfound;
                        
                        xoa_phieu_tra_sach(v_mapts);
                    end loop;
                    close pts_cur;
                    
                    delete from docgia where madocgia = v_madg;
            else 
                    dbms_output.put_line('Xoa khong thanh cong');
            end if;
            end;
            end if;
            
            exception
            when no_data_found then
                dbms_output.put_line('Doc gia khong ton tai');
end;

--PROC17: Cap nhat tien thu
create or replace  procedure Cap_nhat_tien_thu(v_mahd hoadon.mahd%type, v_tienthu hoadon.tienthu%type)
is
begin
        update hoadon
        set tienthu = v_tienthu
        where mahd=v_mahd;
        
        update hoadon
        set tienthua = tienthu - tienno
        where mahd = v_mahd;
end;

-- PROC18: Doi vi tri dau sach (Giải quyết tình huống deadlock)
create or replace procedure doi_vitri_dausach (v_mads dausach.madausach%type, v_vt dausach.vitri%type)
as
PRAGMA AUTONOMOUS_TRANSACTION; --Autonomous_transaction.
begin
    update dausach
    set vitri = v_vt
    where madausach like v_mads;
    commit;
end;

--PROC19: THÊM ĐẦU SÁCH
CREATE OR REPLACE PROCEDURE THEM_DAU_SACH ( v_madausach dausach.madausach%type,
                                            v_tendausach dausach.tendausach%type,
                                            v_tacgia dausach.tacgia%type,
                                            v_nxb dausach.nxb%type,
                                            v_namxb dausach.namxb%type,
                                            v_vitri dausach.vitri%type)
IS
BEGIN
    INSERT INTO DAUSACH(MADAUSACH, TENDAUSACH, TACGIA, NXB, NAMXB, VITRI)
    VALUES (v_madausach, v_tendausach, v_tacgia, v_nxb, v_namxb, v_vitri);
    UPDATE DAUSACH
    SET TONGSO = 0,
             SANCO = 0,
            DANGCHOMUON = 0
    WHERE MADAUSACH = v_madausach;
END;


  

/*==================================================*/
/*===                           DANH SACH CAC TRIGGER                                ===*/
/*==================================================*/

--R1: NgayLapThe doc gia lon hon ngay sinh
 
 -- insert 
 create or replace TRIGGER CHECK_NGLT BEFORE  INSERT
ON DOCGIA
for each row
BEGIN
     IF :NEW.NGLAPTHE < :NEW.NGAYSINH  THEN 
       RAISE_APPLICATION_ERROR(-20000,'Ngay LAP THE khong hop le, vui long nhap lai') ;
    ELSE
   DBMS_OUTPUT.PUT_LINE('Da them thanh cong');
    end if; 
END;

-- update
create or replace TRIGGER CHECK_NGLT_UPDATE BEFORE UPDATE
ON DOCGIA
for each row
BEGIN
    IF TO_DATE(:NEW.NGLAPTHE,'DD/MM/YYYY') <TO_DATE( :NEW.NGAYSINH,'DD/MM/YYYY')  THEN 
       RAISE_APPLICATION_ERROR(-20000,'Ngay LAP THE khong hop le, vui long nhap lai') ;
    ELSE
   DBMS_OUTPUT.PUT_LINE('Da them thanh cong');
    end if; 
END;

-- R2: Ngay doc gia muon sach lon hon hoac bang ngay lap the doc gia do
-- insert
create or replace TRIGGER CHECK_NgMuonSach BEFORE insert on PHIEUMUONSACH
FOR EACH ROW
DECLARE 
NgayLapThe DATE;
BEGIN
    SELECT NGLAPTHE
    INTO NgayLapThe
    FROM DOCGIA
    WHERE DOCGIA.MADOCGIA = :NEW.MADOCGIA;

    IF TO_DATE(NgayLapThe,'DD/MM/YYYY') > TO_DATE(:NEW.NGAYMUON,'DD/MM/YYYY') THEN
    RAISE_APPLICATION_ERROR(-20000,'Ngay muon sach khong hop le, vui long nhap lai') ;
    ELSE
   DBMS_OUTPUT.PUT_LINE('Da them thanh cong');
    end if; 
END;

-- update phieumuonsach
create or replace TRIGGER CHECK_NgMuonSach_update BEFORE UPDATE on PHIEUMUONSACH
FOR EACH ROW
DECLARE 
NgayLapThe DATE;
BEGIN
    SELECT NGLAPTHE
    INTO NgayLapThe
    FROM DOCGIA
    WHERE DOCGIA.MADOCGIA = :NEW.MADOCGIA;

    IF TO_DATE(NgayLapThe,'DD/MM/YYYY') > TO_DATE(:NEW.NGAYMUON,'DD/MM/YYYY') THEN
    RAISE_APPLICATION_ERROR(-20000,'Ngay muon sach khong hop le, vui long nhap lai') ;
    ELSE
   DBMS_OUTPUT.PUT_LINE('Da them thanh cong');
    end if; 
END;


-- update docgia
create or replace TRIGGER CHECK_Nglt_ngms_up before update of nglapthe on docgia
for each row
declare 
ngmuon_min phieumuonsach.ngaymuon%type;
begin
    select ngaymuon into ngmuon_min
    from phieumuonsach
    where madocgia = :new.madocgia and rownum =1;

    if TO_DATE(ngmuon_min,'DD/MM/YYYY') < TO_DATE(:new.nglapthe,'DD/MM/YYYY') then
          RAISE_APPLICATION_ERROR(-20000,'Ngay lap the khong hop le, vui long nhap lai') ;
    else 
         DBMS_OUTPUT.PUT_LINE('Da cap nhat thanh cong');
    end if; 
      exception
    when no_data_found then
        DBMS_OUTPUT.PUT_LINE('Da cap nhat thanh cong');
end;

-- R3: Ngay tra sach lon hon ngay muon cuon sach do
create or replace TRIGGER CHECK_NGTRASACH BEFORE INSERT ON CTTS
FOR EACH ROW
DECLARE 
NGAYMUONSACH DATE;
NGAYTRASACH DATE;
MADG_TRA PHIEUTRASACH.MADOCGIA%TYPE;
MASACH_MUON CHAR(6);
V_MADS DAUSACH.MADAUSACH%TYPE;
BEGIN
    SELECT MADOCGIA
    INTO MADG_TRA
    FROM PHIEUTRASACH
    WHERE MAPHIEUTRA = :NEW.MAPHIEUTRA;

    SELECT NGAYMUON, MASACH
    INTO NGAYMUONSACH, MASACH_MUON
    FROM PHIEUMUONSACH, CTMS
    WHERE phieumuonsach.maphieumuonsach = CTMS.MAPHIEUMUONSACH AND MASACH = :NEW.MASACH AND MADOCGIA = MADG_TRA;

    SELECT PTS.NGAYTRA
    INTO NGAYTRASACH
    FROM PHIEUTRASACH PTS
    WHERE PTS.maphieutra = :NEW.MAPHIEUTRA;

        IF TO_DATE(NGAYTRASACH,'DD/MM/YYYY')< TO_DATE(NGAYMUONSACH,'DD/MM/YYYY') THEN
            RAISE_APPLICATION_ERROR(-20000,'Ngay tra sach khong hop le, vui long nhap lai') ;
         ELSE
         BEGIN
            DBMS_OUTPUT.PUT_LINE('Da them thanh cong');
            UPDATE CUONSACH
            SET TINHTRANG = 'Sẵn có'
            where masach = masach_muon;
            
            select madausach into v_mads
            from cuonsach
            where masach = masach_muon;
            BEGIN
             UPDATE_TINHTRANGSACH(V_MADS);
            --rollback; 
            END;
         END;
       END IF;
END;

-- R4: Tien phat ki nay bang tong tien phat trong ki tra sach do

-- insert 
create or replace TRIGGER CHECK_TIENPHAT BEFORE INSERT ON CTTS
FOR EACH ROW
BEGIN

update phieutrasach
set tienphatkinay = tienphatkinay + :new.tienphat
where maphieutra = :new.maphieutra;
dbms_output.put_line('Da them thanh cong');

END;

-- update
create or replace TRIGGER CHECK_TIENPHAT_UPDATE before  UPDATE ON CTTS
FOR EACH ROW

BEGIN

  update phieutrasach
  set tienphatkinay = tienphatkinay - :old.tienphat + :new.tienphat
  where maphieutra = :new.maphieutra;
  dbms_output.put_line('Da cap nhat thanh cong');

END;

-- R5 : tien phat ki nay bang tien no ung voi hoa don  cua phieu tra sach do
-- update
create or replace TRIGGER CHECK_Tienno BEFORE update ON phieutrasach
for each row
begin
    update hoadon
    set tienno = :new.tienphatkinay, tienthua = tienthu - :new.tienphatkinay
    where maphieutra = :new.maphieutra;
    dbms_output.put_line('Da cap nhat thanh cong');
end;

--  delete
create or replace trigger check_tienphat_delete_hd before delete on hoadon
for each row
declare 
v_tienphat phieutrasach.tienphatkinay%type;
begin
    -- neu tienphatkinay lon hon 0, khong the xoa hoadon
    select tienphatkinay into v_tienphat
    from phieutrasach
    where maphieutra = :old.maphieutra;

    if v_tienphat > 0 then
         RAISE_APPLICATION_ERROR(-20000,'bạn không thể xóa hóa đơn này!');
    else
         DBMS_OUTPUT.PUT_LINE('Đã xóa thành công!');
    end if;

end;

-- R6: Cap nhat tinh trang sach khi them ctms
create or replace TRIGGER UPDATE_CUONSACH_CTMS BEFORE INSERT ON CTMS
FOR EACH ROW
declare
v_mads dausach.madausach%type;
BEGIN
    UPDATE CUONSACH
    SET TINHTRANG = 'Đang cho mượn'
    WHERE MASACH = :NEW.MASACH;
    select madausach into v_mads
    from cuonsach
    where masach = :new.masach;
    BEGIN
        UPDATE_TINHTRANGSACH(v_mads);
        --rollback; 
    END;

END;

-- R7: Cap nhat tinh trang sach khi xoa ctms

create or replace TRIGGER UPDATE_CUONSACH_CTMS_delete BEFORE DELETE ON CTMS
FOR EACH ROW
declare
v_mads dausach.madausach%type;
BEGIN
    UPDATE CUONSACH
    SET TINHTRANG = 'Sẵn có'
    WHERE MASACH = :OLD.MASACH;
    
    select madausach into v_mads
    from cuonsach
    where masach = :old.masach;

    BEGIN
        UPDATE_TINHTRANGSACH(v_mads);
      --rollback; 
    END;

END;

--R8: Cap nhat tinh trang sach khi them ctts
create or replace TRIGGER UPDATE_CUONSACH_CTTS BEFORE INSERT ON CTTS
FOR EACH ROW
declare
v_mads dausach.madausach%type;
BEGIN
    UPDATE CUONSACH
    SET TINHTRANG = 'Sẵn có'
    WHERE MASACH = :NEW.MASACH;
    
    select madausach into v_mads
    from cuonsach
    where masach = :new.masach;  
    
    BEGIN
        UPDATE_TINHTRANGSACH(v_mads);
    --rollback; 
    END;

END;

-- R9: Cap nhat tinh trang sach khi xoa ctts
create or replace TRIGGER UPDATE_CUONSACH_CTTS_DELETE BEFORE DELETE ON CTTS
FOR EACH ROW
declare
v_mads dausach.madausach%type;
BEGIN

update phieutrasach
set tienphatkinay = tienphatkinay - :old.tienphat
where maphieutra = :old.maphieutra;

UPDATE CUONSACH
SET TINHTRANG = 'Đang cho mượn'
WHERE MASACH = :OLD.MASACH;
    select madausach into v_mads
    from cuonsach
    where masach = :old.masach;
BEGIN
  UPDATE_TINHTRANGSACH(v_mads);
--rollback; 
END;

END;

-- R10: Tong so sach dang muon cua moi doc gia toi da la 3
create or replace TRIGGER check_muonsach before insert on CTMS
FOR EACH ROW
DECLARE 
MAPM PHIEUMUONSACH.MAPHIEUMUONSACH%TYPE;
MADG DOCGIA.MADOCGIA%TYPE;
TOTAL_MUON INT;
TOTAL_TRA INT;
BEGIN

    SELECT MADOCGIA, MAPHIEUMUONSACH INTO MADG, MAPM
    FROM PHIEUMUONSACH
    WHERE  MAPHIEUMUONSACH = :NEW.MAPHIEUMUONSACH;

    SELECT COUNT(*) INTO TOTAL_MUON
    FROM CTMS CT, PHIEUMUONSACH PM
    WHERE CT.MAPHIEUMUONSACH = PM.MAPHIEUMUONSACH AND PM.MADOCGIA = MADG;

    SELECT COUNT(*) INTO TOTAL_TRA
    FROM CTTS CT, PHIEUTRASACH PT
    WHERE CT.MAPHIEUTRA = PT.MAPHIEUTRA AND PT.MADOCGIA = MADG;

    IF(TOTAL_MUON - TOTAL_TRA >= 3) THEN
    BEGIN
   -- DELETE FROM PHIEUMUONSACH WHERE MAPHIEUMUONSACH = MAPM;
    RAISE_APPLICATION_ERROR(-20000,'Tong so sach muon da vuot qua 3');
    END;
    ELSE  
    DBMS_OUTPUT.PUT_LINE('Da them thanh cong');
    end if;
end;

------------------------------------------------------------------------------------------------------------
/*==================================================*/
/*===                                     INSERT Dữ LIệU                                           ===*/
/*==================================================*/

alter session set NLS_DATE_FORMAT = 'DD/MM/YYYY';

/*====================== THÊM ĐỘC GIẢ====================*/

begin
    THEM_DOC_GIA('DG01','Nguyễn Vănn Huy','12/02/2010','Học sinh','23 Lâm Quan Ky','huy123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG02','Bùi Thị Hoa','02/01/2009','Học sinh','13 Hòa An ','hoa123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG03','Nguyễn Văn Linh','30/04/2008','Học sinh','45 Quan Trung','linh123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG04','Lê Thúy Vân','02/01/2010','Học sinh','43 Thủy An','van123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG05','Nguyễn Ngọc Thùy','03/01/2008','Học sinh','87 3 Tháng 2','thuy123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG06','Đoàn Tấn Dũng','13/02/2009','Học sinh','34 Triệu An','dung123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG07','Võ Ngọc Quỳnh','14/04/2010','Học sinh','119 Huyền Trân','quynh123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG08','Tiết Ngọc Ngân','12/04/2007','Học sinh','12 Linh Trung','ngan123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG09','Lê Văn Toàn','05/05/2008','Học sinh','45 Võ Trường Toản','toan123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG10','Nguyễn Ngọc Na','01/01/2009','Học sinh','6 Nguyễn Trung Trực','na123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG11','Trần Vĩ Khang','02/02/2008','Học sinh','14 Lê Lợi','khang123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG12','Hồ Khả Ái','03/02/2008','Học sinh','15 Lê Lợi','ai123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG13','Trương Thái Sang','05/05/1991','Giáo Viên','34 Hồ Xuân Hương','sang123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG14','Nguyễn Ngọc Kim','04/05/2009','Học sinh','35 Hồ Xuân Hương','kim123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG15','Hồ Trung Nguyên','05/05/2009','Học sinh','36 Hồ Xuân Hương','nguyen123@gmail.com','01/03/2021');
     THEM_DOC_GIA('DG16','Hồ Văn Chiến','05/05/2009','Học sinh','PH Triệu An Triệu Phong','chien123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG17','Nguyễn Quang Phong','05/02/2009','Học sinh','PH Triệu An Triệu Phong','Phong123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG18','Nguyễn Đức Trà','15/09/2009','Học sinh','HT Triệu An Triệu Phong','Tra@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG19','Nguyễn Văn Nhật Kỷ','05/01/2009','Học sinh','HT Triệu An Triệu Phong','Ky123@gmail.com','01/03/2021');
     THEM_DOC_GIA('DG20','Nguyễn Thị Ái Linh','31/05/2009','Học sinh','PH Triệu An Triệu Phong','Linh123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG21','Nguyễn Thị Mỹ Cẩm','05/12/2009','Học sinh','PH Triệu An Triệu Phong','Cam123@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG22','Nguyễn Thị Diệu Hương','21/02/2009','Học sinh','PH Triệu An Triệu Phong','Huong@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG23','Nguyễn Thị Lan Trinh','20/02/2009','Học sinh','PH Triệu An Triệu Phong','Trinh@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG24','Nguyễn Thị Bích Nhạn','02/09/2009','Học sinh','PH Triệu An Triệu Phong','Nhan@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG25','Võ Thị Ngọc Trâm','15/10/2009','Học sinh','HT Triệu An Triệu Phong','Tram@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG26','Dương Minh Quang','24/05/2009','Học sinh','HT Triệu An Triệu Phong','Quang@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG27','Nguyễn Thành Luân','15/10/2009','Học sinh','HT Triệu An Triệu Phong','Luan@gmail.com','01/03/2021');
    THEM_DOC_GIA('DG28','Nguyễn Lê Khánh Vy','05/10/2009','Học sinh','HT Triệu An Triệu Phong','Vy@gmail.com','01/03/2021');
end;

/*====================== THÊM ĐẦU SÁCH ====================*/
-- IMPORT  DATA

/*====================== THÊM CUỐN SÁCH====================*/
BEGIN
    them_cuon_sach('MS0001','GT0001');
    them_cuon_sach('MS0002','GT0001');
    them_cuon_sach('MS0003','GT0001');

    them_cuon_sach('MS0004','GT0002');
    them_cuon_sach('MS0005','GT0002');
    them_cuon_sach('MS0006','GT0002');

    them_cuon_sach('MS0007','GT0003');
    them_cuon_sach('MS0008','GT0003');
    them_cuon_sach('MS0009','GT0003');

    them_cuon_sach('MS0010','GT0004');
    them_cuon_sach('MS0011','GT0004');
    them_cuon_sach('MS0012','GT0004');

    them_cuon_sach('MS0013','GT0005');
    them_cuon_sach('MS0014','GT0005');
    them_cuon_sach('MS0015','GT0005');

    them_cuon_sach('MS0016','GT0006');
    them_cuon_sach('MS0017','GT0006');
    them_cuon_sach('MS0018','GT0006');

    them_cuon_sach('MS0019','GT0007');
    them_cuon_sach('MS0020','GT0007');
    them_cuon_sach('MS0021','GT0007');

    them_cuon_sach('MS0022','KH0001');
    them_cuon_sach('MS0023','KH0001');
    them_cuon_sach('MS0024','KH0001');

    them_cuon_sach('MS0025','KH0002');
    them_cuon_sach('MS0026','KH0002');
    them_cuon_sach('MS0027','KH0002');

    them_cuon_sach('MS0028','KH0003');
    them_cuon_sach('MS0029','KH0003');
    them_cuon_sach('MS0030','KH0003');

    them_cuon_sach('MS0031','KH0004');
    them_cuon_sach('MS0032','KH0004');
    them_cuon_sach('MS0033','KH0004');

    them_cuon_sach('MS0034','KH0005');
    them_cuon_sach('MS0035','KH0005');
    them_cuon_sach('MS0036','KH0005');

    them_cuon_sach('MS0037','KH0006');
    them_cuon_sach('MS0038','KH0006');
    them_cuon_sach('MS0039','KH0006');

    them_cuon_sach('MS0040','KH0007');
    them_cuon_sach('MS0041','KH0007');
    them_cuon_sach('MS0042','KH0007');

    them_cuon_sach('MS0043','TK0001');
    them_cuon_sach('MS0044','TK0001');
    them_cuon_sach('MS0045','TK0001');

    them_cuon_sach('MS0046','TK0002');
    them_cuon_sach('MS0047','TK0002');
    them_cuon_sach('MS0048','TK0002');

    them_cuon_sach('MS0049','TK0003');
    them_cuon_sach('MS0050','TK0003');
    them_cuon_sach('MS0051','TK0003');

    them_cuon_sach('MS0052','TK0004');
    them_cuon_sach('MS0053','TK0004');
    them_cuon_sach('MS0054','TK0004');

    them_cuon_sach('MS0055','TK0005');
    them_cuon_sach('MS0056','TK0005');
    them_cuon_sach('MS0057','TK0005');

    them_cuon_sach('MS0058','TK0006');
    them_cuon_sach('MS0059','TK0006');
    them_cuon_sach('MS0060','TK0006');

    them_cuon_sach('MS0061','TN0001');
    them_cuon_sach('MS0062','TN0001');
    them_cuon_sach('MS0063','TN0001');

    them_cuon_sach('MS0064','TN0002');
    them_cuon_sach('MS0065','TN0002');
    them_cuon_sach('MS0066','TN0002');

    them_cuon_sach('MS0067','TN0003');
    them_cuon_sach('MS0068','TN0003');
    them_cuon_sach('MS0069','TN0003');

    them_cuon_sach('MS0070','TN0004');
    them_cuon_sach('MS0071','TN0004');
    them_cuon_sach('MS0072','TN0004');
    them_cuon_sach('MS0073','TN0004');
    them_cuon_sach('MS0074','TN0004');
    them_cuon_sach('MS0075','TN0004');

    them_cuon_sach('MS0076','TN0005');
    them_cuon_sach('MS0077','TN0005');
    them_cuon_sach('MS0078','TN0005');

    them_cuon_sach('MS0079','TN0006');
    them_cuon_sach('MS0080','TN0006');
    them_cuon_sach('MS0081','TN0006');

    them_cuon_sach('MS0082','TN0007');
    them_cuon_sach('MS0083','TN0007');
    them_cuon_sach('MS0084','TN0007');

    them_cuon_sach('MS0085','TN0008');
    them_cuon_sach('MS0086','TN0008');
    them_cuon_sach('MS0087','TN0008');

    them_cuon_sach('MS0088','TN0009');
    them_cuon_sach('MS0089','TN0009');
    them_cuon_sach('MS0090','TN0009');

    them_cuon_sach('MS0091','TN0010');
    them_cuon_sach('MS0092','TN0010');
    them_cuon_sach('MS0093','TN0010');

    them_cuon_sach('MS0094','TN0011');
    them_cuon_sach('MS0095','TN0011');
    them_cuon_sach('MS0096','TN0011');

    them_cuon_sach('MS0097','TN0012');
    them_cuon_sach('MS0098','TN0012');
    them_cuon_sach('MS0099','TN0012');

    them_cuon_sach('MS0100','TN0013');
    them_cuon_sach('MS0101','TN0013');
    them_cuon_sach('MS0102','TN0013');

    them_cuon_sach('MS0103','TN0014');
    them_cuon_sach('MS0104','TN0014');
    them_cuon_sach('MS0105','TN0014');

    them_cuon_sach('MS0106','TN0015');
    them_cuon_sach('MS0107','TN0015');
    them_cuon_sach('MS0108','TN0015');

    them_cuon_sach('MS0109','TN0016');
    them_cuon_sach('MS0110','TN0016');
    them_cuon_sach('MS0111','TN0016');

    them_cuon_sach('MS0112','TN0017');
    them_cuon_sach('MS0113','TN0017');
    them_cuon_sach('MS0114','TN0017');

    them_cuon_sach('MS0115','TN0018');
    them_cuon_sach('MS0116','TN0018');
    them_cuon_sach('MS0117','TN0018');

    them_cuon_sach('MS0118','TN0019');
    them_cuon_sach('MS0119','TN0019');
    them_cuon_sach('MS0120','TN0019');

    them_cuon_sach('MS0121','TN0020');
    them_cuon_sach('MS0122','TN0020');
    them_cuon_sach('MS0123','TN0020');

    them_cuon_sach('MS0124','TN0021');
    them_cuon_sach('MS0125','TN0021');
    them_cuon_sach('MS0126','TN0021');

    them_cuon_sach('MS0127','TN0022');
    them_cuon_sach('MS0128','TN0022');
    them_cuon_sach('MS0129','TN0022');

    them_cuon_sach('MS0130','XH0001');
    them_cuon_sach('MS0131','XH0001');
    them_cuon_sach('MS0132','XH0001');

    them_cuon_sach('MS0133','XH0002');
    them_cuon_sach('MS0134','XH0002');
    them_cuon_sach('MS0135','XH0002');

    them_cuon_sach('MS0136','XH0003');
    them_cuon_sach('MS0137','XH0003');
    them_cuon_sach('MS0138','XH0003');

    them_cuon_sach('MS0139','XH0004');
    them_cuon_sach('MS0140','XH0004');
    them_cuon_sach('MS0141','XH0004');

    them_cuon_sach('MS0142','XH0005');
    them_cuon_sach('MS0143','XH0005');
    them_cuon_sach('MS0144','XH0005');

    them_cuon_sach('MS0145','XH0006');
    them_cuon_sach('MS0146','XH0006');
    them_cuon_sach('MS0147','XH0006');

    them_cuon_sach('MS0148','XH0007');
    them_cuon_sach('MS0149','XH0007');
    them_cuon_sach('MS0150','XH0007');

    them_cuon_sach('MS0151','XH0008');
    them_cuon_sach('MS0152','XH0008');
    them_cuon_sach('MS0153','XH0008');

    them_cuon_sach('MS0154','XH0009');
    them_cuon_sach('MS0155','XH0009');
    them_cuon_sach('MS0156','XH0009');

    them_cuon_sach('MS0157','XH0010');
    them_cuon_sach('MS0158','XH0010');
    them_cuon_sach('MS0159','XH0010');

    them_cuon_sach('MS0160','XH0011');
    them_cuon_sach('MS0161','XH0011');
    them_cuon_sach('MS0162','XH0011');

    them_cuon_sach('MS0163','XH0012');
    them_cuon_sach('MS0164','XH0012');
    them_cuon_sach('MS0165','XH0012');

    them_cuon_sach('MS0166','XH0013');
    them_cuon_sach('MS0167','XH0013');
    them_cuon_sach('MS0168','XH0013');

    them_cuon_sach('MS0169','XH0014');
    them_cuon_sach('MS0170','XH0014');
    them_cuon_sach('MS0171','XH0014');

    them_cuon_sach('MS0172','XH0015');
    them_cuon_sach('MS0173','XH0015');
    them_cuon_sach('MS0174','XH0015');

    them_cuon_sach('MS0175','XH0016');
    them_cuon_sach('MS0176','XH0016');
    them_cuon_sach('MS0177','XH0016');

    them_cuon_sach('MS0178','XH0017');
    them_cuon_sach('MS0179','XH0017');
    them_cuon_sach('MS0180','XH0017');

    them_cuon_sach('MS0181','XH0018');
    them_cuon_sach('MS0182','XH0018');
    them_cuon_sach('MS0183','XH0018');

    them_cuon_sach('MS0184','XH0019');
    them_cuon_sach('MS0185','XH0019');
    them_cuon_sach('MS0186','XH0019');

    them_cuon_sach('MS0187','XH0020');
    them_cuon_sach('MS0188','XH0020');
    them_cuon_sach('MS0189','XH0020');

    them_cuon_sach('MS0190','XH0021');
    them_cuon_sach('MS0191','XH0021');
    them_cuon_sach('MS0192','XH0021');

    them_cuon_sach('MS0193','XH0022');
    them_cuon_sach('MS0194','XH0022');
    them_cuon_sach('MS0195','XH0022');

    them_cuon_sach('MS0196','XH0023');
    them_cuon_sach('MS0197','XH0023');
    them_cuon_sach('MS0198','XH0023');

    them_cuon_sach('MS0199','XH0024');
    them_cuon_sach('MS0200','XH0024');
    them_cuon_sach('MS0201','XH0024');

    them_cuon_sach('MS0202','XH0025');
    them_cuon_sach('MS0203','XH0025');
    them_cuon_sach('MS0204','XH0025');

    them_cuon_sach('MS0205','XH0026');
    them_cuon_sach('MS0206','XH0026');
    them_cuon_sach('MS0207','XH0026');

    them_cuon_sach('MS0208','XH0027');
    them_cuon_sach('MS0209','XH0027');
    them_cuon_sach('MS0210','XH0027');

    them_cuon_sach('MS0211','XH0028');
    them_cuon_sach('MS0212','XH0028');
    them_cuon_sach('MS0213','XH0028');

    them_cuon_sach('MS0214','XH0029');
    them_cuon_sach('MS0215','XH0029');
    them_cuon_sach('MS0216','XH0029');

    them_cuon_sach('MS0217','XH0030');
    them_cuon_sach('MS0218','XH0030');
    them_cuon_sach('MS0219','XH0030');

    them_cuon_sach('MS0220','XH0031');
    them_cuon_sach('MS0221','XH0031');
    them_cuon_sach('MS0222','XH0031');

    them_cuon_sach('MS0223','XH0032');
    them_cuon_sach('MS0224','XH0032');
    them_cuon_sach('MS0225','XH0032');
END;


alter session set NLS_DATE_FORMAT = 'DD/MM/YYYY';
------------------Them phieu muon sach--------------------
begin
--them_phieumuonsach('PM01','DG01','02/03/2021');
    them_phieumuonsach('PM02','DG02','04/03/2021');
    them_phieumuonsach('PM03','DG03','02/03/2021');
    them_phieumuonsach('PM04','DG04','03/03/2021');
    them_phieumuonsach('PM05','DG05','03/03/2021');
    them_phieumuonsach('PM06', 'DG06',to_date('07/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM07', 'DG07',to_date('08/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM08', 'DG08',to_date('05/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM09', 'DG09',to_date('05/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM10', 'DG10',to_date('05/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM11', 'DG11',to_date('05/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM12', 'DG12',to_date('08/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM13', 'DG13',to_date('08/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM14', 'DG14',to_date('08/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM15', 'DG15',to_date('03/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM16', 'DG16',to_date('09/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM17', 'DG17',to_date('09/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM18', 'DG18',to_date('11/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM19', 'DG19',to_date('12/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM20', 'DG20',to_date('15/03/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM21', 'DG21',to_date('01/04/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM22', 'DG22',to_date('14/04/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM23', 'DG23',to_date('15/04/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM24', 'DG24',to_date('15/04/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM25', 'DG25',to_date('15/04/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM26', 'DG26',to_date('23/04/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM27', 'DG27',to_date('23/04/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM28', 'DG28',to_date('26/04/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM29', 'DG01',to_date('26/04/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM30', 'DG03',to_date('28/04/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM31', 'DG05',to_date('28/04/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM32', 'DG07',to_date('04/05/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM33', 'DG09',to_date('04/05/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM34', 'DG11',to_date('05/05/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM35', 'DG13',to_date('05/05/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM36', 'DG15',to_date('05/05/2021','dd/mm/yyyy'));
    them_phieumuonsach('PM37', 'DG17',to_date('06/05/2021','dd/mm/yyyy'));
     them_phieumuonsach('PM38', 'DG22',to_date('06/06/2021','dd/mm/yyyy'));
END;

------------------Them chi tiet muon sach--------------------
BEGIN
    --THEM_CTMS('PM01','MS0001');
   -- THEM_CTMS('PM01','MS0004');

    THEM_CTMS('PM02','MS0149');
    THEM_CTMS('PM02','MS0006');
    
    THEM_CTMS('PM03','MS0001');
    THEM_CTMS('PM03','MS0012');
    
    THEM_CTMS('PM04','MS0159');
    THEM_CTMS('PM04','MS0015');
    
    THEM_CTMS('PM05','MS0018');
    THEM_CTMS('PM05','MS0171');
    
    THEM_CTMS('PM06','MS0024');
    
    THEM_CTMS('PM07','MS0081');
    THEM_CTMS('PM07','MS0069');
    
    THEM_CTMS('PM08','MS0039');
    THEM_CTMS('PM08','MS0174');
    
    THEM_CTMS('PM09','MS0042');
    
    THEM_CTMS('PM10','MS0045');
    THEM_CTMS('PM10','MS0091');
    THEM_CTMS('PM10','MS0035');

    THEM_CTMS('PM11','MS0048');
    THEM_CTMS('PM11','MS0198');
    
    THEM_CTMS('PM12','MS0054');
    THEM_CTMS('PM12','MS0073');

    THEM_CTMS('PM13','MS0216');
    THEM_CTMS('PM13','MS0060');
    
    THEM_CTMS('PM14','MS0063');
    THEM_CTMS('PM14','MS0082');
    THEM_CTMS('PM14','MS0088');
    
    THEM_CTMS('PM15','MS0099');
    THEM_CTMS('PM15','MS0120');
    
    THEM_CTMS('PM16','MS0114');
    THEM_CTMS('PM16','MS0148');
    
    THEM_CTMS('PM17','MS0150');
    
    THEM_CTMS('PM18','MS0160');
    
    THEM_CTMS('PM19','MS0002');
    
    THEM_CTMS('PM20','MS0007');
    THEM_CTMS('PM20','MS0111');
    
    THEM_CTMS('PM21','MS0023');
    THEM_CTMS('PM21','MS0136');
    
    THEM_CTMS('PM22','MS0078');
    THEM_CTMS('PM22','MS0113');
    
    THEM_CTMS('PM23','MS0007');
    THEM_CTMS('PM23','MS0111');
    
    THEM_CTMS('PM24','MS0008');
    THEM_CTMS('PM24','MS0214');
    
    THEM_CTMS('PM25','MS0074');
    THEM_CTMS('PM25','MS0175');
    THEM_CTMS('PM25','MS0076');
    
    THEM_CTMS('PM26','MS0179');
    THEM_CTMS('PM26','MS0055');
    
    THEM_CTMS('PM27','MS0056');
    
    THEM_CTMS('PM28','MS0058');
    
    THEM_CTMS('PM29','MS0139');
    THEM_CTMS('PM29','MS0086');
    
    THEM_CTMS('PM30','MS0185');

    THEM_CTMS('PM31','MS0127');
    
    THEM_CTMS('PM32','MS0129');
    
    THEM_CTMS('PM33','MS0134');
    THEM_CTMS('PM33','MS0216');
    
    THEM_CTMS('PM34','MS0225');
    
    THEM_CTMS('PM35','MS0207');
    
    THEM_CTMS('PM36','MS0199');
    
    THEM_CTMS('PM37','MS0098');
    THEM_CTMS('PM37','MS0224');

    THEM_CTMS('PM38','MS0203');
END;

---------------------Them phieu tra sach--------------
-- IMPORT TỪ DATA
--INSERT INTO PHIEUTRASACH VALUES('PT01','DG01','07/06/2021',0);
INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT02','DG02',to_date('01/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT03','DG03',to_date('01/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT04','DG04',to_date('01/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT05','DG05',to_date('02/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT06','DG07',to_date('02/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT07','DG09',to_date('02/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT08','DG11',to_date('04/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT09','DG13',to_date('04/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT10','DG15',to_date('04/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT11','DG17',to_date('04/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT12','DG14',to_date('10/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT13','DG12',to_date('10/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT14','DG06',to_date('15/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT15','DG08',to_date('20/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT16','DG10',to_date('25/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT17','DG22',to_date('25/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT18','DG24',to_date('25/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT19','DG26',to_date('25/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT20','DG28',to_date('25/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT21','DG19',to_date('26/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT22','DG07',to_date('27/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT23','DG08',to_date('27/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT24','DG09',to_date('27/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT25','DG10',to_date('27/06/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT26','DG11',to_date('01/07/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT27','DG12',to_date('01/07/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT28','DG13',to_date('01/07/2021', 'DD/MM/YYYY'),0);

INSERT INTO PHIEUTRASACH (MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) VALUES ('PT29','DG14',to_date('01/07/2021', 'DD/MM/YYYY'),0);



---------------------Them chi tiet tra sach--------------
BEGIN
THEM_CTTS('PT01','MS0001');
THEM_CTTS('PT01','MS0004');
end;
    THEM_CTTS('PT02','MS0006');
    
    THEM_CTTS('PT03','MS0012');
    THEM_CTTS('PT03','MS0185');
    
    THEM_CTTS('PT04','MS0159');
    THEM_CTTS('PT04','MS0015');
    
    THEM_CTTS('PT05','MS0018');
    
    THEM_CTTS('PT06','MS0129');
    
    THEM_CTTS('PT07','MS0042');
    
    THEM_CTTS('PT08','MS0048');
    THEM_CTTS('PT08','MS0198');
    
    THEM_CTTS('PT09','MS0216');
    
    THEM_CTTS('PT10','MS0099');
    THEM_CTTS('PT10','MS0120');
    
    THEM_CTTS('PT11','MS0150');
    
    THEM_CTTS('PT12','MS0063');
    
    THEM_CTTS('PT13','MS0054');
    
    THEM_CTTS('PT14','MS0024');
    
    THEM_CTTS('PT15','MS0174');

    THEM_CTTS('PT16','MS0045');

    THEM_CTTS('PT17','MS0078');
    
    THEM_CTTS('PT18','MS0008');
    THEM_CTTS('PT18','MS0214');
    
    THEM_CTTS('PT19','MS0179');
    
    THEM_CTTS('PT20','MS0058');
    
    THEM_CTTS('PT21','MS0002');
    
    THEM_CTTS('PT22','MS0069');
    
    THEM_CTTS('PT23','MS0039');
    
    THEM_CTTS('PT24','MS0134');
    
    THEM_CTTS('PT25','MS0035');
    
    THEM_CTTS('PT26','MS0225');
    
    THEM_CTTS('PT27','MS0073');
    
    THEM_CTTS('PT28','MS0060');
    
    THEM_CTTS('PT29','MS0082');
    THEM_CTTS('PT29','MS0088'); 

END;


-----------------------Them hoa don-----------------

BEGIN
    THEM_HOA_DON('HD01', 'PT01', 20000);
    THEM_HOA_DON('HD02', 'PT02', 0);
    THEM_HOA_DON('HD03', 'PT03', 10000);
    THEM_HOA_DON('HD04', 'PT04',0);
    THEM_HOA_DON('HD05', 'PT05', 1000);
    THEM_HOA_DON('HD06', 'PT06', 0);
    THEM_HOA_DON('HD07', 'PT07', 0);
    THEM_HOA_DON('HD08', 'PT08',5000);
    THEM_HOA_DON('HD09', 'PT09', 0);
    THEM_HOA_DON('HD10', 'PT10', 10000);
    THEM_HOA_DON('HD11', 'PT11', 0);
    THEM_HOA_DON('HD12', 'PT12', 5000);
    THEM_HOA_DON('HD13', 'PT13', 5000);
    THEM_HOA_DON('HD14', 'PT14', 10000);
    THEM_HOA_DON('HD15', 'PT15', 20000);
    THEM_HOA_DON('HD16', 'PT16', 25000);
    THEM_HOA_DON('HD17', 'PT17', 0);
    THEM_HOA_DON('HD18', 'PT18',0);
    THEM_HOA_DON('HD19', 'PT19', 0);
    THEM_HOA_DON('HD20', 'PT20', 0);
    THEM_HOA_DON('HD21', 'PT21', 20000);
    THEM_HOA_DON('HD22', 'PT22', 25000);
    THEM_HOA_DON('HD23', 'PT23', 25000);
    THEM_HOA_DON('HD24', 'PT24', 0);
    THEM_HOA_DON('HD25', 'PT25', 25000);
    THEM_HOA_DON('HD26', 'PT26', 0);
    THEM_HOA_DON('HD27', 'PT27',25000);
    THEM_HOA_DON('HD28', 'PT28', 25000);
    THEM_HOA_DON('HD29', 'PT29', 50000);

END;


-----------------------Thêm người dùng-----------------
-- 1. quản lý || 2. Thủ thư
insert into nguoidung values('AiLinh', '123456',1);
insert into nguoidung values('HongHai', '123456',2);
insert into nguoidung values('BichCham', '123456',2);
insert into nguoidung values('NhatMinh', '123456',2);
insert into nguoidung values('ThaiDuong', '123456',2);



insert into DauSach(MaDausach) values ('GT0001');

/*
BEGIN
XOA_PHIEU_MUON_SACH('PM40');
end;
commit

update phieumuonsach
set ngaymuon = 
to_date ('02/03/2021',
'dd/mm/yyyy')
where maphieumuonsach ='PM03'

select madocgia, ngaymuon
from phieumuonsach
where ngaymuon=to_date('03/03/2021', 'dd/mm/yyyy');
BEGIN

THEM_CTTS('PT05','MS0012');
END;
*/

commit

select madausach, vitri
from dausach 
where madausach like 'GT%' or madausach like 'TK%';
