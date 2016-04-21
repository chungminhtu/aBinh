using System;
using System.Linq;
using System.Web.Services;
using System.Collections.Generic;


[WebService]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class ServiceCanBo : WebService
{

    CoSoDuLieuTichHop db = new CoSoDuLieuTichHop();


    #region CÁN BỘ
    //--------------- VÙNG DÀNH CHO QUẢN TRỊ HỆ THỐNG CỦA QUẢN LÝ CÁN BỘ --------------------------

    [WebMethod]
    public List<ViewALLCB> DanhSachCanBo(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.ViewALLCBs.ToList();
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
    public List<ViewALLCB> TimKiemCanBo(string username, string password, TimKiem tk)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {

                return (from k in db.ViewALLCBs
                        where tk.HoTen != "" ? k.HoTenKhaiSinh.Contains(tk.HoTen) : true
                            && tk.MaCB != "" ? k.SoHieuCB.Contains(tk.MaCB) : true
                            && tk.GioiTinh != "" ? k.GioiTinh == tk.GioiTinh : true
                            && tk.TrinhDoHocVan != "" ? k.TrinhDoHocVan == tk.TrinhDoHocVan : true
                            && tk.NgheNghiep != "" ? k.NgheNghiepKhiTuyenDung == tk.NgheNghiep : true
                            && tk.ThanhPhanGiaDinh != "" ? k.ThanhPhanGiaDinh == tk.ThanhPhanGiaDinh : true
                            && tk.DanToc != "" ? k.DanToc == tk.DanToc : true
                            && tk.TonGiao != "" ? k.TonGiao == tk.TonGiao : true
                        select k).ToList();
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
    public bool ThemCanBo(string username, string password, CanBo kh)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                db.CanBoes.Add(kh);
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
    public bool SuaCanBo(string username, string password, CanBo kh)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                CanBo cb = (from c in db.CanBoes
                            where c.ID == kh.ID
                            select c).FirstOrDefault();

                cb.ID = kh.ID;
                cb.HoTenKhaiSinh = kh.HoTenKhaiSinh;
                cb.TenGoiKhac = kh.TenGoiKhac;
                cb.NgaySinh = kh.NgaySinh;
                cb.GioiTinh = kh.GioiTinh;
                cb.HoKhauThuongTru = kh.HoKhauThuongTru;
                cb.NoiSinh = kh.NoiSinh;
                cb.QueQuanTinh = kh.QueQuanTinh;
                cb.QueQuanHuyen = kh.QueQuanHuyen;
                cb.QueQuanXa = kh.QueQuanXa;
                cb.NoiOHienNay = kh.NoiOHienNay;
                cb.DanToc = kh.DanToc;
                cb.TonGiao = kh.TonGiao;
                cb.ThanhPhanGiaDinh = kh.ThanhPhanGiaDinh;
                cb.TinhTrangHonNhan = kh.TinhTrangHonNhan;
                cb.SoCMND = kh.SoCMND;
                cb.NgayCapCMND = kh.NgayCapCMND;
                cb.NoiCapCMND = kh.NoiCapCMND;
                cb.Anh4x6 = kh.Anh4x6;
                cb.Email = kh.Email;
                cb.SDT = kh.SDT;
                cb.NgheNghiepKhiTuyenDung = kh.NgheNghiepKhiTuyenDung;
                cb.NgayTuyenDung = kh.NgayTuyenDung;
                cb.TenCoQuanTuyenDung = kh.TenCoQuanTuyenDung;
                cb.NgayVaoCoQuanHienTai = kh.NgayVaoCoQuanHienTai;
                cb.NgayNhapNgu = kh.NgayNhapNgu;
                cb.NgayXuatNgu = kh.NgayXuatNgu;
                cb.QuanHamCaoNhat = kh.QuanHamCaoNhat;
                cb.TrinhDoHocVan = kh.TrinhDoHocVan;
                cb.HocHam = kh.HocHam;
                cb.HocVi = kh.HocVi;
                cb.TrinhDoQuanLyNhaNuoc = kh.TrinhDoQuanLyNhaNuoc;
                cb.TrinhDoLyLuanChinhTri = kh.TrinhDoLyLuanChinhTri;
                cb.TrinhDoChuyenMonCaoNhat = kh.TrinhDoChuyenMonCaoNhat;
                cb.ChuyenNganh = kh.ChuyenNganh;
                cb.TrinhDoTinHoc = kh.TrinhDoTinHoc;
                cb.TrinhDoNgoaiNguThuNhat = kh.TrinhDoNgoaiNguThuNhat;
                cb.NgoaiNguThuNhat = kh.NgoaiNguThuNhat;
                cb.TrinhDoNgoaiNguThuHai = kh.TrinhDoNgoaiNguThuHai;
                cb.NgoaiNguThuHai = kh.NgoaiNguThuHai;
                cb.KhenThuong = kh.KhenThuong;
                cb.KyLuat = kh.KyLuat;
                cb.TinhTrangSucKhoe = kh.TinhTrangSucKhoe;
                cb.LaThuongBinh = kh.LaThuongBinh;
                cb.SoHieuCB = kh.SoHieuCB;
                cb.DoiTuong = kh.DoiTuong;
                cb.HuongLuong = kh.HuongLuong;
                cb.DonViQuanLy = kh.DonViQuanLy;
                cb.DonViCongTac = kh.DonViCongTac;
                cb.MaNgachCongChuc = kh.MaNgachCongChuc;
                cb.NgayHuong = kh.NgayHuong;
                cb.BacLuong = kh.BacLuong;
                cb.HeSoLuong = kh.HeSoLuong;
                cb.ChucVuHienTai = kh.ChucVuHienTai;
                cb.ChucVuKiemNhiem = kh.ChucVuKiemNhiem;
                cb.PhuCapChucVu = kh.PhuCapChucVu;
                cb.CongViecChinhDangLam = kh.CongViecChinhDangLam;

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
    public bool XoaCanBo(string username, string password, int MaCB)
    {
        try
        {
            authen a1 = new authen();
            bool bAuthen = a1.fAuthen(username, password);
            if (bAuthen)
            {
                db.CanBoes.Remove(db.CanBoes.FirstOrDefault(a => a.ID == MaCB));
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
    public ViewALLCB GetThongTin1CanBo(string username, string password, int MaCB)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                ViewALLCB CanBo = (from c in db.ViewALLCBs
                               where c.ID == MaCB
                               select c).FirstOrDefault();
                return CanBo;
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

