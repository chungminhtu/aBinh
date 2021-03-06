﻿using System;
using System.Linq;
using System.Web.Services;
using System.Collections.Generic;


[WebService]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class ServiceDangVien : WebService
{

    CoSoDuLieuTichHop db = new CoSoDuLieuTichHop();


    #region ĐẢNG VIÊN
    //--------------- VÙNG DÀNH CHO QUẢN TRỊ HỆ THỐNG CỦA QUẢN LÝ ĐẢNG VIÊN --------------------------

    [WebMethod]
    public List<ViewALLCB> DanhSachDangVien(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.ViewALLCBs.Where(x => x.KhongLaDangVien != 1).ToList();
            }
            else
                return null;
        }
        catch (Exception ex)
        {
            return null;
        }
    }


    [WebMethod]
    public List<ViewALLCB> TimKiemDangVien(string username, string password, TimKiem tk)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                var ab =
                  (from k in db.ViewALLCBs
                   where (tk.HoTen != "" ? k.HoTenKhaiSinh.Contains(tk.HoTen) : true)
                       && (tk.MaCB != "" ? k.MaCoSoDangQLDangVien.Contains(tk.MaCB) : true)
                       && (tk.GioiTinh != "" ? k.GioiTinh == tk.GioiTinh : true)
                       && (tk.ChuyenMonNghiepVu != "" ? k.ChuyenNganh == tk.ChuyenMonNghiepVu : true)
                   select k).Where(x => x.KhongLaDangVien != 1).ToList();

                return ab;
            }
            else
                return null;
        }
        catch (Exception ex)
        {
            return null;
        }
    }



    [WebMethod]
    public bool LuuDangVien(string username, string password, DangVien kh)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                DangVien dv = (from c in db.DangViens
                               where c.ID == kh.ID
                               select c).FirstOrDefault();
                bool isInsert = false;
                if (dv == null)
                {
                    dv = new DangVien();
                    isInsert = true;
                }

                dv.ID = kh.ID;
                dv.NgayVaoDang = kh.NgayVaoDang;
                dv.ChiBoKetNap = kh.ChiBoKetNap;
                dv.NguoiGioiThieu1 = kh.NguoiGioiThieu1;
                dv.ChucVuNguoiGioiThieu1 = kh.ChucVuNguoiGioiThieu1;
                dv.NgheNghiepKhiVaoDang = kh.NgheNghiepKhiVaoDang;
                dv.NguoiGioiThieu2 = kh.NguoiGioiThieu2;
                dv.GhiChuVeNguoiGioiThieu2 = kh.GhiChuVeNguoiGioiThieu2;
                dv.NgayChinhThucVaoDang = kh.NgayChinhThucVaoDang;
                dv.SoLyLichDangVien = kh.SoLyLichDangVien;
                dv.SoTheDangVien = kh.SoTheDangVien;
                dv.MaCoSoDangQLDangVien = kh.MaCoSoDangQLDangVien;
                dv.ChucVuTrongDang = kh.ChucVuTrongDang;

                if (isInsert == true)
                {
                    db.DangViens.Add(dv);
                }

                db.SaveChanges();
                return true;
            }
            else
                return bAuthen;
        }
        catch (Exception ex)
        {
            return false;
        }
    }

    [WebMethod]
    public bool XoaDangVien(string username, string password, int MaCB)
    {
        try
        {
            authen a1 = new authen();
            bool bAuthen = a1.fAuthen(username, password);
            if (bAuthen)
            {

                CanBo dv = (from c in db.CanBoes
                            where c.ID == MaCB
                            select c).FirstOrDefault();
                dv.KhongLaDangVien = 1;
                db.SaveChanges();
                return true;
            }
            else
                return bAuthen;
        }
        catch (Exception ex)
        {
            return false;
        }
    }




    [WebMethod]
    public ViewALLCB GetThongTin1DangVien(string username, string password, int MaCB)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                ViewALLCB DangVien = (from c in db.ViewALLCBs
                                      where c.ID == MaCB
                                      select c).FirstOrDefault();
                return DangVien;
            }
            else
                return null;
        }
        catch (Exception ex)
        {
            return null;
        }
    }



    //-------------------------------------------------------------------------------------------
    #endregion

}

