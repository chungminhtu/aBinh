﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

public partial class CoSoDuLieuTichHop : DbContext
{
    public CoSoDuLieuTichHop()
        : base("name=CoSoDuLieuTichHop")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public DbSet<CanBo> CanBoes { get; set; }
    public DbSet<CongViecChinhDangLam> CongViecChinhDangLams { get; set; }
    public DbSet<DangVien> DangViens { get; set; }
    public DbSet<DanToc> DanTocs { get; set; }
    public DbSet<GioiTinh> GioiTinhs { get; set; }
    public DbSet<HocHam> HocHams { get; set; }
    public DbSet<HocVi> HocVis { get; set; }
    public DbSet<KyLuat> KyLuats { get; set; }
    public DbSet<NgheNghiepKhiTuyenDung> NgheNghiepKhiTuyenDungs { get; set; }
    public DbSet<QuanHamCaoNhat> QuanHamCaoNhats { get; set; }
    public DbSet<SoYeuLyLich> SoYeuLyLiches { get; set; }
    public DbSet<sysdiagram> sysdiagrams { get; set; }
    public DbSet<ThanhPhanGiaDinh> ThanhPhanGiaDinhs { get; set; }
    public DbSet<ThuongBinh> ThuongBinhs { get; set; }
    public DbSet<TinhTrangSucKhoe> TinhTrangSucKhoes { get; set; }
    public DbSet<TonGiao> TonGiaos { get; set; }
    public DbSet<TrinhDoHocVan> TrinhDoHocVans { get; set; }
    public DbSet<TrinhDoLyLuanChinhTri> TrinhDoLyLuanChinhTris { get; set; }
    public DbSet<TrinhDoQuanLyNhaNuoc> TrinhDoQuanLyNhaNuocs { get; set; }
    public DbSet<ViewALLCB> ViewALLCBs { get; set; }
}
