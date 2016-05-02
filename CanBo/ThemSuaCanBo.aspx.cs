using System;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using SOA;

public partial class ThemSuaCanBo : Page
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

        ServiceCanBo es = new ServiceCanBo();
        try
        {
            var id = Common.TryParseObjectToInt(Request.QueryString["ID"] + "");
            var item = es.GetThongTin1CanBo("TheBinh", "12345678", id);

            BindCombobox(es, item);

            if (id != 0)
            {
                Button1.Text = "Lưu Thông Tin Cán Bộ";
                Button2.Visible = false;


                txtNgayVaoDang.Text = item.NgayVaoDang;
                txtChiBoKetNap.Text = item.ChiBoKetNap;
                txtNguoiGioiThieu1.Text = item.NguoiGioiThieu1;
                txtChucVuNguoiGioiThieu1.Text = item.ChucVuNguoiGioiThieu1;
                txtNgheNghiepKhiVaoDang.Text = item.NgheNghiepKhiVaoDang;
                txtNguoiGioiThieu2.Text = item.NguoiGioiThieu2;
                txtGhiChuVeNguoiGioiThieu2.Text = item.GhiChuVeNguoiGioiThieu2;
                txtNgayChinhThucVaoDang.Text = item.NgayChinhThucVaoDang;
                txtSoLyLichDangVien.Text = item.SoLyLichDangVien;
                txtSoTheDangVien.Text = item.SoTheDangVien;
                txtMaCoSoDangQLDangVien.Text = item.MaCoSoDangQLDangVien;
                txtChucVuTrongDang.Text = item.ChucVuTrongDang;

                txtNgayBiKyluat.Text = item.NgayBiKyluat;
                txtLyDoKyLuat.Text = item.LyDoKyLuat;


                imgAnhDaiDien.ImageUrl = item.Image;
                txtHoTenKhaiSinh.Text = item.HoTenKhaiSinh;
                txtTenGoiKhac.Text = item.TenGoiKhac;
                txtNgaySinh.Text = item.NgaySinh;
                txtHoKhauThuongTru.Text = item.HoKhauThuongTru;
                txtNoiSinh.Text = item.NoiSinh;
                txtQueQuanTinh.Text = item.QueQuanTinh;
                txtQueQuanHuyen.Text = item.QueQuanHuyen;
                txtQueQuanXa.Text = item.QueQuanXa;
                txtNoiOHienNay.Text = item.NoiOHienNay;

                txtTinhTrangHonNhan.Text = item.TinhTrangHonNhan;
                txtSoCMND.Text = item.SoCMND;
                txtNgayCapCMND.Text = item.NgayCapCMND;
                txtNoiCapCMND.Text = item.NoiCapCMND;
                txtEmail.Text = item.Email;
                txtSDT.Text = item.SDT;
                txtNgayTuyenDung.Text = item.NgayTuyenDung;
                txtTenCoQuanTuyenDung.Text = item.TenCoQuanTuyenDung;
                txtNgayVaoCoQuanHienTai.Text = item.NgayVaoCoQuanHienTai;
                txtNgayNhapNgu.Text = item.NgayNhapNgu;
                txtNgayXuatNgu.Text = item.NgayXuatNgu;

                txtTrinhDoChuyenMonCaoNhat.Text = item.TrinhDoChuyenMonCaoNhat;
                txtChuyenNganh.Text = item.ChuyenNganh;
                txtTrinhDoTinHoc.Text = item.TrinhDoTinHoc;
                txtTrinhDoNgoaiNguThuNhat.Text = item.TrinhDoNgoaiNguThuNhat;
                txtNgoaiNguThuNhat.Text = item.NgoaiNguThuNhat;
                txtTrinhDoNgoaiNguThuHai.Text = item.TrinhDoNgoaiNguThuHai;
                txtNgoaiNguThuHai.Text = item.NgoaiNguThuHai;
                txtKhenThuong.Text = item.KhenThuong;
                txtKyLuat.Text = item.KyLuat;


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
            }
            else
            {

                Button1.Text = "Thêm mới Cán Bộ";
                Button2.Visible = true;
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

    public void BindCombobox(ServiceCanBo es, ViewALLCB item)
    {
        if (item == null)
        {
            item = new ViewALLCB();
        }
        txtTinhTrangSucKhoe.DataSource = es.TinhTrangSucKhoe("TheBinh", "12345678");
        txtTinhTrangSucKhoe.DataBind();
        txtTinhTrangSucKhoe.DataTextField = "TenTinhTrangSucKhoe";
        txtTinhTrangSucKhoe.DataValueField = "TenTinhTrangSucKhoe";
        txtTinhTrangSucKhoe.DataBind();
        txtTinhTrangSucKhoe.Text = item.TinhTrangSucKhoe;


        txtLaThuongBinh.DataSource = es.ThuongBinh("TheBinh", "12345678");
        txtLaThuongBinh.DataBind();
        txtLaThuongBinh.DataTextField = "TenLoaiThuongBinh";
        txtLaThuongBinh.DataValueField = "TenLoaiThuongBinh";
        txtLaThuongBinh.DataBind();
        txtLaThuongBinh.Text = item.LaThuongBinh;

        txtQuanHamCaoNhat.DataSource = es.QuanHamCaoNhat("TheBinh", "12345678");
        txtQuanHamCaoNhat.DataBind();
        txtQuanHamCaoNhat.DataTextField = "TenQuanHamCaoNhat";
        txtQuanHamCaoNhat.DataValueField = "TenQuanHamCaoNhat";
        txtQuanHamCaoNhat.DataBind();
        txtQuanHamCaoNhat.Text = item.QuanHamCaoNhat;

        txtTrinhDoHocVan.DataSource = es.TrinhDoHocVan("TheBinh", "12345678");
        txtTrinhDoHocVan.DataBind();
        txtTrinhDoHocVan.DataTextField = "TenTrinhDoHocVan";
        txtTrinhDoHocVan.DataValueField = "TenTrinhDoHocVan";
        txtTrinhDoHocVan.DataBind();
        txtTrinhDoHocVan.Text = item.TrinhDoHocVan;


        txtHocHam.DataSource = es.HocHam("TheBinh", "12345678");
        txtHocHam.DataBind();
        txtHocHam.DataTextField = "TenHocHam";
        txtHocHam.DataValueField = "TenHocHam";
        txtHocHam.DataBind();
        txtHocHam.Text = item.HocHam;


        txtHocVi.DataSource = es.HocVi("TheBinh", "12345678");
        txtHocVi.DataBind();
        txtHocVi.DataTextField = "TenHocVi";
        txtHocVi.DataValueField = "TenHocVi";
        txtHocVi.DataBind();
        txtHocVi.Text = item.HocVi;

        txtTrinhDoQuanLyNhaNuoc.DataSource = es.TrinhDoQuanLyNhaNuoc("TheBinh", "12345678");
        txtTrinhDoQuanLyNhaNuoc.DataBind();
        txtTrinhDoQuanLyNhaNuoc.DataTextField = "TenTrinhDoQuanLyNhaNuoc";
        txtTrinhDoQuanLyNhaNuoc.DataValueField = "TenTrinhDoQuanLyNhaNuoc";
        txtTrinhDoQuanLyNhaNuoc.DataBind();
        txtTrinhDoQuanLyNhaNuoc.Text = item.TrinhDoQuanLyNhaNuoc;

        txtTrinhDoLyLuanChinhTri.DataSource = es.TrinhDoLyLuanChinhTri("TheBinh", "12345678");
        txtTrinhDoLyLuanChinhTri.DataBind();
        txtTrinhDoLyLuanChinhTri.DataTextField = "TenTrinhDoLyLuanChinhTri";
        txtTrinhDoLyLuanChinhTri.DataValueField = "TenTrinhDoLyLuanChinhTri";
        txtTrinhDoLyLuanChinhTri.DataBind();
        txtTrinhDoLyLuanChinhTri.Text = item.TrinhDoLyLuanChinhTri;

        txtDanToc.DataSource = es.DanToc("TheBinh", "12345678");
        txtDanToc.DataBind();
        txtDanToc.DataTextField = "TenDanToc";
        txtDanToc.DataValueField = "TenDanToc";
        txtDanToc.DataBind();
        txtDanToc.Text = item.DanToc;


        txtTonGiao.DataSource = es.TonGiao("TheBinh", "12345678");
        txtTonGiao.DataBind();
        txtTonGiao.DataTextField = "TenTonGiao";
        txtTonGiao.DataValueField = "TenTonGiao";
        txtTonGiao.DataBind();
        txtTonGiao.Text = item.TonGiao;


        txtGioiTinh.DataSource = es.GioiTinh("TheBinh", "12345678");
        txtGioiTinh.DataBind();
        txtGioiTinh.DataTextField = "TenGioiTinh";
        txtGioiTinh.DataValueField = "TenGioiTinh";
        txtGioiTinh.DataBind();
        txtGioiTinh.Text = item.GioiTinh;


        txtThanhPhanGiaDinh.DataSource = es.ThanhPhanGiaDinh("TheBinh", "12345678");
        txtThanhPhanGiaDinh.DataBind();
        txtThanhPhanGiaDinh.DataTextField = "TenTPGiaDinh";
        txtThanhPhanGiaDinh.DataValueField = "TenTPGiaDinh";
        txtThanhPhanGiaDinh.DataBind();
        txtThanhPhanGiaDinh.Text = item.ThanhPhanGiaDinh;

        txtNgheNghiepKhiTuyenDung.DataSource = es.NgheNghiepKhiTuyenDung("TheBinh", "12345678");
        txtNgheNghiepKhiTuyenDung.DataBind();
        txtNgheNghiepKhiTuyenDung.DataTextField = "TenNgheNghiepKhiTuyenDung";
        txtNgheNghiepKhiTuyenDung.DataValueField = "TenNgheNghiepKhiTuyenDung";
        txtNgheNghiepKhiTuyenDung.DataBind();
        txtNgheNghiepKhiTuyenDung.Text = item.NgheNghiepKhiTuyenDung;


        txtCongViecChinhDangLam.DataSource = es.CongViecChinhDangLam("TheBinh", "12345678");
        txtCongViecChinhDangLam.DataBind();
        txtCongViecChinhDangLam.DataTextField = "TenCongViecChinhDangLam";
        txtCongViecChinhDangLam.DataValueField = "TenCongViecChinhDangLam";
        txtCongViecChinhDangLam.DataBind();
        txtCongViecChinhDangLam.Text = item.CongViecChinhDangLam;


    }


    protected void EditRecord(object sender, EventArgs e)
    {
        ViewModel item = new ViewModel();
        item.Image = imgAnhDaiDien.ImageUrl;
        item.HoTenKhaiSinh = txtHoTenKhaiSinh.Text;
        item.TenGoiKhac = txtTenGoiKhac.Text;
        item.NgaySinh = txtNgaySinh.Text;
        item.GioiTinh = txtGioiTinh.Text;
        item.HoKhauThuongTru = txtHoKhauThuongTru.Text;
        item.NoiSinh = txtNoiSinh.Text;
        item.QueQuanTinh = txtQueQuanTinh.Text;
        item.QueQuanHuyen = txtQueQuanHuyen.Text;
        item.QueQuanXa = txtQueQuanXa.Text;
        item.NoiOHienNay = txtNoiOHienNay.Text;
        item.DanToc = txtDanToc.Text;
        item.TonGiao = txtTonGiao.Text;
        item.ThanhPhanGiaDinh = txtThanhPhanGiaDinh.Text;
        item.TinhTrangHonNhan = txtTinhTrangHonNhan.Text;
        item.SoCMND = txtSoCMND.Text;
        item.NgayCapCMND = txtNgayCapCMND.Text;
        item.NoiCapCMND = txtNoiCapCMND.Text;
        item.Email = txtEmail.Text;
        item.SDT = txtSDT.Text;
        item.NgheNghiepKhiTuyenDung = txtNgheNghiepKhiTuyenDung.Text;
        item.NgayTuyenDung = txtNgayTuyenDung.Text;
        item.TenCoQuanTuyenDung = txtTenCoQuanTuyenDung.Text;
        item.NgayVaoCoQuanHienTai = txtNgayVaoCoQuanHienTai.Text;
        item.NgayNhapNgu = txtNgayNhapNgu.Text;
        item.NgayXuatNgu = txtNgayXuatNgu.Text;
        item.QuanHamCaoNhat = txtQuanHamCaoNhat.Text;
        item.TrinhDoHocVan = txtTrinhDoHocVan.Text;
        item.HocHam = txtHocHam.Text;
        item.HocVi = txtHocVi.Text;
        item.TrinhDoQuanLyNhaNuoc = txtTrinhDoQuanLyNhaNuoc.Text;
        item.TrinhDoLyLuanChinhTri = txtTrinhDoLyLuanChinhTri.Text;
        item.TrinhDoChuyenMonCaoNhat = txtTrinhDoChuyenMonCaoNhat.Text;
        item.ChuyenNganh = txtChuyenNganh.Text;
        item.TrinhDoTinHoc = txtTrinhDoTinHoc.Text;
        item.TrinhDoNgoaiNguThuNhat = txtTrinhDoNgoaiNguThuNhat.Text;
        item.NgoaiNguThuNhat = txtNgoaiNguThuNhat.Text;
        item.TrinhDoNgoaiNguThuHai = txtTrinhDoNgoaiNguThuHai.Text;
        item.NgoaiNguThuHai = txtNgoaiNguThuHai.Text;
        item.KhenThuong = txtKhenThuong.Text;
        item.KyLuat = txtKyLuat.Text;
        item.TinhTrangSucKhoe = txtTinhTrangSucKhoe.Text;
        item.LaThuongBinh = txtLaThuongBinh.Text;
        item.SoHieuCB = txtSoHieuCB.Text;
        item.DoiTuong = txtDoiTuong.Text;
        item.HuongLuong = txtHuongLuong.Text;
        item.DonViQuanLy = txtDonViQuanLy.Text;
        item.DonViCongTac = txtDonViCongTac.Text;
        item.MaNgachCongChuc = txtMaNgachCongChuc.Text;
        item.NgayHuong = txtNgayHuong.Text;
        item.BacLuong = Common.TryParseObjectToInt(txtBacLuong.Text);
        item.HeSoLuong = Common.TryParseObjectToDecemal(txtHeSoLuong.Text);
        item.ChucVuHienTai = txtChucVuHienTai.Text;
        item.ChucVuKiemNhiem = txtChucVuKiemNhiem.Text;
        item.PhuCapChucVu = Common.TryParseObjectToDecemal(txtPhuCapChucVu.Text);
        item.CongViecChinhDangLam = txtCongViecChinhDangLam.Text;


        ServiceCanBo es = new ServiceCanBo();
        try
        {
            var id = Common.TryParseObjectToInt(Request.QueryString["ID"] + "");
            item.ID = id;
            if (id == 0)
            {
                bool result = es.ThemCanBo("TheBinh", "12345678", item);
                if (result)
                    lblMessage.Text = "Đã thêm mới thông tin cán bộ thành công!";
                else
                    lblMessage.Text = "Có lỗi xảy ra, chưa lưu được thông tin. Hãy kiểm tra và thử lại";
            }
            else
            {
                bool result = es.SuaCanBo("TheBinh", "12345678", item);
                if (result)
                    lblMessage.Text = "Đã lưu thông tin cán bộ thành công!";
                else
                    lblMessage.Text = "Có lỗi xảy ra, chưa lưu được thông tin. Hãy kiểm tra và thử lại";
            }

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
    public static string GetRandomDate(DateTime from, DateTime to)
    {
        var range = to - from;
        var randTimeSpan = new TimeSpan((long)(new Random().NextDouble() * range.Ticks));
        return (from + randTimeSpan).ToString("dd/MM/yyyy");
    }
    public string GenerateNumber(int s)
    {
        Random random = new Random();
        string r = "";
        int i;
        for (i = 1; i < s; i++)
        {
            r += random.Next(0, 9).ToString();
        }
        return r;
    }
    protected void Random(object sender, EventArgs e)
    {
        int gt = new Random().Next(1, 3);
        string[] Hos = { "Lê", "Nguyễn", "Bùi", "Hoàng", "Trần", "Tào", "Phạm", "Lý", "Đặng", "Phan", "Vũ", "Võ", "Đỗ", "Hồ", "Ngô", "Dương", "Kiều", "Lương", "Tôn" };
        string[] TenNams = { "Toàn", "Trung", "Thành", "Huy", "Ngọc", "Bảo", "Tuấn", "Dương", "Tùng", "Hùng", "Đạt", "Điền", "Lâm", "Quân", "Thái", "Thắng", "Triết", "Uy" };
        string[] TenNus = { "Hoa", "Hương", "Nguyệt", "Kim", "Huyền", "Thúy", "Thanh", "Mai", "Lan", "Đào", "Tâm", "Thư", "Hạnh", "Chi", "Diễm", "Nga", "Trang", "Thảo", "Yến", "Oanh", "Thi", "Tuyền", "Liên", "Khánh", "Khuê" };
        if (gt == 1)
        {
            txtGioiTinh.Text = "Nam";
            var Ho = Hos[new Random().Next(0, Hos.Length)];
            var Ten = TenNams[new Random().Next(0, TenNams.Length)];
            txtHoTenKhaiSinh.Text = Ho + " Văn " + Ten;
        }
        else
        {
            txtGioiTinh.Text = "Nữ";
            txtHoTenKhaiSinh.Text = "";
            var Ho = Hos[new Random().Next(0, Hos.Length)];
            var Ten = TenNus[new Random().Next(0, TenNus.Length)];
            txtHoTenKhaiSinh.Text = Ho + " Thị " + Ten;
        }

        txtNgaySinh.Text = GetRandomDate(new DateTime(1930, 1, 1), new DateTime(1979, 1, 1));
        txtSoCMND.Text = GenerateNumber(10);

        txtTinhTrangSucKhoe.Text = "Tốt";

        string[] Tinh = { "An Giang", "Bà Rịa-Vũng Tàu", "Bạc Liêu", "Bắc Kạn", "Bắc Giang", "Bắc Ninh", "Bến Tre", "Bình Dương", "Bình Định", "Bình Phước", "Bình Thuận", "Cà Mau", "Cao Bằng", "Cần Thơ", "Đà Nẵng", "Đắk Lắk", "Đắk Nông", "Điện Biên", "Đồng Nai", "Đồng Tháp", "Gia Lai", "Hà Giang", "Hà Nam", "Hà Nội", "Hà Tây", "Hà Tĩnh", "Hải Dương", "Hải Phòng", "Hòa Bình", "Hồ Chí Minh", "Hậu Giang", "Hưng Yên", "Khánh Hòa", "Kiên Giang", "Kon Tum", "Lai Châu", "Lào Cai", "Lạng Sơn", "Lâm Đồng", "Long An", "Nam Định", "Nghệ An", "Ninh Bình", "Ninh Thuận", "Phú Thọ", "Phú Yên", "Quảng Bình", "Quảng Nam", "Quảng Ngãi", "Quảng Ninh", "Quảng Trị", "Sóc Trăng", "Sơn La", "Tây Ninh", "Thái Bình", "Thái Nguyên", "Thanh Hóa", "Thừa Thiên - Huế", "Tiền Giang", "Trà Vinh", "Tuyên Quang", "Vĩnh Long", "Vĩnh Phúc", "Yên Bái" };
        var tinh = Tinh[new Random().Next(0, Tinh.Length)];


        txtHoKhauThuongTru.Text = tinh;


        txtNoiSinh.Text = tinh;
        txtQueQuanTinh.Text = tinh;
        txtNoiOHienNay.Text = tinh;


        string[] TPGD = { "Công nhân", "Nông dân", "Cán bộ", "Viên chức", "Tri thức", "Quân nhân", "Thợ thủ công", "Tiểu thương", "Tiểu chủ", "Địa chủ" };
        txtThanhPhanGiaDinh.Text = TPGD[new Random().Next(0, TPGD.Length)];

        string[] TG = { "Phật giáo", "Công giáo", "Cao đài", "Hòa hảo", "Tin lành", "Hồi giáo", "T.Giáo khác", "Không có" };
        txtTonGiao.Text = TG[new Random().Next(0, TG.Length)];

        string[] DT = { "Kinh", "Mường", "Thái", "Bru - Vân Kiều", "Chơ Ro", "Cơ Ho", "Hrê", "Khơ Me", "Dao", "H’Mông", "Chăm", "Hoa" };
        txtDanToc.Text = DT[new Random().Next(0, DT.Length)];

        txtTinhTrangHonNhan.Text = "Đã có gia đình";


        txtNgayCapCMND.Text = GetRandomDate(new DateTime(1995, 1, 1), new DateTime(2010, 1, 1));
        txtNoiCapCMND.Text = "CA " + tinh;
        txtEmail.Text = "";
        txtSDT.Text = GenerateNumber(12);


        string[] Nghes = { "Cán bộ công chức", "Viên chức sự nghiệp", "Viên chức kinh doanh", "Công nhân, lao động", "Nông dân", "Sỹ quan, chiến sỹ", "Lao động các ngành nghề", "Đảng viên đã nghỉ hưu", "Đảng viên bị mất chức" };
        txtNgheNghiepKhiTuyenDung.Text = Nghes[new Random().Next(0, Nghes.Length)];

        txtNgayTuyenDung.Text = GetRandomDate(new DateTime(1995, 1, 1), new DateTime(2010, 1, 1));
        txtTenCoQuanTuyenDung.Text = "";
        txtNgayVaoCoQuanHienTai.Text = GetRandomDate(new DateTime(1995, 1, 1), new DateTime(2010, 1, 1));
        txtHocHam.Text = "";
        txtHocVi.Text = "";

        string[] DHs = { "Trung cấp", "Cao đẳng", "Đại học", "Thạc sỹ", "Cao cấp" };
        txtTrinhDoQuanLyNhaNuoc.Text = DHs[new Random().Next(0, DHs.Length)];

        txtTrinhDoHocVan.Text = DHs[new Random().Next(0, DHs.Length)];
        txtTrinhDoLyLuanChinhTri.Text = DHs[new Random().Next(0, DHs.Length)];
        txtTrinhDoChuyenMonCaoNhat.Text = DHs[new Random().Next(0, DHs.Length)];
        txtChuyenNganh.Text = "Quản Lý Nhà Nước";
        txtTrinhDoTinHoc.Text = "Bằng C Tiếng Anh";
        txtTrinhDoNgoaiNguThuNhat.Text = "Bằng C";
        txtNgoaiNguThuNhat.Text = "Tiếng Anh";

        txtSoHieuCB.Text = "CB" + GenerateNumber(5);
        txtDoiTuong.Text = "Cán bộ";
        txtHuongLuong.Text = "UBND Tỉnh " + tinh;
        txtDonViQuanLy.Text = "UBND Tỉnh " + tinh;
        txtDonViCongTac.Text = "UBND Tỉnh " + tinh;
        txtTenCoQuanTuyenDung.Text = "UBND Tỉnh " + tinh;
        txtNgayHuong.Text = GetRandomDate(new DateTime(2000, 1, 1), new DateTime(2015, 1, 1));
        txtBacLuong.Text = "5";
        txtHeSoLuong.Text = "3." + GenerateNumber(3);
        txtPhuCapChucVu.Text = "1." + GenerateNumber(3);
        txtChucVuHienTai.Text = "Chuyên viên";
        txtCongViecChinhDangLam.Text = Nghes[new Random().Next(0, Nghes.Length)];
    }

    protected void UploadButton_Click(object sender, EventArgs e)
    {
        if (FileUploadControl.HasFile)
        {
            try
            {
                imgAnhDaiDien.ImageUrl = "data:image/png;base64," + Common.ImageToBase64string(FileUploadControl.FileContent);
            }
            catch (Exception ex)
            {
            }
        }
    }

}
