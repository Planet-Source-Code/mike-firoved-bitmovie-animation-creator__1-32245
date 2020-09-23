VERSION 5.00
Begin VB.Form frmViewSource 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Bitmovie View Source"
   ClientHeight    =   6525
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   2490
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6525
   ScaleWidth      =   2490
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtSource 
      Height          =   5355
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   600
      Width           =   2235
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   6120
      Width           =   2235
   End
   Begin VB.Label Label1 
      Caption         =   "See the Help file for information on this format"
      Height          =   435
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   2250
   End
End
Attribute VB_Name = "frmViewSource"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False





Private Sub cmdOK_Click()
    Me.Hide
End Sub
