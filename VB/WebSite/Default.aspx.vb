Imports Microsoft.VisualBasic
Imports System
Imports System.Web.UI
Imports DevExpress.Web.ASPxClasses

Partial Public Class _Default
	Inherits Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		ASPxWebControl.RegisterUtilsScript(Page)
	End Sub
End Class
