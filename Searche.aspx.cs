using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class Searche : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

      }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

    }
}