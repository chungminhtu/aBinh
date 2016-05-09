<%@ Page Language="C#" Title="Danh sách Đảng viên" AutoEventWireup="true" CodeFile="DanhMucDangVien.aspx.cs" Inherits="DanhMucDangVien" MasterPageFile="MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">

    <div class="header">
        <i class="fa fa-table"></i>&nbsp;&nbsp;DANH SÁCH ĐẢNG VIÊN
    </div>
    <asp:Panel ID="Panel1" CssClass="cssPanel" GroupingText="Tìm Kiếm Đảng viên" runat="server">
        <table style="border: none;">
            <tr>
                <td>Họ và Tên:</td>
                <td>
                    <asp:TextBox ID="txtHoTenKhaiSinh" runat="Server" Width="250px"></asp:TextBox></td>
                <td>Số hiệu Đảng viên: </td>
                <td>
                    <asp:TextBox ID="txtMaCB" runat="Server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Giới tính: </td>
                <td>
                    <asp:DropDownList ID="txtGioiTinh" runat="Server" Width="250px" Height="25px">
                        <asp:ListItem Text="" Value=""></asp:ListItem>
                        <asp:ListItem>Nam</asp:ListItem>
                        <asp:ListItem>Nữ</asp:ListItem>
                    </asp:DropDownList>
                </td>


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


            </tr>
        </table>
        <div>
            <button id="btnTimKiem" runat="server" onserverclick="btnTimKiem_Click" class="myButton"><i class="fa fa-search"></i>&nbsp;&nbsp;Tìm kiếm</button>
            <button id="btnAll" runat="server" onserverclick="btnAll_Click" class="myButton"><i class="fa fa-search-minus"></i>&nbsp;&nbsp;Xóa tìm kiếm</button>
        </div>
    </asp:Panel>
    <p></p>
    <div>
        <asp:GridView ID="GridDangVien" runat="server" CellPadding="4"
            Width="100%" OnRowDeleting="OnRowDeletingCB"  OnRowCommand="GridDangVien_RowCommand" OnPreRender="GridDangVien_PreRender" OnRowCreated="GridDangVien_OnRowCreated"
            AutoGenerateColumns="False" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button class="editButton" ID="Button2" runat="server" CausesValidation="False" CommandName="View" CommandArgument='<%# Container.DataItemIndex %>' Text="&#xf044; Xem" />
                        <asp:Button class="editButton" ID="Button3" runat="server" CausesValidation="False" CommandName="Edit" CommandArgument='<%# Container.DataItemIndex %>' Text="&#xf044; Sửa" />
                        <asp:Button class="editButton" ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" CommandArgument='<%# Container.DataItemIndex %>' Text="&#xf044; Xoá"  OnClientClick="return confirm('Bạn có muốn xóa dữ liệu này không?');" />
                    </ItemTemplate>
                    <ItemStyle />
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
