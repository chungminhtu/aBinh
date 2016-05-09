using System;
using System.Web.UI.WebControls;

public partial class DanhMucCanBo : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridCB();
        }
    }

    SOA.ServiceCanBo service = new SOA.ServiceCanBo();
    private void BindGridCB()
    {
        GridCanBo.DataSource = service.DanhSachCanBo("TheBinh", "12345678");
        GridCanBo.DataBind();
    }
    protected void OnRowDeletingCB(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = GridCanBo.Rows[e.RowIndex];
        int MaCB = Common.TryParseObjectToInt((row.FindControl("lblID") as Label).Text);
        service.XoaCanBo("TheBinh", "12345678", MaCB);
        BindGridCB();
    }

    protected void GridCanBo_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "MyButtonClick")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);

            GridViewRow row = GridCanBo.Rows[rowindex];
            int MaCB = Common.TryParseObjectToInt((row.FindControl("lblID") as Label).Text);
            Response.Redirect("ThemSuaCanBo.aspx?ID=" + MaCB);
        }
        else if (e.CommandName == "Add")
        {
            Response.Redirect("ThemSuaCanBo.aspx");
        }
    }
    protected void GridCanBo_PreRender(object sender, EventArgs e)
    {
        var gridView = (GridView)sender;

        if (gridView.Controls.Count != 0)
        {
            var header = (GridViewRow)gridView.Controls[0].Controls[0];
            header.Cells[0].ColumnSpan = 2;
            header.Cells[1].Visible = false;
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
        tk.DanToc = txtDanToc.SelectedValue;
        tk.TonGiao = txtTonGiao.SelectedValue;
        GridCanBo.DataSource = service.TimKiemCanBo("TheBinh", "12345678", tk);
        GridCanBo.DataBind();
    }

    protected void btnAll_Click(object sender, EventArgs e)
    {
        Response.Redirect("DanhMucCanBo.aspx");
    }

    protected void GridCanBo_OnRowCreated(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[2].Visible = false;
    }
}
