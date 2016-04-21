using System;

/// <summary>
/// Summary description for authen
/// </summary>
public class authen
{
    public authen()
	{}
	//
	// TODO: Add constructor logic here
	//
    public bool fAuthen(String username, String password)
    {
        try{
            if (username == "TheBinh" && password == "12345678") 
                return true;
        } catch (Exception ex) {
        }
        return false;
    }
}

public class TimKiem
{
    public string HoTen { get; set; }
    public string GioiTinh { get; set; }
    public string MaCB { get; set; }
    public string ChuyenMonNghiepVu { get; set; }
    public string TrinhDoHocVan { get; set; }
    public string NgheNghiep { get; set; }
    public string ThanhPhanGiaDinh { get; set; }
    public string DanToc { get; set; }
    public string TonGiao { get; set; } 
}