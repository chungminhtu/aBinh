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
                        where (tk.HoTen != "" ? k.HoTenKhaiSinh.Contains(tk.HoTen) : true)
                            && (tk.MaCB != "" ? k.SoHieuCB.Contains(tk.MaCB) : true)
                            && (tk.GioiTinh != "" ? k.GioiTinh == tk.GioiTinh : true)
                            && (tk.TrinhDoHocVan != "" ? k.TrinhDoHocVan == tk.TrinhDoHocVan : true)
                            && (tk.NgheNghiep != "" ? k.NgheNghiepKhiTuyenDung == tk.NgheNghiep : true)
                            && (tk.ThanhPhanGiaDinh != "" ? k.ThanhPhanGiaDinh == tk.ThanhPhanGiaDinh : true)
                            && (tk.DanToc != "" ? k.DanToc == tk.DanToc : true)
                            && (tk.TonGiao != "" ? k.TonGiao == tk.TonGiao : true)
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
    public bool ThemCanBo(string username, string password, ViewModel kh)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {

                SoYeuLyLich ll = new SoYeuLyLich();

                ll.ID = kh.ID;
                ll.HoTenKhaiSinh = kh.HoTenKhaiSinh;
                ll.TenGoiKhac = kh.TenGoiKhac;
                ll.NgaySinh = kh.NgaySinh;
                ll.GioiTinh = kh.GioiTinh;
                ll.HoKhauThuongTru = kh.HoKhauThuongTru;
                ll.NoiSinh = kh.NoiSinh;
                ll.QueQuanTinh = kh.QueQuanTinh;
                ll.QueQuanHuyen = kh.QueQuanHuyen;
                ll.QueQuanXa = kh.QueQuanXa;
                ll.NoiOHienNay = kh.NoiOHienNay;
                ll.DanToc = kh.DanToc;
                ll.TonGiao = kh.TonGiao;
                ll.ThanhPhanGiaDinh = kh.ThanhPhanGiaDinh;
                ll.TinhTrangHonNhan = kh.TinhTrangHonNhan;
                ll.SoCMND = kh.SoCMND;
                ll.NgayCapCMND = kh.NgayCapCMND;
                ll.NoiCapCMND = kh.NoiCapCMND;
                ll.Image = kh.Image;
                ll.Email = kh.Email;
                ll.SDT = kh.SDT;

                db.SoYeuLyLiches.Add(ll);
                db.SaveChanges();

                CanBo cb = new CanBo();

                cb.ID = db.SoYeuLyLiches.Max(x => x.ID);
                cb.KhongLaDangVien = 0;
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

                db.CanBoes.Add(cb);

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
    public bool SuaCanBo(string username, string password, ViewModel kh)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                SoYeuLyLich ll = (from c in db.SoYeuLyLiches
                                  where c.ID == kh.ID
                                  select c).FirstOrDefault();

                ll.ID = kh.ID;
                ll.HoTenKhaiSinh = kh.HoTenKhaiSinh;
                ll.TenGoiKhac = kh.TenGoiKhac;
                ll.NgaySinh = kh.NgaySinh;
                ll.GioiTinh = kh.GioiTinh;
                ll.HoKhauThuongTru = kh.HoKhauThuongTru;
                ll.NoiSinh = kh.NoiSinh;
                ll.QueQuanTinh = kh.QueQuanTinh;
                ll.QueQuanHuyen = kh.QueQuanHuyen;
                ll.QueQuanXa = kh.QueQuanXa;
                ll.NoiOHienNay = kh.NoiOHienNay;
                ll.DanToc = kh.DanToc;
                ll.TonGiao = kh.TonGiao;
                ll.ThanhPhanGiaDinh = kh.ThanhPhanGiaDinh;
                ll.TinhTrangHonNhan = kh.TinhTrangHonNhan;
                ll.SoCMND = kh.SoCMND;
                ll.NgayCapCMND = kh.NgayCapCMND;
                ll.NoiCapCMND = kh.NoiCapCMND;
                ll.Image = kh.Image;
                ll.Email = kh.Email;
                ll.SDT = kh.SDT;


                CanBo cb = (from c in db.CanBoes
                            where c.ID == kh.ID
                            select c).FirstOrDefault();

                cb.ID = kh.ID;
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
                db.SoYeuLyLiches.Remove(db.SoYeuLyLiches.FirstOrDefault(a => a.ID == MaCB));
                db.DangViens.Remove(db.DangViens.FirstOrDefault(a => a.ID == MaCB));
                db.KyLuats.Remove(db.KyLuats.FirstOrDefault(a => a.ID == MaCB));
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


    #region COMBOBOX
    //--------------- VÙNG DÀNH CHO QUẢN TRỊ COMBOBOX --------------------------


    [WebMethod]
    public List<NgheNghiepKhiTuyenDung> NgheNghiepKhiTuyenDung(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.NgheNghiepKhiTuyenDungs.ToList();
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
    public List<QuanHamCaoNhat> QuanHamCaoNhat(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.QuanHamCaoNhats.ToList();
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
    public List<ThanhPhanGiaDinh> ThanhPhanGiaDinh(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.ThanhPhanGiaDinhs.ToList();
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
    public List<ThuongBinh> ThuongBinh(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.ThuongBinhs.ToList();
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
    public List<TinhTrangSucKhoe> TinhTrangSucKhoe(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.TinhTrangSucKhoes.ToList();
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
    public List<TonGiao> TonGiao(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.TonGiaos.ToList();
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
    public List<TrinhDoHocVan> TrinhDoHocVan(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.TrinhDoHocVans.ToList();
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
    public List<TrinhDoLyLuanChinhTri> TrinhDoLyLuanChinhTri(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.TrinhDoLyLuanChinhTris.ToList();
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
    public List<TrinhDoQuanLyNhaNuoc> TrinhDoQuanLyNhaNuoc(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.TrinhDoQuanLyNhaNuocs.ToList();
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
    public List<DanToc> DanToc(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.DanTocs.ToList();
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
    public List<GioiTinh> GioiTinh(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.GioiTinhs.ToList();
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
    public List<HocHam> HocHam(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.HocHams.ToList();
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
    public List<HocVi> HocVi(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.HocVis.ToList();
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
    public List<CongViecChinhDangLam> CongViecChinhDangLam(string username, string password)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.CongViecChinhDangLams.ToList();
            }
            else
                return null;
        }
        catch (Exception ex)
        {
            return null;
        }
    }



    //------------------------------------------------------------------------------
    #endregion

    #region DIAPHUONG

    [WebMethod]
    public List<DiaPhuong> LoadTinh(string username, string password)
    {
        try
        {
            List<DiaPhuong> dp = new List<DiaPhuong>();
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                dp.Add(new DiaPhuong());
                dp.AddRange(db.DiaPhuongs.Where(x => x.TYPE == "P").ToList());
                return dp;
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
    public List<DiaPhuong> LoadHuyen(string username, string password, int? ID)
    {
        try
        {
            List<DiaPhuong> dp = new List<DiaPhuong>();
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                dp.Add(new DiaPhuong());
                dp.AddRange(db.DiaPhuongs.Where(x => x.TYPE == "D" && x.ParentID == ID).ToList());
                return dp;
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
    public List<DiaPhuong> LoadXa(string username, string password, int? ID)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                return db.DiaPhuongs.Where(x => x.TYPE == "W" && x.ParentID == ID).ToList();
            }
            else
                return null;
        }
        catch (Exception ex)
        {
            return null;
        }
    }

    #endregion
}

