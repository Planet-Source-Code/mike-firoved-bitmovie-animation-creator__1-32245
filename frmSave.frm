VERSION 5.00
Begin VB.Form frmSave 
   Caption         =   "Save File"
   ClientHeight    =   5115
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   2715
   Icon            =   "frmSave.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5115
   ScaleWidth      =   2715
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtFile 
      Height          =   315
      Left            =   120
      TabIndex        =   5
      Top             =   4260
      Width           =   2475
   End
   Begin VB.DriveListBox drvSave 
      Height          =   315
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   2475
   End
   Begin VB.DirListBox DirSave 
      Height          =   2115
      Left            =   120
      TabIndex        =   3
      Top             =   540
      Width           =   2475
   End
   Begin VB.FileListBox filSave 
      Height          =   1455
      Left            =   120
      Pattern         =   "*.bmv"
      TabIndex        =   2
      Top             =   2700
      Width           =   2475
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "Save"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   4680
      Width           =   1155
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   375
      Left            =   1380
      TabIndex        =   0
      Top             =   4680
      Width           =   1200
   End
End
Attribute VB_Name = "frmSave"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
    Me.Hide
End Sub

Private Sub cmdsave_click()
    'save
    On Error GoTo savError
    'check for overwrite
    If Right(LCase(txtFile.Text), 4) <> ".bmv" Then txtFile.Text = txtFile.Text & ".bmv"
    If Dir(DirSave.Path & "\" & txtFile.Text) = txtFile.Text Then
        yn = MsgBox(DirSave.Path & "\" & txtFile.Text & " already exists." & vbCrLf & "Do you want to replace it?", vbDefaultButton2 + vbExclamation + vbYesNo, "Save")
        If yn = vbNo Then Exit Sub
    End If
    
    Open txtFile.Text For Output As #1
        Print #1, frmdisplay.txtMovie.Text
    Close #1
    isSaved = True
    
    Me.Hide
    Exit Sub
savError:
    MsgBox "An error occured while saving. Please check " & vbCrLf & "the filename and try again", vbExclamation + vbDefaultButton1 + vbOKOnly, "Error: saving file"
    Err.Clear
End Sub




Private Sub dirsave_Change()
    filSave.Path = DirSave.Path
    
End Sub

Private Sub drvsave_Change()
    DirSave.Path = drvSave.Drive
    
End Sub



Private Sub filsave_DblClick()
    txtFile.Text = filSave.FileName
End Sub

Private Sub Form_Load()
    drvSave.Drive = Left(App.Path, InStr(1, App.Path, "\"))
    DirSave.Path = App.Path
    filSave.Path = App.Path
End Sub



'Just hide the form when you click the X button
Private Sub Form_Terminate()
    Me.Hide
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Cancel = 2
    Me.Hide
End Sub
Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    Cancel = 2
    Me.Hide
End Sub


