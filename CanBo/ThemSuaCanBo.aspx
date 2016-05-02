<%@ Page Language="C#" Title="Thông tin cán bộ" AutoEventWireup="true" CodeFile="ThemSuaCanBo.aspx.cs" Inherits="ThemSuaCanBo" MasterPageFile="MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">

    <div class="header">
        <i class="fa fa-book"></i>&nbsp;&nbsp;Thông tin chi tiết của cán bộ
    </div>

    <div>
        <div class="back">
            <a href="DanhMucCanBo.aspx"><i class="fa fa-arrow-circle-left"></i>&nbsp;&nbsp;Quay lại danh sách Cán Bộ</a>
        </div>
        <div class="message">
            <asp:Label ID="lblMessage" runat="Server" ForeColor="red" EnableViewState="False"></asp:Label>
        </div>
        <asp:Panel CssClass="cssPanel" ID="PanelSoYeuLyLich" GroupingText="Sơ yếu lý lịch" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Họ tên khai sinh: </td>
                    <td>
                        <asp:TextBox ID="txtHoTenKhaiSinh" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Tên gọi khác: </td>
                    <td>
                        <asp:TextBox ID="txtTenGoiKhac" runat="Server" Width="200px"></asp:TextBox></td>

                    <td rowspan="10" style="width: 185px">Ảnh 4x6:
                        <asp:Image ID="imgAnhDaiDien" runat="server"  Width="350px" />
                        <asp:FileUpload ID="FileUploadControl" runat="server" />
                        <asp:Button runat="server" ID="UploadButton" Text="Tải ảnh lên" OnClick="UploadButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td>Ngày sinh: </td>
                    <td>
                        <asp:TextBox ID="txtNgaySinh" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Giới tính: </td>
                    <td>
                        <asp:DropDownList ID="txtGioiTinh" runat="Server" Width="200px" Height="25px"> 
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Hộ khẩu thường trú: </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtHoKhauThuongTru" runat="Server" Width="95%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Nơi sinh: </td>
                    <td>
                        <asp:TextBox ID="txtNoiSinh" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Quê quán Tỉnh: </td>
                    <td>
                        <asp:TextBox ID="txtQueQuanTinh" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Quê quán Huyện: </td>
                    <td>
                        <asp:TextBox ID="txtQueQuanHuyen" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Quê quán Xã: </td>
                    <td>
                        <asp:TextBox ID="txtQueQuanXa" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Nơi ở hiện nay: </td>
                    <td>
                        <asp:TextBox ID="txtNoiOHienNay" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Dân tộc: </td>
                    <td>
                        <asp:DropDownList ID="txtDanToc" runat="Server" Width="200px"> 

                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Tôn giáo: </td>
                    <td>
                        <asp:DropDownList ID="txtTonGiao" runat="Server" Width="200px"> 
                        </asp:DropDownList></td>

                    <td>Thành phần gia đình: </td>
                    <td>
                        <asp:DropDownList ID="txtThanhPhanGiaDinh" runat="Server" Width="200px" Height="25px"> 
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Tình trạng hôn nhân: </td>
                    <td>
                        <asp:TextBox ID="txtTinhTrangHonNhan" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Số CMND: </td>
                    <td>
                        <asp:TextBox ID="txtSoCMND" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Ngày cấp CMND: </td>
                    <td>
                        <asp:TextBox ID="txtNgayCapCMND" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Nơi cấp CMND: </td>
                    <td>
                        <asp:TextBox ID="txtNoiCapCMND" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Số điện thoại: </td>
                    <td>
                        <asp:TextBox ID="txtSDT" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>

            </table>
        </asp:Panel>
        <asp:Panel CssClass="cssPanel" ID="PanelThongTinTuyenDung" GroupingText="Thông tin tuyển dụng" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Nghề nghiệp khi tuyển dụng: </td>
                    <td>
                        <asp:DropDownList ID="txtNgheNghiepKhiTuyenDung" runat="Server" Width="200px"> 
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Ngày tuyển dụng: </td>
                    <td>
                        <asp:TextBox ID="txtNgayTuyenDung" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Tên cơ quan tuyển dụng: </td>
                    <td>
                        <asp:TextBox ID="txtTenCoQuanTuyenDung" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Ngày vào cơ quan hiện tại: </td>
                    <td>
                        <asp:TextBox ID="txtNgayVaoCoQuanHienTai" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel CssClass="cssPanel" ID="PanelThongTinDoanThe" GroupingText="Thông tin tham gia các tổ chức, đoàn thể" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Ngày nhập ngũ: </td>
                    <td>
                        <asp:TextBox ID="txtNgayNhapNgu" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Ngày xuất ngũ: </td>
                    <td>
                        <asp:TextBox ID="txtNgayXuatNgu" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Quân hàm cao nhất: </td>
                    <td>
                        <asp:DropDownList ID="txtQuanHamCaoNhat" runat="Server" Width="200px"> 

                        </asp:DropDownList></td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel CssClass="cssPanel" ID="PanelThongTinChuyenMon" GroupingText="Thông tin chuyên môn nghiệp vụ" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Trình độ học vấn: </td>
                    <td>
                        <asp:DropDownList ID="txtTrinhDoHocVan" runat="Server" Width="200px"> 
                        </asp:DropDownList></td>
                    <td>Học hàm: </td>
                    <td>
                        <asp:DropDownList ID="txtHocHam" runat="Server" Width="200px"> 

                        </asp:DropDownList></td>

                    <td>Học vị: </td>
                    <td>
                        <asp:DropDownList ID="txtHocVi" runat="Server" Width="200px"> 
                        </asp:DropDownList></td>

                </tr>
                <tr>
                    <td>Trình độ quản lý nhà nước: </td>
                    <td>
                        <asp:DropDownList ID="txtTrinhDoQuanLyNhaNuoc" runat="Server" Width="200px"> 
                        </asp:DropDownList></td>

                    <td>Trình độ lý luận chính trị: </td>
                    <td>
                        <asp:DropDownList ID="txtTrinhDoLyLuanChinhTri" runat="Server" Width="200px"> 
                        </asp:DropDownList></td>

                    <td>Trình độ chuyên môn cao nhất: </td>
                    <td>
                        <asp:TextBox ID="txtTrinhDoChuyenMonCaoNhat" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Chuyên ngành: </td>
                    <td>
                        <asp:TextBox ID="txtChuyenNganh" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Trình độ tin học: </td>
                    <td>
                        <asp:TextBox ID="txtTrinhDoTinHoc" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Trình độ ngoại ngữ thứ nhất: </td>
                    <td>
                        <asp:TextBox ID="txtTrinhDoNgoaiNguThuNhat" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Ngoại ngữ thứ nhất: </td>
                    <td>
                        <asp:TextBox ID="txtNgoaiNguThuNhat" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Trình độ ngoại ngữ thứ hai: </td>
                    <td>
                        <asp:TextBox ID="txtTrinhDoNgoaiNguThuHai" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Ngoại ngữ thứ hai: </td>
                    <td>
                        <asp:TextBox ID="txtNgoaiNguThuHai" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>

                    <td>Công việc chính đang làm: </td>
                    <td>
                        <asp:DropDownList ID="txtCongViecChinhDangLam" runat="Server" Width="200px"> 
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel CssClass="cssPanel" ID="PanelThongTinCongChuc" GroupingText="Thông tin ngạch công chức (viên chức)" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Hưởng lương: </td>
                    <td>
                        <asp:TextBox ID="txtHuongLuong" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Đơn vị quản lý: </td>
                    <td>
                        <asp:TextBox ID="txtDonViQuanLy" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Đơn vị công tác: </td>
                    <td>
                        <asp:TextBox ID="txtDonViCongTac" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Mã ngạch công chức: </td>
                    <td>
                        <asp:TextBox ID="txtMaNgachCongChuc" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Ngày hưởng: </td>
                    <td>
                        <asp:TextBox ID="txtNgayHuong" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Bậc lương: </td>
                    <td>
                        <asp:TextBox ID="txtBacLuong" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Hệ số lương: </td>
                    <td>
                        <asp:TextBox ID="txtHeSoLuong" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Chức vụ hiện tại: </td>
                    <td>
                        <asp:TextBox ID="txtChucVuHienTai" runat="Server" Width="200px"></asp:TextBox></td>

                </tr>
                <tr>
                    <td>Chức vụ kiêm nhiệm: </td>
                    <td>
                        <asp:TextBox ID="txtChucVuKiemNhiem" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Phụ cấp chức vụ: </td>
                    <td>
                        <asp:TextBox ID="txtPhuCapChucVu" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>

            </table>
        </asp:Panel>
        <asp:Panel CssClass="cssPanel" ID="PanelThongTinKhenThuong" GroupingText="Thông tin khen thưởng, kỷ luật" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Khen thưởng: </td>
                    <td>
                        <asp:TextBox ID="txtKhenThuong" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Kỷ luật: </td>
                    <td>
                        <asp:TextBox ID="txtKyLuat" runat="Server" Width="200px"></asp:TextBox></td>

                </tr>
            </table>
        </asp:Panel>

        <asp:Panel CssClass="cssPanel" ID="PanelThongTinSucKhoe" GroupingText="Thông tin sức khỏe" runat="server">
            <table style="border: none;">
                <tr>

                    <td>Tình trạng sức khỏe: </td>
                    <td>
                        <asp:DropDownList ID="txtTinhTrangSucKhoe" runat="Server" Width="200px"> 
                        </asp:DropDownList></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel CssClass="cssPanel" ID="PanelThongTinGiaDinh" GroupingText="Thông tin gia đình chính sách" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Là thương binh: </td>
                    <td>
                        <asp:DropDownList ID="txtLaThuongBinh" runat="Server" Width="200px">
                             
                        </asp:DropDownList></td>

                    <td>Số hiệu Cán bộ: </td>
                    <td>
                        <asp:TextBox ID="txtSoHieuCB" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Đối tượng: </td>
                    <td>
                        <asp:TextBox ID="txtDoiTuong" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel CssClass="cssPanel" ID="PanelThongTinDangVien" GroupingText="Thông tin Đảng viên" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Ngày vào Đảng: </td>
                    <td>
                        <asp:TextBox ID="txtNgayVaoDang" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Chi bộ kết nạp: </td>
                    <td>
                        <asp:TextBox ID="txtChiBoKetNap" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Người giới thiệu 1: </td>
                    <td>
                        <asp:TextBox ID="txtNguoiGioiThieu1" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Chức vụ người giới thiệu 1,: </td>
                    <td>
                        <asp:TextBox ID="txtChucVuNguoiGioiThieu1" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Nghề nghiệp khi vào Đảng: </td>
                    <td>
                        <asp:TextBox ID="txtNgheNghiepKhiVaoDang" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>NguoiGioiThieu2,: </td>
                    <td>
                        <asp:TextBox ID="txtNguoiGioiThieu2" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Ghi chú về người giới thiệu 2: </td>
                    <td>
                        <asp:TextBox ID="txtGhiChuVeNguoiGioiThieu2" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Ngày chính thức vào Đảng: </td>
                    <td>
                        <asp:TextBox ID="txtNgayChinhThucVaoDang" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Số lý lịch Đảng viên: </td>
                    <td>
                        <asp:TextBox ID="txtSoLyLichDangVien" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Số thẻ Đảng viên: </td>
                    <td>
                        <asp:TextBox ID="txtSoTheDangVien" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Mã cơ sở Đảng viên: </td>
                    <td>
                        <asp:TextBox ID="txtMaCoSoDangQLDangVien" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Chức vụ trong Đảng: </td>
                    <td>
                        <asp:TextBox ID="txtChucVuTrongDang" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>

            </table>
        </asp:Panel>
        <asp:Panel CssClass="cssPanel" ID="PanelThongTinKyLuat" GroupingText="Thông tin kỷ luật" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Ngày bị kỷ luật,: </td>
                    <td>
                        <asp:TextBox ID="txtNgayBiKyluat" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Lý do kỷ luật: </td>
                    <td>
                        <asp:TextBox ID="txtLyDoKyLuat" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <div>
        <div class="back">
            <a href="DanhMucCanBo.aspx"><i class="fa fa-arrow-circle-left"></i>&nbsp;&nbsp;Quay lại danh sách Cán Bộ</a>
        </div>
        <div class="message">
            <asp:Button ID="Button1" CssClass="myButtonCenter" runat="server" CausesValidation="False" OnClick="EditRecord" Text="Thêm" />
            <asp:Button ID="Button2" CssClass="myButton" runat="server" CausesValidation="False" OnClick="Random" Text="Tạo Data test ngẫu nhiên" />
        </div>

    </div>
</asp:Content>
