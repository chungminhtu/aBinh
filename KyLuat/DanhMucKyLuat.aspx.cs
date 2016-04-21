using System;
using System.Web.UI.WebControls;

public partial class DanhMucKyLuat : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridCB();
        }
    }

    SOA.ServiceKyLuat service = new SOA.ServiceKyLuat();
    private void BindGridCB()
    {
        GridKyLuat.DataSource = service.DanhSachKyLuat("TheBinh", "12345678");
        GridKyLuat.DataBind();
    } 

    protected void GridKyLuat_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "MyButtonClick")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);

            GridViewRow row = GridKyLuat.Rows[rowindex];
            int MaCB = Common.TryParseObjectToInt((row.FindControl("lblID") as Label).Text);
            Response.Redirect("ThemSuaKyLuat.aspx?ID=" + MaCB);
        }
        else if (e.CommandName == "Add")
        {
            Response.Redirect("ThemSuaKyLuat.aspx");
        }
    }
    protected void GridKyLuat_PreRender(object sender, EventArgs e)
    {
        var gridView = (GridView)sender;

        if (gridView.Controls.Count != 0)
        {
            var header = (GridViewRow)gridView.Controls[0].Controls[0];
            //header.Cells[0].ColumnSpan = 2;
            //header.Cells[1].Visible = false;
        }
    }
    protected void btnTimKiem_Click(object sender, EventArgs e)
    {
        SOA.TimKiem tk = new SOA.TimKiem();
        tk.HoTen = txtHoTenKhaiSinh.Text;
        tk.GioiTinh = txtGioiTinh.SelectedValue;
        tk.MaCB = txtMaCB.Text;
        tk.ChuyenMonNghiepVu = txtChuyenMonNghiepVu.SelectedValue;
        tk.TrinhDoHocVan = txtTrinhDoHocVan.SelectedValue;
        tk.NgheNghiep = txtNgheNghiep.SelectedValue;
        tk.ThanhPhanGiaDinh = txtThanhPhanGiaDinh.SelectedValue;
        tk.DanToc = txtDanToc.SelectedValue;
        tk.TonGiao = txtTonGiao.SelectedValue;
        GridKyLuat.DataSource = service.TimKiemKyLuat("TheBinh", "12345678", tk);
        GridKyLuat.DataBind();
    }

    protected void btnAll_Click(object sender, EventArgs e)
    {
        Response.Redirect("DanhMucKyLuat.aspx");
    }

    protected void GridKyLuat_OnRowCreated(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[1].Visible = false;
    }
}
