<%@ Page Language="C#" Title="Thông tin Đảng viên" AutoEventWireup="true" CodeFile="ThemSuaKyLuat.aspx.cs" Inherits="ThemSuaKyLuat" MasterPageFile="MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">

    <div class="header">
        <i class="fa fa-book"></i>&nbsp;&nbsp;Thông tin chi tiết của Đảng viên
    </div>

    <div>
        <div class="back">
            <a href="DanhMucKyLuat.aspx"><i class="fa fa-arrow-circle-left"></i>&nbsp;&nbsp;Quay lại danh sách Đảng viên</a>
        </div>
        <div class="message">
            <asp:Label ID="lblMessage" runat="Server" ForeColor="red" EnableViewState="False"></asp:Label>
        </div>
        <asp:Panel ID="PanelSoYeuLyLich" runat="server" CssClass="cssPanel" GroupingText="Sơ yếu lý lịch">
            <table style="border: none;">
                <tr>
                    <td>Họ tên khai sinh: </td>
                    <td>
                        <asp:TextBox ID="txtHoTenKhaiSinh" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                    <td>Tên gọi khác: </td>
                    <td>
                        <asp:TextBox ID="txtTenGoiKhac" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                    <td rowspan="10" style="width: 185px">Ảnh 4x6:
                        <asp:Image ID="imgAnhDaiDien" runat="server" Width="350px" /> 
                    </td>
                </tr>
                <tr>
                    <td>Ngày sinh: </td>
                    <td>
                        <asp:TextBox ID="txtNgaySinh" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                    <td>Giới tính: </td>
                    <td>
                        <asp:DropDownList ID="txtGioiTinh" runat="Server" Height="25px" Width="200px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Hộ khẩu thường trú: </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtHoKhauThuongTru" runat="Server" Width="95%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Nơi sinh: </td>
                    <td>
                        <asp:TextBox ID="txtNoiSinh" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                    <td>Quê quán Tỉnh: </td>
                    <td>
                        <asp:TextBox ID="txtQueQuanTinh" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Quê quán Huyện: </td>
                    <td>
                        <asp:TextBox ID="txtQueQuanHuyen" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                    <td>Quê quán Xã: </td>
                    <td>
                        <asp:TextBox ID="txtQueQuanXa" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Nơi ở hiện nay: </td>
                    <td>
                        <asp:TextBox ID="txtNoiOHienNay" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                    <td>Dân tộc: </td>
                    <td>
                        <asp:DropDownList ID="txtDanToc" runat="Server" Width="200px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Tôn giáo: </td>
                    <td>
                        <asp:DropDownList ID="txtTonGiao" runat="Server" Width="200px">
                        </asp:DropDownList>
                    </td>
                    <td>Thành phần gia đình: </td>
                    <td>
                        <asp:DropDownList ID="txtThanhPhanGiaDinh" runat="Server" Height="25px" Width="200px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Tình trạng hôn nhân: </td>
                    <td>
                        <asp:TextBox ID="txtTinhTrangHonNhan" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                    <td>Số CMND: </td>
                    <td>
                        <asp:TextBox ID="txtSoCMND" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Ngày cấp CMND: </td>
                    <td>
                        <asp:TextBox ID="txtNgayCapCMND" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                    <td>Nơi cấp CMND: </td>
                    <td>
                        <asp:TextBox ID="txtNoiCapCMND" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                    <td>Số điện thoại: </td>
                    <td>
                        <asp:TextBox ID="txtSDT" runat="Server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        
         <asp:Panel CssClass="cssPanel" ID="PanelThongTinDangVien" GroupingText="Thông tin Đảng viên" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Ngày vào Đảng: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgayVaoDang" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Chi bộ kết nạp: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtChiBoKetNap" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Người giới thiệu 1: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNguoiGioiThieu1" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Chức vụ người giới thiệu 1: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtChucVuNguoiGioiThieu1" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Nghề nghiệp khi vào Đảng: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgheNghiepKhiVaoDang" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>NguoiGioiThieu2: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNguoiGioiThieu2" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Ghi chú về người giới thiệu 2: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtGhiChuVeNguoiGioiThieu2" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Ngày chính thức vào Đảng: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgayChinhThucVaoDang" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Số lý lịch Đảng viên: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtSoLyLichKyLuat" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Số thẻ Đảng viên: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtSoTheKyLuat" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Mã cơ sở Đảng viên: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtMaCoSoDangQLKyLuat" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Chức vụ trong Đảng: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtChucVuTrongDang" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>

            </table>
        </asp:Panel>
        <asp:Panel CssClass="cssPanel" ID="PanelThongTinKyLuat" GroupingText="Thông tin kỷ luật" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Ngày bị kỷ luật: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgayBiKyluat" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Lý do kỷ luật: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtLyDoKyLuat" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
            </table>
        </asp:Panel>
        

        <asp:Panel CssClass="cssPanel" ID="PanelThongTinTuyenDung" GroupingText="Thông tin tuyển dụng" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Nghề nghiệp khi tuyển dụng: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtNgheNghiepKhiTuyenDung" runat="Server" Width="200px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Đảng viên công chức</asp:ListItem>
                            <asp:ListItem>Viên chức sự nghiệp</asp:ListItem>
                            <asp:ListItem>Viên chức kinh doanh</asp:ListItem>
                            <asp:ListItem>Công nhân, lao động</asp:ListItem>
                            <asp:ListItem>Nông dân</asp:ListItem>
                            <asp:ListItem>Sỹ quan, chiến sỹ</asp:ListItem>
                            <asp:ListItem>Sinh viên, học sinh</asp:ListItem>
                            <asp:ListItem>Lao động các ngành nghề</asp:ListItem>
                            <asp:ListItem>Đảng viên đã nghỉ hưu</asp:ListItem>
                            <asp:ListItem>Đảng viên bị mất chức</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Ngày tuyển dụng: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgayTuyenDung" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Tên cơ quan tuyển dụng: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtTenCoQuanTuyenDung" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Ngày vào cơ quan hiện tại: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgayVaoCoQuanHienTai" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel CssClass="cssPanel" ID="PanelThongTinDoanThe" GroupingText="Thông tin tham gia các tổ chức, đoàn thể" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Ngày nhập ngũ: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgayNhapNgu" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Ngày xuất ngũ: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgayXuatNgu" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Quân hàm cao nhất: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtQuanHamCaoNhat" runat="Server" Width="200px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Đại tướng</asp:ListItem>
                            <asp:ListItem>Thượng tướng</asp:ListItem>
                            <asp:ListItem>Trung tướng</asp:ListItem>
                            <asp:ListItem>Thiếu tướng</asp:ListItem>
                            <asp:ListItem>Đại tá</asp:ListItem>
                            <asp:ListItem>Thượng tá</asp:ListItem>
                            <asp:ListItem>Trung tá</asp:ListItem>
                            <asp:ListItem>Thiếu tá</asp:ListItem>
                            <asp:ListItem>Đại úy</asp:ListItem>
                            <asp:ListItem>Thượng úy</asp:ListItem>

                        </asp:DropDownList></td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel CssClass="cssPanel" ID="PanelThongTinChuyenMon" GroupingText="Thông tin chuyên môn nghiệp vụ" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Trình độ học vấn: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtTrinhDoHocVan" runat="Server" Width="200px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Trung cấp</asp:ListItem>
                            <asp:ListItem>Cao đẳng</asp:ListItem>
                            <asp:ListItem>Đại học</asp:ListItem>
                            <asp:ListItem>Thạc sỹ</asp:ListItem>
                            <asp:ListItem>Phó tiến sỹ</asp:ListItem>
                            <asp:ListItem>Tiến sỹ</asp:ListItem>
                            <asp:ListItem>Cao cấp</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>Học hàm: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtHocHam" runat="Server" Width="200px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Giáo Sư</asp:ListItem>
                            <asp:ListItem>Phó giáo sư</asp:ListItem>
                            <asp:ListItem>Tiến sỹ</asp:ListItem>
                            <asp:ListItem>Phó tiến sỹ</asp:ListItem>

                        </asp:DropDownList></td>

                    <td>Học vị: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtHocVi" runat="Server" Width="200px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Trung cấp</asp:ListItem>
                            <asp:ListItem>Cao đẳng</asp:ListItem>
                            <asp:ListItem>Đại học</asp:ListItem>
                            <asp:ListItem>Thạc sỹ</asp:ListItem>
                            <asp:ListItem>Phó tiến sỹ</asp:ListItem>
                            <asp:ListItem>Tiến sỹ</asp:ListItem>
                            <asp:ListItem>Cao cấp</asp:ListItem>
                        </asp:DropDownList></td>

                </tr>
                <tr>
                    <td>Trình độ quản lý nhà nước: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtTrinhDoQuanLyNhaNuoc" runat="Server" Width="200px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Trung cấp</asp:ListItem>
                            <asp:ListItem>Cao đẳng</asp:ListItem>
                            <asp:ListItem>Đại học</asp:ListItem>
                            <asp:ListItem>Thạc sỹ</asp:ListItem>
                            <asp:ListItem>Phó tiến sỹ</asp:ListItem>
                            <asp:ListItem>Tiến sỹ</asp:ListItem>
                            <asp:ListItem>Cao cấp</asp:ListItem>
                        </asp:DropDownList></td>

                    <td>Trình độ lý luận chính trị: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtTrinhDoLyLuanChinhTri" runat="Server" Width="200px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Trung cấp</asp:ListItem>
                            <asp:ListItem>Cao đẳng</asp:ListItem>
                            <asp:ListItem>Đại học</asp:ListItem>
                            <asp:ListItem>Thạc sỹ</asp:ListItem>
                            <asp:ListItem>Phó tiến sỹ</asp:ListItem>
                            <asp:ListItem>Tiến sỹ</asp:ListItem>
                            <asp:ListItem>Cao cấp</asp:ListItem>
                        </asp:DropDownList></td>

                    <td>Trình độ chuyên môn cao nhất: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtTrinhDoChuyenMonCaoNhat" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Chuyên ngành: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtChuyenNganh" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Trình độ tin học: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtTrinhDoTinHoc" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Trình độ ngoại ngữ thứ nhất: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtTrinhDoNgoaiNguThuNhat" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Ngoại ngữ thứ nhất: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgoaiNguThuNhat" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Trình độ ngoại ngữ thứ hai: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtTrinhDoNgoaiNguThuHai" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Ngoại ngữ thứ hai: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgoaiNguThuHai" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>

                    <td>Công việc chính đang làm: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtCongViecChinhDangLam" runat="Server" Width="200px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Đảng viên công chức</asp:ListItem>
                            <asp:ListItem>Viên chức sự nghiệp</asp:ListItem>
                            <asp:ListItem>Viên chức kinh doanh</asp:ListItem>
                            <asp:ListItem>Công nhân, lao động</asp:ListItem>
                            <asp:ListItem>Nông dân</asp:ListItem>
                            <asp:ListItem>Sỹ quan, chiến sỹ</asp:ListItem>
                            <asp:ListItem>Sinh viên, học sinh</asp:ListItem>
                            <asp:ListItem>Lao động các ngành nghề</asp:ListItem>
                            <asp:ListItem>Đảng viên đã nghỉ hưu</asp:ListItem>
                            <asp:ListItem>Đảng viên bị mất chức</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel CssClass="cssPanel" ID="PanelThongTinCongChuc" GroupingText="Thông tin ngạch công chức (viên chức)" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Hưởng lương: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtHuongLuong" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Đơn vị quản lý: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtDonViQuanLy" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Đơn vị công tác: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtDonViCongTac" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Mã ngạch công chức: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtMaNgachCongChuc" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Ngày hưởng: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgayHuong" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Bậc lương: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtBacLuong" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Hệ số lương: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtHeSoLuong" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Chức vụ hiện tại: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtChucVuHienTai" runat="Server" Width="200px"></asp:TextBox></td>

                </tr>
                <tr>
                    <td>Chức vụ kiêm nhiệm: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtChucVuKiemNhiem" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Phụ cấp chức vụ: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtPhuCapChucVu" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>

            </table>
        </asp:Panel>
        <asp:Panel CssClass="cssPanel" ID="PanelThongTinKhenThuong" GroupingText="Thông tin khen thưởng, kỷ luật" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Khen thưởng: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtKhenThuong" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Kỷ luật: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtKyLuat" runat="Server" Width="200px"></asp:TextBox></td>

                </tr>
            </table>
        </asp:Panel>

        <asp:Panel CssClass="cssPanel" ID="PanelThongTinSucKhoe" GroupingText="Thông tin sức khỏe" runat="server">
            <table style="border: none;">
                <tr>

                    <td>Tình trạng sức khỏe: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtTinhTrangSucKhoe" runat="Server" Width="200px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Tốt</asp:ListItem>
                            <asp:ListItem>Bình thường</asp:ListItem>
                            <asp:ListItem>Kém</asp:ListItem>
                            <asp:ListItem>Nhiễm HIV</asp:ListItem>
                            <asp:ListItem>Ung thư</asp:ListItem>
                            <asp:ListItem>Nhồi máu cơ tim</asp:ListItem>
                            <asp:ListItem>Hở van 2 lá</asp:ListItem>
                            <asp:ListItem>Hẹp van tim 2 lá</asp:ListItem>
                            <asp:ListItem>Hẹp van động mạch chủ</asp:ListItem>
                            <asp:ListItem>Huyết áp cao</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel CssClass="cssPanel" ID="PanelThongTinGiaDinh" GroupingText="Thông tin gia đình chính sách" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Là thương binh: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtLaThuongBinh" runat="Server" Width="200px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Thương binh hạng 1</asp:ListItem>
                            <asp:ListItem>Thương binh hạng 2</asp:ListItem>
                            <asp:ListItem>Thương binh hạng 3</asp:ListItem>
                            <asp:ListItem>Thương binh hạng 4</asp:ListItem>
                            <asp:ListItem>Thương tật loại 1</asp:ListItem>
                            <asp:ListItem>Thương tật loại 2</asp:ListItem>
                            <asp:ListItem>Thương tật loại 3</asp:ListItem>
                            <asp:ListItem>Thương tật loại 4</asp:ListItem>
                            <asp:ListItem>Bệnh binh</asp:ListItem>
                        </asp:DropDownList></td>

                    <td>Số hiệu Đảng viên: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtSoHieuCB" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Đối tượng: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtDoiTuong" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
            </table>
        </asp:Panel>

       
    </div>
    <div>
        <div class="back">
            <a href="DanhMucKyLuat.aspx"><i class="fa fa-arrow-circle-left"></i>&nbsp;&nbsp;Quay lại danh sách Đảng viên</a>
        </div>
        <div class="message">
            <asp:Button ID="Button1" CssClass="myButtonCenter" runat="server" CausesValidation="False" OnClick="EditRecord" Text="Thêm" />
        </div>

    </div>
</asp:Content>
