using System;
using System.Web.UI;
using DevExpress.Web.ASPxClasses;

public partial class _Default : Page {
    protected void Page_Load(object sender, EventArgs e) {
        ASPxWebControl.RegisterUtilsScript(Page);
    }
}
