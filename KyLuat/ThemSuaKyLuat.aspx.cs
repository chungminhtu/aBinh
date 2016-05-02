using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using SOA;

public partial class ThemSuaKyLuat : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateRequiredData();
        }
    }


    private void PopulateRequiredData()
    {

        ServiceKyLuat es = new ServiceKyLuat();
        try
        {
            var id = Common.TryParseObjectToInt(Request.QueryString["ID"] + "");
            var item = es.GetThongTin1KyLuat("TheBinh", "12345678", id);

            if (id != 0)
            {
                Button1.Text = "Lưu Thông Tin Đảng viên";


                txtNgayVaoDang.Text = item.NgayVaoDang;
                txtChiBoKetNap.Text = item.ChiBoKetNap;
                txtNguoiGioiThieu1.Text = item.NguoiGioiThieu1;
                txtChucVuNguoiGioiThieu1.Text = item.ChucVuNguoiGioiThieu1;
                txtNgheNghiepKhiVaoDang.Text = item.NgheNghiepKhiVaoDang;
                txtNguoiGioiThieu2.Text = item.NguoiGioiThieu2;
                txtGhiChuVeNguoiGioiThieu2.Text = item.GhiChuVeNguoiGioiThieu2;
                txtNgayChinhThucVaoDang.Text = item.NgayChinhThucVaoDang;
                txtSoLyLichKyLuat.Text = item.SoLyLichDangVien;
                txtSoTheKyLuat.Text = item.SoTheDangVien;
                txtMaCoSoDangQLKyLuat.Text = item.MaCoSoDangQLDangVien;
                txtChucVuTrongDang.Text = item.ChucVuTrongDang;

                txtNgayBiKyluat.Text = item.NgayBiKyluat;
                txtLyDoKyLuat.Text = item.LyDoKyLuat;

                txtHoTenKhaiSinh.Text = item.HoTenKhaiSinh;
                txtTenGoiKhac.Text = item.TenGoiKhac;
                txtNgaySinh.Text = item.NgaySinh;
                txtGioiTinh.Text = item.GioiTinh;
                txtHoKhauThuongTru.Text = item.HoKhauThuongTru;
                txtNoiSinh.Text = item.NoiSinh;
                txtQueQuanTinh.Text = item.QueQuanTinh;
                txtQueQuanHuyen.Text = item.QueQuanHuyen;
                txtQueQuanXa.Text = item.QueQuanXa;
                txtNoiOHienNay.Text = item.NoiOHienNay;
                txtDanToc.Text = item.DanToc;
                txtTonGiao.Text = item.TonGiao;
                txtThanhPhanGiaDinh.Text = item.ThanhPhanGiaDinh;
                txtTinhTrangHonNhan.Text = item.TinhTrangHonNhan;
                txtSoCMND.Text = item.SoCMND;
                txtNgayCapCMND.Text = item.NgayCapCMND;
                txtNoiCapCMND.Text = item.NoiCapCMND;
                imgAnhDaiDien.ImageUrl = item.Image;
                txtEmail.Text = item.Email;
                txtSDT.Text = item.SDT;
                txtNgheNghiepKhiTuyenDung.Text = item.NgheNghiepKhiTuyenDung;
                txtNgayTuyenDung.Text = item.NgayTuyenDung;
                txtTenCoQuanTuyenDung.Text = item.TenCoQuanTuyenDung;
                txtNgayVaoCoQuanHienTai.Text = item.NgayVaoCoQuanHienTai;
                txtNgayNhapNgu.Text = item.NgayNhapNgu;
                txtNgayXuatNgu.Text = item.NgayXuatNgu;
                txtQuanHamCaoNhat.Text = item.QuanHamCaoNhat;
                txtTrinhDoHocVan.Text = item.TrinhDoHocVan;
                txtHocHam.Text = item.HocHam;
                txtHocVi.Text = item.HocVi;
                txtTrinhDoQuanLyNhaNuoc.Text = item.TrinhDoQuanLyNhaNuoc;
                txtTrinhDoLyLuanChinhTri.Text = item.TrinhDoLyLuanChinhTri;
                txtTrinhDoChuyenMonCaoNhat.Text = item.TrinhDoChuyenMonCaoNhat;
                txtChuyenNganh.Text = item.ChuyenNganh;
                txtTrinhDoTinHoc.Text = item.TrinhDoTinHoc;
                txtTrinhDoNgoaiNguThuNhat.Text = item.TrinhDoNgoaiNguThuNhat;
                txtNgoaiNguThuNhat.Text = item.NgoaiNguThuNhat;
                txtTrinhDoNgoaiNguThuHai.Text = item.TrinhDoNgoaiNguThuHai;
                txtNgoaiNguThuHai.Text = item.NgoaiNguThuHai;
                txtKhenThuong.Text = item.KhenThuong;
                txtKyLuat.Text = item.KyLuat;
                txtTinhTrangSucKhoe.Text = item.TinhTrangSucKhoe;
                txtLaThuongBinh.Text = item.LaThuongBinh;
                txtSoHieuCB.Text = item.SoHieuCB;
                txtDoiTuong.Text = item.DoiTuong;
                txtHuongLuong.Text = item.HuongLuong;
                txtDonViQuanLy.Text = item.DonViQuanLy;
                txtDonViCongTac.Text = item.DonViCongTac;
                txtMaNgachCongChuc.Text = item.MaNgachCongChuc;
                txtNgayHuong.Text = item.NgayHuong;
                txtBacLuong.Text = item.BacLuong + "";
                txtHeSoLuong.Text = item.HeSoLuong + "";
                txtChucVuHienTai.Text = item.ChucVuHienTai;
                txtChucVuKiemNhiem.Text = item.ChucVuKiemNhiem;
                txtPhuCapChucVu.Text = item.PhuCapChucVu + "";
                txtCongViecChinhDangLam.Text = item.CongViecChinhDangLam;
            }
            else
            {
                Button1.Text = "Thêm mới Đảng viên";
            }

        }
        catch (Exception ee)
        {
            lblMessage.Text = ee.Message;
        }
        finally
        {
            es.Dispose();
        }
    }

    protected void EditRecord(object sender, EventArgs e)
    {
        KyLuat item = new KyLuat();

        item.NgayBiKyluat = txtNgayBiKyluat.Text;
        item.LyDoKyLuat = txtLyDoKyLuat.Text; 

        ServiceKyLuat es = new ServiceKyLuat();
        try
        {
            var id = Common.TryParseObjectToInt(Request.QueryString["ID"] + "");
            item.ID = id;
            bool result = false;
            result = es.LuuKyLuat("TheBinh", "12345678", item);
            if (result)
                lblMessage.Text = "Đã lưu thông tin đảng viên thành công!";
            else
                lblMessage.Text = "Có lỗi xảy ra, chưa lưu được thông tin. Hãy kiểm tra và thử lại";
        }
        catch (Exception ee)
        {
            lblMessage.Text = ee.Message;
        }
        finally
        {
            es.Dispose();
            item = null;
        }
    }
}
