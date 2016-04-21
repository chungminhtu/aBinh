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
                    <td class="style3">
                        <asp:TextBox ID="txtHoTenKhaiSinh" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Tên gọi khác: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtTenGoiKhac" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Ngày sinh: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgaySinh" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Giới tính: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtGioiTinh" runat="Server" Width="200px" Height="25px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Nam</asp:ListItem>
                            <asp:ListItem>Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>Hộ khẩu thường trú: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtHoKhauThuongTru" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Nơi sinh: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNoiSinh" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Quê quán Tỉnh: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtQueQuanTinh" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Quê quán Huyện: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtQueQuanHuyen" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Quê quán Xã: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtQueQuanXa" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Nơi ở hiện nay: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNoiOHienNay" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Dân tộc: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtDanToc" runat="Server" Width="200px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Kinh</asp:ListItem>
                            <asp:ListItem>Chứt</asp:ListItem>
                            <asp:ListItem>Mường</asp:ListItem>
                            <asp:ListItem>Thổ</asp:ListItem>
                            <asp:ListItem>Bố Y</asp:ListItem>
                            <asp:ListItem>Giáy</asp:ListItem>
                            <asp:ListItem>Lào</asp:ListItem>
                            <asp:ListItem>Lự</asp:ListItem>
                            <asp:ListItem>Nùng</asp:ListItem>
                            <asp:ListItem>Sán Chay</asp:ListItem>
                            <asp:ListItem>Tày</asp:ListItem>
                            <asp:ListItem>Thái</asp:ListItem>
                            <asp:ListItem>Cờ Lao</asp:ListItem>
                            <asp:ListItem>La Chí</asp:ListItem>
                            <asp:ListItem>La Ha</asp:ListItem>
                            <asp:ListItem>Pu Péo</asp:ListItem>
                            <asp:ListItem>Ba Na</asp:ListItem>
                            <asp:ListItem>Brâu</asp:ListItem>
                            <asp:ListItem>Bru - Vân Kiều</asp:ListItem>
                            <asp:ListItem>Chơ Ro</asp:ListItem>
                            <asp:ListItem>Co</asp:ListItem>
                            <asp:ListItem>Cơ Ho</asp:ListItem>
                            <asp:ListItem>Cơ Tu</asp:ListItem>
                            <asp:ListItem>Giẻ Triêng</asp:ListItem>
                            <asp:ListItem>Hrê</asp:ListItem>
                            <asp:ListItem>Kháng</asp:ListItem>
                            <asp:ListItem>Khơ Me</asp:ListItem>
                            <asp:ListItem>Khơ Mú</asp:ListItem>
                            <asp:ListItem>Mạ</asp:ListItem>
                            <asp:ListItem>Mảng</asp:ListItem>
                            <asp:ListItem>M’Nông</asp:ListItem>
                            <asp:ListItem>Ơ Đu</asp:ListItem>
                            <asp:ListItem>Rơ Măm</asp:ListItem>
                            <asp:ListItem>Tà Ôi</asp:ListItem>
                            <asp:ListItem>Xinh Mun</asp:ListItem>
                            <asp:ListItem>Xơ Đăng</asp:ListItem>
                            <asp:ListItem>X’Tiêng</asp:ListItem>
                            <asp:ListItem>Dao</asp:ListItem>
                            <asp:ListItem>H’Mông</asp:ListItem>
                            <asp:ListItem>Pà Thẻn</asp:ListItem>
                            <asp:ListItem>Chăm</asp:ListItem>
                            <asp:ListItem>Chu Ru</asp:ListItem>
                            <asp:ListItem>Ê Đê</asp:ListItem>
                            <asp:ListItem>Gia Rai</asp:ListItem>
                            <asp:ListItem>Ra Glai</asp:ListItem>
                            <asp:ListItem>Hoa</asp:ListItem>
                            <asp:ListItem>Ngái</asp:ListItem>
                            <asp:ListItem>Sán Dìu</asp:ListItem>
                            <asp:ListItem>Cống</asp:ListItem>
                            <asp:ListItem>Hà Nhì</asp:ListItem>
                            <asp:ListItem>La Hủ</asp:ListItem>
                            <asp:ListItem>Lô Lô</asp:ListItem>
                            <asp:ListItem>Phù Lá</asp:ListItem>
                            <asp:ListItem>Si La</asp:ListItem>

                        </asp:DropDownList></td>
                    <td>Tôn giáo: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtTonGiao" runat="Server" Width="200px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Phật giáo</asp:ListItem>
                            <asp:ListItem>Công giáo</asp:ListItem>
                            <asp:ListItem>Cao đài</asp:ListItem>
                            <asp:ListItem>Hòa hảo</asp:ListItem>
                            <asp:ListItem>Tin lành</asp:ListItem>
                            <asp:ListItem>Hồi giáo</asp:ListItem>
                            <asp:ListItem>T.Giáo khác</asp:ListItem>
                            <asp:ListItem>Không có</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Thành phần gia đình: </td>
                    <td class="style3">
                        <asp:DropDownList ID="txtThanhPhanGiaDinh" runat="Server" Width="200px" Height="25px">
                            <asp:ListItem Text="" Value=""></asp:ListItem>
                            <asp:ListItem>Công nhân</asp:ListItem>
                            <asp:ListItem>Nông dân</asp:ListItem>
                            <asp:ListItem>Cán bộ</asp:ListItem>
                            <asp:ListItem>Viên chức</asp:ListItem>
                            <asp:ListItem>Tri thức</asp:ListItem>
                            <asp:ListItem>Quân nhân</asp:ListItem>
                            <asp:ListItem>Thợ thủ công</asp:ListItem>
                            <asp:ListItem>Tiểu thương</asp:ListItem>
                            <asp:ListItem>Tiểu chủ</asp:ListItem>
                            <asp:ListItem>Địa chủ</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                    <td>Tình trạng hôn nhân: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtTinhTrangHonNhan" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Số CMND: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtSoCMND" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Ngày cấp CMND: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgayCapCMND" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Nơi cấp CMND: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNoiCapCMND" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Ảnh 4x6</td>
                    <td class="style3">
                        <asp:TextBox ID="txtAnh4x6" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtEmail" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Số điện thoại: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtSDT" runat="Server" Width="200px"></asp:TextBox></td>
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
                            <asp:ListItem>Cán bộ công chức</asp:ListItem>
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
                            <asp:ListItem>Cán bộ công chức</asp:ListItem>
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

                    <td>Số hiệu Cán bộ: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtSoHieuCB" runat="Server" Width="200px"></asp:TextBox></td>

                    <td>Đối tượng: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtDoiTuong" runat="Server" Width="200px"></asp:TextBox></td>
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
                    <td>Chức vụ người giới thiệu 1,: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtChucVuNguoiGioiThieu1" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Nghề nghiệp khi vào Đảng: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgheNghiepKhiVaoDang" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>NguoiGioiThieu2,: </td>
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
                        <asp:TextBox ID="txtSoLyLichDangVien" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Số thẻ Đảng viên: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtSoTheDangVien" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Mã cơ sở Đảng viên: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtMaCoSoDangQLDangVien" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Chức vụ trong Đảng: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtChucVuTrongDang" runat="Server" Width="200px"></asp:TextBox></td>
                </tr>

            </table>
        </asp:Panel>
        <asp:Panel CssClass="cssPanel" ID="PanelThongTinKyLuat" GroupingText="Thông tin kỷ luật" runat="server">
            <table style="border: none;">
                <tr>
                    <td>Ngày bị kỷ luật,: </td>
                    <td class="style3">
                        <asp:TextBox ID="txtNgayBiKyluat" runat="Server" Width="200px"></asp:TextBox></td>
                    <td>Lý do kỷ luật: </td>
                    <td class="style3">
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
