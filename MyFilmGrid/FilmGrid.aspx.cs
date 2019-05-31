using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MyFilmGrid
{
    public partial class FilmGrid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                UpdateFilmsGrid();
            }
        }

        private void UpdateFilmsGrid()
        {
            SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=FilmsDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from tblFilm", con);

            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        // Creating the Click event to highlight Rows in the grid
        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Attach the click event to each row in the grid
                e.Row.Attributes["onclick"] = ClientScript.GetPostBackClientHyperlink(this.GridView1, "Select$" + e.Row.RowIndex);
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            // Check if the viewstate is null or not
            if (ViewState["PreviousRowIndex"] != null)
            {
                // Get the previously selected row index
                var previousRowIndex = (int)ViewState["PreviousRowIndex"];

                //Get the previously selected row
                GridViewRow PreviousRow = GridView1.Rows[previousRowIndex];

                // Assign back color to the previously selected row
                PreviousRow.BackColor = System.Drawing.Color.White;
            }

            // Get the selected row index
            int currentRowIndex = Int32.Parse(e.CommandArgument.ToString());

            // Get the GridViewRow from the Current Row Index
            GridViewRow row = GridView1.Rows[currentRowIndex];

            // Change the color to anything you need
            row.BackColor = System.Drawing.Color.LightSalmon;

            // Assign the index as PreviousRowIndex
            ViewState["PreviousRowIndex"] = currentRowIndex;
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            TextBox1.Text = gr.Cells[0].Text;
            TextBox2.Text = gr.Cells[1].Text;
            TextBox3.Text = gr.Cells[2].Text;
            TextBox4.Text = gr.Cells[3].Text;
        }
    }


}