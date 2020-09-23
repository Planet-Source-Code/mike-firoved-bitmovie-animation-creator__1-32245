VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "About MyApp"
   ClientHeight    =   4965
   ClientLeft      =   2340
   ClientTop       =   1935
   ClientWidth     =   3285
   ClipControls    =   0   'False
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3426.931
   ScaleMode       =   0  'User
   ScaleWidth      =   3084.785
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      Height          =   3060
      Left            =   112
      Picture         =   "frmAbout.frx":0000
      ScaleHeight     =   3000
      ScaleWidth      =   3000
      TabIndex        =   1
      Top             =   120
      Width           =   3060
   End
   Begin VB.CommandButton cmdOK 
      Cancel          =   -1  'True
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   345
      Left            =   1012
      TabIndex        =   0
      Top             =   4440
      Width           =   1260
   End
   Begin VB.Label Label1 
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Cordia New"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   120
      TabIndex        =   2
      Top             =   3300
      Width           =   3015
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdOK_Click()
    Me.Hide
End Sub

Private Sub Form_Load()
    aa = aa & " " & App.EXEName & " " & App.Major & "." & App.Minor & "." & App.Revision & vbCrLf
    aa = aa & " Contact me at:" & vbCrLf & " msfwebdude@hotmail.com" & vbclrf

    Me.Label1.Caption = aa
End Sub

