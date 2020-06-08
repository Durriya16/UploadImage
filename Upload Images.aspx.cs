using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services.Protocols;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestUploadImages
{
    public partial class Upload_Images : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            if (upImage.HasFile)
            {
                if (CheckFileType(upImage.FileName))
                {
                    string filepath = "~/UpImage/" + upImage.FileName;
                    upImage.SaveAs(MapPath(filepath));
                    Page_PreReader();
                }
            }
        }

        bool CheckFileType(string fileName)
        {
            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".gif":
                    return true;
                case ".png":
                    return true;
                case ".jpg":
                    return true;
                case ".jpeg":
                    return true;
                default:
                    return false;
            }
        }

        void Page_PreReader()
        {
            string upFolder = MapPath("~/UpImage/");
            DirectoryInfo dir = new DirectoryInfo(upFolder);
            DlistImage.DataSource = dir.GetFiles();
            DlistImage.DataBind();
        }

    }
}