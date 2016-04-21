using System;
using System.Web.UI.WebControls;

public partial class DanhMucDangVien : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridCB();
        }
    }

    SOA.ServiceDangVien service = new SOA.ServiceDangVien();
    private void BindGridCB()
    {
        GridDangVien.DataSource = service.DanhSachDangVien("TheBinh", "12345678");
        GridDangVien.DataBind();
    } 

    protected void GridDangVien_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "MyButtonClick")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);

            GridViewRow row = GridDangVien.Rows[rowindex];
            int MaCB = Common.TryParseObjectToInt((row.FindControl("lblID") as Label).Text);
            Response.Redirect("ThemSuaDangVien.aspx?ID=" + MaCB);
        }
        else if (e.CommandName == "Add")
        {
            Response.Redirect("ThemSuaDangVien.aspx");
        }
    }
    protected void GridDangVien_PreRender(object sender, EventArgs e)
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
        tk.NgheNghiep = txtNgheNghiep.SelectedValue;
        tk.ThanhPhanGiaDinh = txtThanhPhanGiaDinh.SelectedValue;
        tk.DanToc = txtDanToc.SelectedValue;
        tk.TonGiao = txtTonGiao.SelectedValue;
        GridDangVien.DataSource = service.TimKiemDangVien("TheBinh", "12345678", tk);
        GridDangVien.DataBind();
    }

    protected void btnAll_Click(object sender, EventArgs e)
    {
        Response.Redirect("DanhMucDangVien.aspx");
    }

    protected void GridDangVien_OnRowCreated(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[2].Visible = false;
    }
}
