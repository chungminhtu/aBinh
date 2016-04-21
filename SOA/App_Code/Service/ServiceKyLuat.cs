using System;
using System.Linq;
using System.Web.Services;
using System.Collections.Generic;


[WebService]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class ServiceKyLuat : WebService
{

    CoSoDuLieuTichHop db = new CoSoDuLieuTichHop();


    #region KỶ LUẬT ĐẢNG VIÊN
    //--------------- VÙNG DÀNH CHO QUẢN TRỊ HỆ THỐNG CỦA QUẢN LÝ KỶ LUẬT ĐẢNG VIÊN --------------------------

    [WebMethod]
    public List<ViewALLCB> DanhSachKyLuat(string username, string password)
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
    public List<ViewALLCB> TimKiemKyLuat(string username, string password, TimKiem tk)
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
    public bool LuuKyLuat(string username, string password, KyLuat kh)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                KyLuat dv = (from c in db.KyLuats
                               where c.ID == kh.ID
                               select c).FirstOrDefault();
                bool isInsert = false;
                if (dv == null)
                {
                    dv = new KyLuat();
                    isInsert = true;
                }

                dv.ID = kh.ID; 

                dv.NgayBiKyluat = kh.NgayBiKyluat;
                dv.LyDoKyLuat = kh.LyDoKyLuat;

                if (isInsert == true)
                {
                    db.KyLuats.Add(dv);
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
    public ViewALLCB GetThongTin1KyLuat(string username, string password, int MaCB)
    {
        try
        {
            authen a = new authen();
            bool bAuthen = a.fAuthen(username, password);
            if (bAuthen)
            {
                ViewALLCB KyLuat = (from c in db.ViewALLCBs
                                      where c.ID == MaCB
                                      select c).FirstOrDefault();
                return KyLuat;
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

