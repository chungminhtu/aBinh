﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class CanBo
{
    public int ID { get; set; }
    public string HoTenKhaiSinh { get; set; }
    public string TenGoiKhac { get; set; }
    public string NgaySinh { get; set; }
    public string GioiTinh { get; set; }
    public string HoKhauThuongTru { get; set; }
    public string NoiSinh { get; set; }
    public string QueQuanTinh { get; set; }
    public string QueQuanHuyen { get; set; }
    public string QueQuanXa { get; set; }
    public string NoiOHienNay { get; set; }
    public string DanToc { get; set; }
    public string TonGiao { get; set; }
    public string ThanhPhanGiaDinh { get; set; }
    public string TinhTrangHonNhan { get; set; }
    public string SoCMND { get; set; }
    public string NgayCapCMND { get; set; }
    public string NoiCapCMND { get; set; }
    public string Anh4x6 { get; set; }
    public string Email { get; set; }
    public string SDT { get; set; }
    public string NgheNghiepKhiTuyenDung { get; set; }
    public string NgayTuyenDung { get; set; }
    public string TenCoQuanTuyenDung { get; set; }
    public string NgayVaoCoQuanHienTai { get; set; }
    public string NgayNhapNgu { get; set; }
    public string NgayXuatNgu { get; set; }
    public string QuanHamCaoNhat { get; set; }
    public string TrinhDoHocVan { get; set; }
    public string HocHam { get; set; }
    public string HocVi { get; set; }
    public string TrinhDoQuanLyNhaNuoc { get; set; }
    public string TrinhDoLyLuanChinhTri { get; set; }
    public string TrinhDoChuyenMonCaoNhat { get; set; }
    public string ChuyenNganh { get; set; }
    public string TrinhDoTinHoc { get; set; }
    public string TrinhDoNgoaiNguThuNhat { get; set; }
    public string NgoaiNguThuNhat { get; set; }
    public string TrinhDoNgoaiNguThuHai { get; set; }
    public string NgoaiNguThuHai { get; set; }
    public string KhenThuong { get; set; }
    public string KyLuat { get; set; }
    public string TinhTrangSucKhoe { get; set; }
    public string LaThuongBinh { get; set; }
    public string SoHieuCB { get; set; }
    public string DoiTuong { get; set; }
    public string HuongLuong { get; set; }
    public string DonViQuanLy { get; set; }
    public string DonViCongTac { get; set; }
    public string MaNgachCongChuc { get; set; }
    public string NgayHuong { get; set; }
    public Nullable<int> BacLuong { get; set; }
    public Nullable<decimal> HeSoLuong { get; set; }
    public string ChucVuHienTai { get; set; }
    public string ChucVuKiemNhiem { get; set; }
    public Nullable<decimal> PhuCapChucVu { get; set; }
    public string CongViecChinhDangLam { get; set; }
}

public partial class DangVien
{
    public int ID { get; set; }
    public string NgayVaoDang { get; set; }
    public string ChiBoKetNap { get; set; }
    public string NguoiGioiThieu1 { get; set; }
    public string ChucVuNguoiGioiThieu1 { get; set; }
    public string NgheNghiepKhiVaoDang { get; set; }
    public string NguoiGioiThieu2 { get; set; }
    public string GhiChuVeNguoiGioiThieu2 { get; set; }
    public string NgayChinhThucVaoDang { get; set; }
    public string SoLyLichDangVien { get; set; }
    public string SoTheDangVien { get; set; }
    public string MaCoSoDangQLDangVien { get; set; }
    public string ChucVuTrongDang { get; set; }
}

public partial class KyLuat
{
    public int ID { get; set; }
    public string NgayBiKyluat { get; set; }
    public string LyDoKyLuat { get; set; }
}

public partial class sysdiagram
{
    public string name { get; set; }
    public int principal_id { get; set; }
    public int diagram_id { get; set; }
    public Nullable<int> version { get; set; }
    public byte[] definition { get; set; }
}

public partial class ViewALLCB
{
    public int ID { get; set; }
    public string HoTenKhaiSinh { get; set; }
    public string TenGoiKhac { get; set; }
    public string NgaySinh { get; set; }
    public string GioiTinh { get; set; }
    public string HoKhauThuongTru { get; set; }
    public string NoiSinh { get; set; }
    public string QueQuanTinh { get; set; }
    public string QueQuanHuyen { get; set; }
    public string QueQuanXa { get; set; }
    public string NoiOHienNay { get; set; }
    public string DanToc { get; set; }
    public string TonGiao { get; set; }
    public string ThanhPhanGiaDinh { get; set; }
    public string TinhTrangHonNhan { get; set; }
    public string SoCMND { get; set; }
    public string NgayCapCMND { get; set; }
    public string NoiCapCMND { get; set; }
    public string Anh4x6 { get; set; }
    public string Email { get; set; }
    public string SDT { get; set; }
    public string NgheNghiepKhiTuyenDung { get; set; }
    public string NgayTuyenDung { get; set; }
    public string TenCoQuanTuyenDung { get; set; }
    public string NgayVaoCoQuanHienTai { get; set; }
    public string NgayNhapNgu { get; set; }
    public string NgayXuatNgu { get; set; }
    public string QuanHamCaoNhat { get; set; }
    public string TrinhDoHocVan { get; set; }
    public string HocHam { get; set; }
    public string HocVi { get; set; }
    public string TrinhDoQuanLyNhaNuoc { get; set; }
    public string TrinhDoLyLuanChinhTri { get; set; }
    public string TrinhDoChuyenMonCaoNhat { get; set; }
    public string ChuyenNganh { get; set; }
    public string TrinhDoTinHoc { get; set; }
    public string TrinhDoNgoaiNguThuNhat { get; set; }
    public string NgoaiNguThuNhat { get; set; }
    public string TrinhDoNgoaiNguThuHai { get; set; }
    public string NgoaiNguThuHai { get; set; }
    public string KhenThuong { get; set; }
    public string KyLuat { get; set; }
    public string TinhTrangSucKhoe { get; set; }
    public string LaThuongBinh { get; set; }
    public string SoHieuCB { get; set; }
    public string DoiTuong { get; set; }
    public string HuongLuong { get; set; }
    public string DonViQuanLy { get; set; }
    public string DonViCongTac { get; set; }
    public string MaNgachCongChuc { get; set; }
    public string NgayHuong { get; set; }
    public Nullable<int> BacLuong { get; set; }
    public Nullable<decimal> HeSoLuong { get; set; }
    public string ChucVuHienTai { get; set; }
    public string ChucVuKiemNhiem { get; set; }
    public Nullable<decimal> PhuCapChucVu { get; set; }
    public string CongViecChinhDangLam { get; set; }
    public string NgayVaoDang { get; set; }
    public string ChiBoKetNap { get; set; }
    public string NguoiGioiThieu1 { get; set; }
    public string ChucVuNguoiGioiThieu1 { get; set; }
    public string NgheNghiepKhiVaoDang { get; set; }
    public string NguoiGioiThieu2 { get; set; }
    public string GhiChuVeNguoiGioiThieu2 { get; set; }
    public string NgayChinhThucVaoDang { get; set; }
    public string SoLyLichDangVien { get; set; }
    public string SoTheDangVien { get; set; }
    public string MaCoSoDangQLDangVien { get; set; }
    public string ChucVuTrongDang { get; set; }
    public string NgayBiKyluat { get; set; }
    public string LyDoKyLuat { get; set; }
}