<%@ Page Language="C#" Title="Danh sách cán bộ" AutoEventWireup="true" CodeFile="DanhMucCanBo.aspx.cs" Inherits="DanhMucCanBo" MasterPageFile="MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">

    <div class="header">
        <i class="fa fa-table"></i>&nbsp;&nbsp;DANH SÁCH CÁN BỘ
    </div>
    <asp:Panel ID="Panel1" CssClass="cssPanel" GroupingText="Tìm Kiếm Cán Bộ" runat="server">
        <table style="border: none;">
            <tr>
                <td>Họ và Tên:</td>
                <td>
                    <asp:TextBox ID="txtHoTenKhaiSinh" runat="Server" Width="250px"></asp:TextBox></td>
                <td>Giới tính: </td>
                <td>
                    <asp:DropDownList ID="txtGioiTinh" runat="Server" Width="250px" Height="25px">
                        <asp:ListItem Text="" Value=""></asp:ListItem>
                        <asp:ListItem>Nam</asp:ListItem>
                        <asp:ListItem>Nữ</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>Mã cán bộ: </td>
                <td>
                    <asp:TextBox ID="txtMaCB" runat="Server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>

                <td>Chuyên môn nghiệp vụ: </td>
                <td>
                    <asp:DropDownList ID="txtChuyenMonNghiepVu" runat="Server" Width="250px" Height="25px">
                        <asp:ListItem Text="" Value=""></asp:ListItem>
                        <asp:ListItem>Chứng Chỉ</asp:ListItem>
                        <asp:ListItem>Cao Cấp</asp:ListItem>
                        <asp:ListItem>Cao Đẳng</asp:ListItem>
                        <asp:ListItem>CN Kỹ Thuật, NV Nghiệp Vụ (SD)</asp:ListItem>
                        <asp:ListItem>Đại Học</asp:ListItem>
                        <asp:ListItem>Trung Cấp</asp:ListItem>
                        <asp:ListItem>Thạc Sỹ</asp:ListItem>
                        <asp:ListItem>Tiến Sỹ Khoa Học</asp:ListItem>
                        <asp:ListItem>Tiến Sỹ (Phó Tiến Sỹ)</asp:ListItem>
                        <asp:ListItem>Viện Sỹ</asp:ListItem>
                    </asp:DropDownList></td>

                <td>Trình độ học vấn:</td>
                <td>
                    <asp:DropDownList ID="txtTrinhDoHocVan" runat="Server" Width="250px" Height="25px">
                        <asp:ListItem Text="" Value=""></asp:ListItem>
                        <asp:ListItem>Trung cấp</asp:ListItem>
                        <asp:ListItem>Cao đẳng</asp:ListItem>
                        <asp:ListItem>Đại học</asp:ListItem>
                        <asp:ListItem>Thạc sỹ</asp:ListItem>
                        <asp:ListItem>Phó tiến sỹ</asp:ListItem>
                        <asp:ListItem>Tiến sỹ</asp:ListItem>
                        <asp:ListItem>Cao cấp</asp:ListItem>
                    </asp:DropDownList>
                </td>

            </tr>
            <tr>
                <td>Dân tộc: </td>
                <td>
                    <asp:DropDownList ID="txtDanToc" runat="Server" Width="250px" Height="25px">
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
                    </asp:DropDownList>
                </td>

                <td>Tôn giáo: </td>
                <td>
                    <asp:DropDownList ID="txtTonGiao" runat="Server" Width="250px" Height="25px">
                        <asp:ListItem Text="" Value=""></asp:ListItem>
                        <asp:ListItem>Phật giáo</asp:ListItem>
                        <asp:ListItem>Công giáo</asp:ListItem>
                        <asp:ListItem>Cao đài</asp:ListItem>
                        <asp:ListItem>Hòa hảo</asp:ListItem>
                        <asp:ListItem>Tin lành</asp:ListItem>
                        <asp:ListItem>Hồi giáo</asp:ListItem>
                        <asp:ListItem>T.Giáo khác</asp:ListItem>
                        <asp:ListItem>Không có</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <div>
            <button id="btnTimKiem" runat="server" onserverclick="btnTimKiem_Click" class="myButton"><i class="fa fa-search"></i>&nbsp;&nbsp;Tìm kiếm</button>
            <button id="btnAll" runat="server" onserverclick="btnAll_Click" class="myButton"><i class="fa fa-search-minus"></i>&nbsp;&nbsp;Xóa tìm kiếm</button>
        </div>
    </asp:Panel>
    <p></p>
    <div>
        <asp:GridView ID="GridCanBo" runat="server" CellPadding="4"
            Width="100%" OnRowDeleting="OnRowDeletingCB" OnRowCommand="GridCanBo_RowCommand" OnPreRender="GridCanBo_PreRender" OnRowCreated="GridCanBo_OnRowCreated"
            AutoGenerateColumns="False" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button class="editButton" ID="Button1" runat="server" CausesValidation="False" CommandName="MyButtonClick" CommandArgument='<%# Container.DataItemIndex %>' Text="&#xf044; Sửa" />
                    </ItemTemplate>
                    <HeaderTemplate>
                        <asp:Button CssClass="editButton" ID="Button3" runat="server" CausesValidation="False" CommandName="Add" Text="&#xf067; Thêm Cán Bộ" />
                    </HeaderTemplate>
                    <ItemStyle />
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button CssClass="editButton" ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="&#xf00d; Xóa" OnClientClick="return confirm('Bạn có muốn xóa dữ liệu này không?');" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="10px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Số">
                    <ItemTemplate>
                        <asp:Label ID="lblSoHieuCB" runat="server" Text='<%# Eval("SoHieuCB") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="50px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Họ và Tên">
                    <ItemTemplate>
                        <asp:Label ID="lblHoTenKhaiSinh" runat="server" Text='<%# Eval("HoTenKhaiSinh") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giới tính">
                    <ItemTemplate>
                        <asp:Label ID="lblGioiTinh" runat="server" Text='<%# Eval("GioiTinh") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="100px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sinh ngày">
                    <ItemTemplate>
                        <asp:Label ID="lblNgaySinh" runat="server" Text='<%# Eval("NgaySinh") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Chức vụ hiện tại">
                    <ItemTemplate>
                        <asp:Label ID="lblChucVuHienTai" runat="server" Text='<%# Eval("ChucVuHienTai") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="100px"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hộ khẩu TT">
                    <ItemTemplate>
                        <asp:Label ID="lblHoKhauThuongTru" runat="server" Text='<%# Eval("HoKhauThuongTru") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="200px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nơi sinh">
                    <ItemTemplate>
                        <asp:Label ID="lblNoiSinh" runat="server" Text='<%# Eval("NoiSinh") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="200px"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Dân tộc">
                    <ItemTemplate>
                        <asp:Label ID="lblDanToc" runat="server" Text='<%# Eval("DanToc") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tôn giáo">
                    <ItemTemplate>
                        <asp:Label ID="lblTonGiao" runat="server" Text='<%# Eval("TonGiao") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="CMND">
                    <ItemTemplate>
                        <asp:Label ID="lblCMND" runat="server" Text='<%# Eval("SoCMND") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle></ItemStyle>
                </asp:TemplateField>

            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#2196F3" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#2196F3" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
    <p></p>
    <div class="back">
        <a href="Main.aspx"><i class="fa fa-arrow-circle-left"></i>&nbsp;&nbsp;Quay về trang chủ</a>
    </div>
</asp:Content>
