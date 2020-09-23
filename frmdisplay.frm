VERSION 5.00
Begin VB.Form frmdisplay 
   Caption         =   "Bitmovie"
   ClientHeight    =   2895
   ClientLeft      =   60
   ClientTop       =   630
   ClientWidth     =   4590
   FillColor       =   &H00FFFFFF&
   Icon            =   "frmdisplay.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   2895
   ScaleWidth      =   4590
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox pctSave 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      DrawWidth       =   20
      Height          =   1935
      Left            =   4620
      ScaleHeight     =   1875
      ScaleWidth      =   1935
      TabIndex        =   16
      Top             =   240
      Width           =   1995
   End
   Begin VB.CommandButton cmdPlay 
      Caption         =   "Play"
      Height          =   255
      Left            =   3420
      TabIndex        =   15
      Top             =   2520
      Width           =   1035
   End
   Begin VB.TextBox txtPage 
      Alignment       =   2  'Center
      Height          =   315
      Left            =   3420
      TabIndex        =   12
      Text            =   "Pg 99 of 99"
      Top             =   1260
      Width           =   1035
   End
   Begin VB.CommandButton cmdAddPage 
      Caption         =   "Add Page"
      Height          =   255
      Left            =   3420
      TabIndex        =   11
      Top             =   2100
      Width           =   1035
   End
   Begin VB.CommandButton cmdNextPage 
      Caption         =   "Next Page"
      Height          =   315
      Left            =   3420
      TabIndex        =   10
      Top             =   1680
      Width           =   1035
   End
   Begin VB.CommandButton cmdPrevPage 
      Caption         =   "Prev Page"
      Height          =   315
      Left            =   3420
      TabIndex        =   9
      Top             =   840
      Width           =   1035
   End
   Begin VB.TextBox txtMovie 
      Height          =   1935
      Left            =   7380
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   8
      Top             =   120
      Width           =   1995
   End
   Begin VB.CommandButton cmdColor 
      BackColor       =   &H000000FF&
      Height          =   195
      Index           =   7
      Left            =   660
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   1560
      Width           =   495
   End
   Begin VB.CommandButton cmdColor 
      BackColor       =   &H000000FF&
      Height          =   195
      Index           =   6
      Left            =   660
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   1320
      Width           =   495
   End
   Begin VB.CommandButton cmdColor 
      BackColor       =   &H000000FF&
      Height          =   195
      Index           =   5
      Left            =   660
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   1080
      Width           =   495
   End
   Begin VB.CommandButton cmdColor 
      BackColor       =   &H000000FF&
      Height          =   195
      Index           =   4
      Left            =   660
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   840
      Width           =   495
   End
   Begin VB.CommandButton cmdColor 
      BackColor       =   &H000000FF&
      Height          =   195
      Index           =   3
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1560
      Width           =   495
   End
   Begin VB.CommandButton cmdColor 
      BackColor       =   &H000000FF&
      Height          =   195
      Index           =   2
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1320
      Width           =   495
   End
   Begin VB.CommandButton cmdColor 
      BackColor       =   &H000000FF&
      Height          =   195
      Index           =   1
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1080
      Width           =   495
   End
   Begin VB.CommandButton cmdColor 
      BackColor       =   &H000000FF&
      Height          =   195
      Index           =   0
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   840
      Width           =   495
   End
   Begin VB.Label Label2 
      Caption         =   $"frmdisplay.frx":030A
      Height          =   615
      Left            =   120
      TabIndex        =   17
      Top             =   120
      Width           =   4395
   End
   Begin VB.Label Label1 
      Caption         =   "(Column, Row)"
      Height          =   195
      Left            =   120
      TabIndex        =   14
      Top             =   2280
      Width           =   1035
   End
   Begin VB.Label lblCoord 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "(0,0)"
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   2520
      Width           =   1035
   End
   Begin VB.Shape shpCurrentColor 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   315
      Left            =   120
      Top             =   1860
      Width           =   1035
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1023
      Left            =   3180
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1022
      Left            =   3120
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1021
      Left            =   3060
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1020
      Left            =   3000
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1019
      Left            =   2940
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1018
      Left            =   2880
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1017
      Left            =   2820
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1016
      Left            =   2760
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1015
      Left            =   2700
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1014
      Left            =   2640
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1013
      Left            =   2580
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1012
      Left            =   2520
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1011
      Left            =   2460
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1010
      Left            =   2400
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1009
      Left            =   2340
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1008
      Left            =   2280
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1007
      Left            =   2220
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1006
      Left            =   2160
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1005
      Left            =   2100
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1004
      Left            =   2040
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1003
      Left            =   1980
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1002
      Left            =   1920
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1001
      Left            =   1860
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1000
      Left            =   1800
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   999
      Left            =   1740
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   998
      Left            =   1680
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   997
      Left            =   1620
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   996
      Left            =   1560
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   995
      Left            =   1500
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   994
      Left            =   1440
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   993
      Left            =   1380
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   992
      Left            =   1320
      Top             =   2700
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   991
      Left            =   3180
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   990
      Left            =   3120
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   989
      Left            =   3060
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   988
      Left            =   3000
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   987
      Left            =   2940
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   986
      Left            =   2880
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   985
      Left            =   2820
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   984
      Left            =   2760
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   983
      Left            =   2700
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   982
      Left            =   2640
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   981
      Left            =   2580
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   980
      Left            =   2520
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   979
      Left            =   2460
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   978
      Left            =   2400
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   977
      Left            =   2340
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   976
      Left            =   2280
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   975
      Left            =   2220
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   974
      Left            =   2160
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   973
      Left            =   2100
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   972
      Left            =   2040
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   971
      Left            =   1980
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   970
      Left            =   1920
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   969
      Left            =   1860
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   968
      Left            =   1800
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   967
      Left            =   1740
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   966
      Left            =   1680
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   965
      Left            =   1620
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   964
      Left            =   1560
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   963
      Left            =   1500
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   962
      Left            =   1440
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   961
      Left            =   1380
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   960
      Left            =   1320
      Top             =   2640
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   959
      Left            =   3180
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   958
      Left            =   3120
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   957
      Left            =   3060
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   956
      Left            =   3000
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   955
      Left            =   2940
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   954
      Left            =   2880
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   953
      Left            =   2820
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   952
      Left            =   2760
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   951
      Left            =   2700
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   950
      Left            =   2640
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   949
      Left            =   2580
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   948
      Left            =   2520
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   947
      Left            =   2460
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   946
      Left            =   2400
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   945
      Left            =   2340
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   944
      Left            =   2280
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   943
      Left            =   2220
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   942
      Left            =   2160
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   941
      Left            =   2100
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   940
      Left            =   2040
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   939
      Left            =   1980
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   938
      Left            =   1920
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   937
      Left            =   1860
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   936
      Left            =   1800
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   935
      Left            =   1740
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   934
      Left            =   1680
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   933
      Left            =   1620
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   932
      Left            =   1560
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   931
      Left            =   1500
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   930
      Left            =   1440
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   929
      Left            =   1380
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   928
      Left            =   1320
      Top             =   2580
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   927
      Left            =   3180
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   926
      Left            =   3120
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   925
      Left            =   3060
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   924
      Left            =   3000
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   923
      Left            =   2940
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   922
      Left            =   2880
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   921
      Left            =   2820
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   920
      Left            =   2760
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   919
      Left            =   2700
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   918
      Left            =   2640
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   917
      Left            =   2580
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   916
      Left            =   2520
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   915
      Left            =   2460
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   914
      Left            =   2400
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   913
      Left            =   2340
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   912
      Left            =   2280
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   911
      Left            =   2220
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   910
      Left            =   2160
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   909
      Left            =   2100
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   908
      Left            =   2040
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   907
      Left            =   1980
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   906
      Left            =   1920
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   905
      Left            =   1860
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   904
      Left            =   1800
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   903
      Left            =   1740
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   902
      Left            =   1680
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   901
      Left            =   1620
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   900
      Left            =   1560
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   899
      Left            =   1500
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   898
      Left            =   1440
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   897
      Left            =   1380
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   896
      Left            =   1320
      Top             =   2520
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   895
      Left            =   3180
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   894
      Left            =   3120
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   893
      Left            =   3060
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   892
      Left            =   3000
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   891
      Left            =   2940
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   890
      Left            =   2880
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   889
      Left            =   2820
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   888
      Left            =   2760
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   887
      Left            =   2700
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   886
      Left            =   2640
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   885
      Left            =   2580
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   884
      Left            =   2520
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   883
      Left            =   2460
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   882
      Left            =   2400
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   881
      Left            =   2340
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   880
      Left            =   2280
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   879
      Left            =   2220
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   878
      Left            =   2160
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   877
      Left            =   2100
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   876
      Left            =   2040
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   875
      Left            =   1980
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   874
      Left            =   1920
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   873
      Left            =   1860
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   872
      Left            =   1800
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   871
      Left            =   1740
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   870
      Left            =   1680
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   869
      Left            =   1620
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   868
      Left            =   1560
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   867
      Left            =   1500
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   866
      Left            =   1440
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   865
      Left            =   1380
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   864
      Left            =   1320
      Top             =   2460
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   863
      Left            =   3180
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   862
      Left            =   3120
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   861
      Left            =   3060
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   860
      Left            =   3000
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   859
      Left            =   2940
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   858
      Left            =   2880
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   857
      Left            =   2820
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   856
      Left            =   2760
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   855
      Left            =   2700
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   854
      Left            =   2640
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   853
      Left            =   2580
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   852
      Left            =   2520
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   851
      Left            =   2460
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   850
      Left            =   2400
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   849
      Left            =   2340
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   848
      Left            =   2280
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   847
      Left            =   2220
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   846
      Left            =   2160
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   845
      Left            =   2100
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   844
      Left            =   2040
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   843
      Left            =   1980
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   842
      Left            =   1920
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   841
      Left            =   1860
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   840
      Left            =   1800
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   839
      Left            =   1740
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   838
      Left            =   1680
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   837
      Left            =   1620
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   836
      Left            =   1560
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   835
      Left            =   1500
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   834
      Left            =   1440
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   833
      Left            =   1380
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   832
      Left            =   1320
      Top             =   2400
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   831
      Left            =   3180
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   830
      Left            =   3120
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   829
      Left            =   3060
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   828
      Left            =   3000
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   827
      Left            =   2940
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   826
      Left            =   2880
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   825
      Left            =   2820
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   824
      Left            =   2760
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   823
      Left            =   2700
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   822
      Left            =   2640
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   821
      Left            =   2580
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   820
      Left            =   2520
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   819
      Left            =   2460
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   818
      Left            =   2400
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   817
      Left            =   2340
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   816
      Left            =   2280
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   815
      Left            =   2220
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   814
      Left            =   2160
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   813
      Left            =   2100
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   812
      Left            =   2040
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   811
      Left            =   1980
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   810
      Left            =   1920
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   809
      Left            =   1860
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   808
      Left            =   1800
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   807
      Left            =   1740
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   806
      Left            =   1680
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   805
      Left            =   1620
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   804
      Left            =   1560
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   803
      Left            =   1500
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   802
      Left            =   1440
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   801
      Left            =   1380
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   800
      Left            =   1320
      Top             =   2340
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   799
      Left            =   3180
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   798
      Left            =   3120
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   797
      Left            =   3060
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   796
      Left            =   3000
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   795
      Left            =   2940
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   794
      Left            =   2880
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   793
      Left            =   2820
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   792
      Left            =   2760
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   791
      Left            =   2700
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   790
      Left            =   2640
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   789
      Left            =   2580
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   788
      Left            =   2520
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   787
      Left            =   2460
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   786
      Left            =   2400
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   785
      Left            =   2340
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   784
      Left            =   2280
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   783
      Left            =   2220
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   782
      Left            =   2160
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   781
      Left            =   2100
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   780
      Left            =   2040
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   779
      Left            =   1980
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   778
      Left            =   1920
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   777
      Left            =   1860
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   776
      Left            =   1800
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   775
      Left            =   1740
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   774
      Left            =   1680
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   773
      Left            =   1620
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   772
      Left            =   1560
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   771
      Left            =   1500
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   770
      Left            =   1440
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   769
      Left            =   1380
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   768
      Left            =   1320
      Top             =   2280
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   767
      Left            =   3180
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   766
      Left            =   3120
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   765
      Left            =   3060
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   764
      Left            =   3000
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   763
      Left            =   2940
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   762
      Left            =   2880
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   761
      Left            =   2820
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   760
      Left            =   2760
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   759
      Left            =   2700
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   758
      Left            =   2640
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   757
      Left            =   2580
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   756
      Left            =   2520
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   755
      Left            =   2460
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   754
      Left            =   2400
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   753
      Left            =   2340
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   752
      Left            =   2280
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   751
      Left            =   2220
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   750
      Left            =   2160
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   749
      Left            =   2100
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   748
      Left            =   2040
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   747
      Left            =   1980
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   746
      Left            =   1920
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   745
      Left            =   1860
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   744
      Left            =   1800
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   743
      Left            =   1740
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   742
      Left            =   1680
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   741
      Left            =   1620
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   740
      Left            =   1560
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   739
      Left            =   1500
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   738
      Left            =   1440
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   737
      Left            =   1380
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   736
      Left            =   1320
      Top             =   2220
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   735
      Left            =   3180
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   734
      Left            =   3120
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   733
      Left            =   3060
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   732
      Left            =   3000
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   731
      Left            =   2940
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   730
      Left            =   2880
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   729
      Left            =   2820
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   728
      Left            =   2760
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   727
      Left            =   2700
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   726
      Left            =   2640
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   725
      Left            =   2580
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   724
      Left            =   2520
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   723
      Left            =   2460
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   722
      Left            =   2400
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   721
      Left            =   2340
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   720
      Left            =   2280
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   719
      Left            =   2220
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   718
      Left            =   2160
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   717
      Left            =   2100
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   716
      Left            =   2040
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   715
      Left            =   1980
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   714
      Left            =   1920
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   713
      Left            =   1860
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   712
      Left            =   1800
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   711
      Left            =   1740
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   710
      Left            =   1680
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   709
      Left            =   1620
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   708
      Left            =   1560
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   707
      Left            =   1500
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   706
      Left            =   1440
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   705
      Left            =   1380
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   704
      Left            =   1320
      Top             =   2160
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   703
      Left            =   3180
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   702
      Left            =   3120
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   701
      Left            =   3060
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   700
      Left            =   3000
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   699
      Left            =   2940
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   698
      Left            =   2880
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   697
      Left            =   2820
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   696
      Left            =   2760
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   695
      Left            =   2700
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   694
      Left            =   2640
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   693
      Left            =   2580
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   692
      Left            =   2520
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   691
      Left            =   2460
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   690
      Left            =   2400
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   689
      Left            =   2340
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   688
      Left            =   2280
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   687
      Left            =   2220
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   686
      Left            =   2160
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   685
      Left            =   2100
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   684
      Left            =   2040
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   683
      Left            =   1980
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   682
      Left            =   1920
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   681
      Left            =   1860
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   680
      Left            =   1800
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   679
      Left            =   1740
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   678
      Left            =   1680
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   677
      Left            =   1620
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   676
      Left            =   1560
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   675
      Left            =   1500
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   674
      Left            =   1440
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   673
      Left            =   1380
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   672
      Left            =   1320
      Top             =   2100
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   671
      Left            =   3180
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   670
      Left            =   3120
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   669
      Left            =   3060
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   668
      Left            =   3000
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   667
      Left            =   2940
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   666
      Left            =   2880
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   665
      Left            =   2820
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   664
      Left            =   2760
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   663
      Left            =   2700
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   662
      Left            =   2640
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   661
      Left            =   2580
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   660
      Left            =   2520
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   659
      Left            =   2460
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   658
      Left            =   2400
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   657
      Left            =   2340
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   656
      Left            =   2280
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   655
      Left            =   2220
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   654
      Left            =   2160
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   653
      Left            =   2100
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   652
      Left            =   2040
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   651
      Left            =   1980
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   650
      Left            =   1920
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   649
      Left            =   1860
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   648
      Left            =   1800
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   647
      Left            =   1740
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   646
      Left            =   1680
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   645
      Left            =   1620
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   644
      Left            =   1560
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   643
      Left            =   1500
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   642
      Left            =   1440
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   641
      Left            =   1380
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   640
      Left            =   1320
      Top             =   2040
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   639
      Left            =   3180
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   638
      Left            =   3120
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   637
      Left            =   3060
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   636
      Left            =   3000
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   635
      Left            =   2940
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   634
      Left            =   2880
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   633
      Left            =   2820
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   632
      Left            =   2760
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   631
      Left            =   2700
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   630
      Left            =   2640
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   629
      Left            =   2580
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   628
      Left            =   2520
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   627
      Left            =   2460
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   626
      Left            =   2400
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   625
      Left            =   2340
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   624
      Left            =   2280
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   623
      Left            =   2220
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   622
      Left            =   2160
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   621
      Left            =   2100
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   620
      Left            =   2040
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   619
      Left            =   1980
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   618
      Left            =   1920
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   617
      Left            =   1860
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   616
      Left            =   1800
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   615
      Left            =   1740
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   614
      Left            =   1680
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   613
      Left            =   1620
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   612
      Left            =   1560
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   611
      Left            =   1500
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   610
      Left            =   1440
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   609
      Left            =   1380
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   608
      Left            =   1320
      Top             =   1980
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   607
      Left            =   3180
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   606
      Left            =   3120
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   605
      Left            =   3060
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   604
      Left            =   3000
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   603
      Left            =   2940
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   602
      Left            =   2880
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   601
      Left            =   2820
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   600
      Left            =   2760
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   599
      Left            =   2700
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   598
      Left            =   2640
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   597
      Left            =   2580
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   596
      Left            =   2520
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   595
      Left            =   2460
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   594
      Left            =   2400
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   593
      Left            =   2340
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   592
      Left            =   2280
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   591
      Left            =   2220
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   590
      Left            =   2160
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   589
      Left            =   2100
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   588
      Left            =   2040
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   587
      Left            =   1980
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   586
      Left            =   1920
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   585
      Left            =   1860
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   584
      Left            =   1800
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   583
      Left            =   1740
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   582
      Left            =   1680
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   581
      Left            =   1620
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   580
      Left            =   1560
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   579
      Left            =   1500
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   578
      Left            =   1440
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   577
      Left            =   1380
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   576
      Left            =   1320
      Top             =   1920
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   575
      Left            =   3180
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   574
      Left            =   3120
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   573
      Left            =   3060
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   572
      Left            =   3000
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   571
      Left            =   2940
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   570
      Left            =   2880
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   569
      Left            =   2820
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   568
      Left            =   2760
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   567
      Left            =   2700
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   566
      Left            =   2640
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   565
      Left            =   2580
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   564
      Left            =   2520
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   563
      Left            =   2460
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   562
      Left            =   2400
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   561
      Left            =   2340
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   560
      Left            =   2280
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   559
      Left            =   2220
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   558
      Left            =   2160
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   557
      Left            =   2100
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   556
      Left            =   2040
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   555
      Left            =   1980
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   554
      Left            =   1920
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   553
      Left            =   1860
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   552
      Left            =   1800
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   551
      Left            =   1740
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   550
      Left            =   1680
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   549
      Left            =   1620
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   548
      Left            =   1560
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   547
      Left            =   1500
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   546
      Left            =   1440
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   545
      Left            =   1380
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   544
      Left            =   1320
      Top             =   1860
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   543
      Left            =   3180
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   542
      Left            =   3120
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   541
      Left            =   3060
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   540
      Left            =   3000
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   539
      Left            =   2940
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   538
      Left            =   2880
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   537
      Left            =   2820
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   536
      Left            =   2760
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   535
      Left            =   2700
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   534
      Left            =   2640
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   533
      Left            =   2580
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   532
      Left            =   2520
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   531
      Left            =   2460
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   530
      Left            =   2400
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   529
      Left            =   2340
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   528
      Left            =   2280
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   527
      Left            =   2220
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   526
      Left            =   2160
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   525
      Left            =   2100
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   524
      Left            =   2040
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   523
      Left            =   1980
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   522
      Left            =   1920
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   521
      Left            =   1860
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   520
      Left            =   1800
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   519
      Left            =   1740
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   518
      Left            =   1680
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   517
      Left            =   1620
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   516
      Left            =   1560
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   515
      Left            =   1500
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   514
      Left            =   1440
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   513
      Left            =   1380
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   512
      Left            =   1320
      Top             =   1800
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   511
      Left            =   3180
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   510
      Left            =   3120
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   509
      Left            =   3060
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   508
      Left            =   3000
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   507
      Left            =   2940
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   506
      Left            =   2880
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   505
      Left            =   2820
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   504
      Left            =   2760
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   503
      Left            =   2700
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   502
      Left            =   2640
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   501
      Left            =   2580
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   500
      Left            =   2520
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   499
      Left            =   2460
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   498
      Left            =   2400
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   497
      Left            =   2340
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   496
      Left            =   2280
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   495
      Left            =   2220
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   494
      Left            =   2160
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   493
      Left            =   2100
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   492
      Left            =   2040
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   491
      Left            =   1980
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   490
      Left            =   1920
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   489
      Left            =   1860
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   488
      Left            =   1800
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   487
      Left            =   1740
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   486
      Left            =   1680
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   485
      Left            =   1620
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   484
      Left            =   1560
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   483
      Left            =   1500
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   482
      Left            =   1440
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   481
      Left            =   1380
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   480
      Left            =   1320
      Top             =   1740
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   479
      Left            =   3180
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   478
      Left            =   3120
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   477
      Left            =   3060
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   476
      Left            =   3000
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   475
      Left            =   2940
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   474
      Left            =   2880
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   473
      Left            =   2820
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   472
      Left            =   2760
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   471
      Left            =   2700
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   470
      Left            =   2640
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   469
      Left            =   2580
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   468
      Left            =   2520
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   467
      Left            =   2460
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   466
      Left            =   2400
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   465
      Left            =   2340
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   464
      Left            =   2280
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   463
      Left            =   2220
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   462
      Left            =   2160
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   461
      Left            =   2100
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   460
      Left            =   2040
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   459
      Left            =   1980
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   458
      Left            =   1920
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   457
      Left            =   1860
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   456
      Left            =   1800
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   455
      Left            =   1740
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   454
      Left            =   1680
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   453
      Left            =   1620
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   452
      Left            =   1560
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   451
      Left            =   1500
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   450
      Left            =   1440
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   449
      Left            =   1380
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   448
      Left            =   1320
      Top             =   1680
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   447
      Left            =   3180
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   446
      Left            =   3120
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   445
      Left            =   3060
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   444
      Left            =   3000
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   443
      Left            =   2940
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   442
      Left            =   2880
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   441
      Left            =   2820
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   440
      Left            =   2760
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   439
      Left            =   2700
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   438
      Left            =   2640
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   437
      Left            =   2580
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   436
      Left            =   2520
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   435
      Left            =   2460
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   434
      Left            =   2400
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   433
      Left            =   2340
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   432
      Left            =   2280
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   431
      Left            =   2220
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   430
      Left            =   2160
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   429
      Left            =   2100
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   428
      Left            =   2040
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   427
      Left            =   1980
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   426
      Left            =   1920
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   425
      Left            =   1860
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   424
      Left            =   1800
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   423
      Left            =   1740
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   422
      Left            =   1680
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   421
      Left            =   1620
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   420
      Left            =   1560
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   419
      Left            =   1500
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   418
      Left            =   1440
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   417
      Left            =   1380
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   416
      Left            =   1320
      Top             =   1620
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   415
      Left            =   3180
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   414
      Left            =   3120
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   413
      Left            =   3060
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   412
      Left            =   3000
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   411
      Left            =   2940
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   410
      Left            =   2880
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   409
      Left            =   2820
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   408
      Left            =   2760
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   407
      Left            =   2700
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   406
      Left            =   2640
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   405
      Left            =   2580
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   404
      Left            =   2520
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   403
      Left            =   2460
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   402
      Left            =   2400
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   401
      Left            =   2340
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   400
      Left            =   2280
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   399
      Left            =   2220
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   398
      Left            =   2160
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   397
      Left            =   2100
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   396
      Left            =   2040
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   395
      Left            =   1980
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   394
      Left            =   1920
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   393
      Left            =   1860
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   392
      Left            =   1800
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   391
      Left            =   1740
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   390
      Left            =   1680
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   389
      Left            =   1620
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   388
      Left            =   1560
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   387
      Left            =   1500
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   386
      Left            =   1440
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   385
      Left            =   1380
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   384
      Left            =   1320
      Top             =   1560
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   383
      Left            =   3180
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   382
      Left            =   3120
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   381
      Left            =   3060
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   380
      Left            =   3000
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   379
      Left            =   2940
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   378
      Left            =   2880
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   377
      Left            =   2820
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   376
      Left            =   2760
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   375
      Left            =   2700
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   374
      Left            =   2640
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   373
      Left            =   2580
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   372
      Left            =   2520
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   371
      Left            =   2460
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   370
      Left            =   2400
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   369
      Left            =   2340
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   368
      Left            =   2280
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   367
      Left            =   2220
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   366
      Left            =   2160
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   365
      Left            =   2100
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   364
      Left            =   2040
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   363
      Left            =   1980
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   362
      Left            =   1920
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   361
      Left            =   1860
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   360
      Left            =   1800
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   359
      Left            =   1740
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   358
      Left            =   1680
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   357
      Left            =   1620
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   356
      Left            =   1560
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   355
      Left            =   1500
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   354
      Left            =   1440
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   353
      Left            =   1380
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   352
      Left            =   1320
      Top             =   1500
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   351
      Left            =   3180
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   350
      Left            =   3120
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   349
      Left            =   3060
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   348
      Left            =   3000
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   347
      Left            =   2940
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   346
      Left            =   2880
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   345
      Left            =   2820
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   344
      Left            =   2760
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   343
      Left            =   2700
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   342
      Left            =   2640
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   341
      Left            =   2580
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   340
      Left            =   2520
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   339
      Left            =   2460
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   338
      Left            =   2400
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   337
      Left            =   2340
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   336
      Left            =   2280
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   335
      Left            =   2220
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   334
      Left            =   2160
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   333
      Left            =   2100
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   332
      Left            =   2040
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   331
      Left            =   1980
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   330
      Left            =   1920
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   329
      Left            =   1860
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   328
      Left            =   1800
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   327
      Left            =   1740
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   326
      Left            =   1680
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   325
      Left            =   1620
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   324
      Left            =   1560
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   323
      Left            =   1500
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   322
      Left            =   1440
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   321
      Left            =   1380
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   320
      Left            =   1320
      Top             =   1440
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   319
      Left            =   3180
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   318
      Left            =   3120
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   317
      Left            =   3060
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   316
      Left            =   3000
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   315
      Left            =   2940
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   314
      Left            =   2880
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   313
      Left            =   2820
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   312
      Left            =   2760
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   311
      Left            =   2700
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   310
      Left            =   2640
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   309
      Left            =   2580
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   308
      Left            =   2520
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   307
      Left            =   2460
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   306
      Left            =   2400
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   305
      Left            =   2340
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   304
      Left            =   2280
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   303
      Left            =   2220
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   302
      Left            =   2160
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   301
      Left            =   2100
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   300
      Left            =   2040
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   299
      Left            =   1980
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   298
      Left            =   1920
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   297
      Left            =   1860
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   296
      Left            =   1800
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   295
      Left            =   1740
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   294
      Left            =   1680
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   293
      Left            =   1620
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   292
      Left            =   1560
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   291
      Left            =   1500
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   290
      Left            =   1440
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   289
      Left            =   1380
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   288
      Left            =   1320
      Top             =   1380
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   287
      Left            =   3180
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   286
      Left            =   3120
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   285
      Left            =   3060
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   284
      Left            =   3000
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   283
      Left            =   2940
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   282
      Left            =   2880
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   281
      Left            =   2820
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   280
      Left            =   2760
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   279
      Left            =   2700
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   278
      Left            =   2640
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   277
      Left            =   2580
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   276
      Left            =   2520
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   275
      Left            =   2460
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   274
      Left            =   2400
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   273
      Left            =   2340
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   272
      Left            =   2280
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   271
      Left            =   2220
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   270
      Left            =   2160
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   269
      Left            =   2100
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   268
      Left            =   2040
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   267
      Left            =   1980
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   266
      Left            =   1920
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   265
      Left            =   1860
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   264
      Left            =   1800
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   263
      Left            =   1740
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   262
      Left            =   1680
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   261
      Left            =   1620
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   260
      Left            =   1560
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   259
      Left            =   1500
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   258
      Left            =   1440
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   257
      Left            =   1380
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   256
      Left            =   1320
      Top             =   1320
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   255
      Left            =   3180
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   254
      Left            =   3120
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   253
      Left            =   3060
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   252
      Left            =   3000
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   251
      Left            =   2940
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   250
      Left            =   2880
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   249
      Left            =   2820
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   248
      Left            =   2760
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   247
      Left            =   2700
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   246
      Left            =   2640
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   245
      Left            =   2580
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   244
      Left            =   2520
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   243
      Left            =   2460
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   242
      Left            =   2400
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   241
      Left            =   2340
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   240
      Left            =   2280
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   239
      Left            =   2220
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   238
      Left            =   2160
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   237
      Left            =   2100
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   236
      Left            =   2040
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   235
      Left            =   1980
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   234
      Left            =   1920
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   233
      Left            =   1860
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   232
      Left            =   1800
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   231
      Left            =   1740
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   230
      Left            =   1680
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   229
      Left            =   1620
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   228
      Left            =   1560
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   227
      Left            =   1500
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   226
      Left            =   1440
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   225
      Left            =   1380
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   224
      Left            =   1320
      Top             =   1260
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   223
      Left            =   3180
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   222
      Left            =   3120
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   221
      Left            =   3060
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   220
      Left            =   3000
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   219
      Left            =   2940
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   218
      Left            =   2880
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   217
      Left            =   2820
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   216
      Left            =   2760
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   215
      Left            =   2700
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   214
      Left            =   2640
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   213
      Left            =   2580
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   212
      Left            =   2520
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   211
      Left            =   2460
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   210
      Left            =   2400
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   209
      Left            =   2340
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   208
      Left            =   2280
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   207
      Left            =   2220
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   206
      Left            =   2160
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   205
      Left            =   2100
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   204
      Left            =   2040
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   203
      Left            =   1980
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   202
      Left            =   1920
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   201
      Left            =   1860
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   200
      Left            =   1800
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   199
      Left            =   1740
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   198
      Left            =   1680
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   197
      Left            =   1620
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   196
      Left            =   1560
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   195
      Left            =   1500
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   194
      Left            =   1440
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   193
      Left            =   1380
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   192
      Left            =   1320
      Top             =   1200
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   191
      Left            =   3180
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   190
      Left            =   3120
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   189
      Left            =   3060
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   188
      Left            =   3000
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   187
      Left            =   2940
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   186
      Left            =   2880
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   185
      Left            =   2820
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   184
      Left            =   2760
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   183
      Left            =   2700
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   182
      Left            =   2640
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   181
      Left            =   2580
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   180
      Left            =   2520
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   179
      Left            =   2460
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   178
      Left            =   2400
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   177
      Left            =   2340
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   176
      Left            =   2280
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   175
      Left            =   2220
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   174
      Left            =   2160
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   173
      Left            =   2100
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   172
      Left            =   2040
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   171
      Left            =   1980
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   170
      Left            =   1920
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   169
      Left            =   1860
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   168
      Left            =   1800
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   167
      Left            =   1740
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   166
      Left            =   1680
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   165
      Left            =   1620
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   164
      Left            =   1560
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   163
      Left            =   1500
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   162
      Left            =   1440
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   161
      Left            =   1380
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   160
      Left            =   1320
      Top             =   1140
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   159
      Left            =   3180
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   158
      Left            =   3120
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   157
      Left            =   3060
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   156
      Left            =   3000
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   155
      Left            =   2940
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   154
      Left            =   2880
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   153
      Left            =   2820
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   152
      Left            =   2760
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   151
      Left            =   2700
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   150
      Left            =   2640
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   149
      Left            =   2580
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   148
      Left            =   2520
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   147
      Left            =   2460
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   146
      Left            =   2400
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   145
      Left            =   2340
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   144
      Left            =   2280
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   143
      Left            =   2220
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   142
      Left            =   2160
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   141
      Left            =   2100
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   140
      Left            =   2040
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   139
      Left            =   1980
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   138
      Left            =   1920
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   137
      Left            =   1860
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   136
      Left            =   1800
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   135
      Left            =   1740
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   134
      Left            =   1680
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   133
      Left            =   1620
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   132
      Left            =   1560
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   131
      Left            =   1500
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   130
      Left            =   1440
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   129
      Left            =   1380
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   128
      Left            =   1320
      Top             =   1080
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   127
      Left            =   3180
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   126
      Left            =   3120
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   125
      Left            =   3060
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   124
      Left            =   3000
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   123
      Left            =   2940
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   122
      Left            =   2880
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   121
      Left            =   2820
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   120
      Left            =   2760
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   119
      Left            =   2700
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   118
      Left            =   2640
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   117
      Left            =   2580
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   116
      Left            =   2520
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   115
      Left            =   2460
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   114
      Left            =   2400
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   113
      Left            =   2340
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   112
      Left            =   2280
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   111
      Left            =   2220
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   110
      Left            =   2160
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   109
      Left            =   2100
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   108
      Left            =   2040
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   107
      Left            =   1980
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   106
      Left            =   1920
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   105
      Left            =   1860
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   104
      Left            =   1800
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   103
      Left            =   1740
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   102
      Left            =   1680
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   101
      Left            =   1620
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   100
      Left            =   1560
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   99
      Left            =   1500
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   98
      Left            =   1440
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   97
      Left            =   1380
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   96
      Left            =   1320
      Top             =   1020
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   95
      Left            =   3180
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   94
      Left            =   3120
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   93
      Left            =   3060
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   92
      Left            =   3000
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   91
      Left            =   2940
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   90
      Left            =   2880
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   89
      Left            =   2820
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   88
      Left            =   2760
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   87
      Left            =   2700
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   86
      Left            =   2640
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   85
      Left            =   2580
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   84
      Left            =   2520
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   83
      Left            =   2460
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   82
      Left            =   2400
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   81
      Left            =   2340
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   80
      Left            =   2280
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   79
      Left            =   2220
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   78
      Left            =   2160
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   77
      Left            =   2100
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   76
      Left            =   2040
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   75
      Left            =   1980
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   74
      Left            =   1920
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   73
      Left            =   1860
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   72
      Left            =   1800
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   71
      Left            =   1740
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   70
      Left            =   1680
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   69
      Left            =   1620
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   68
      Left            =   1560
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   67
      Left            =   1500
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   66
      Left            =   1440
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   65
      Left            =   1380
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   64
      Left            =   1320
      Top             =   960
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   63
      Left            =   3180
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   62
      Left            =   3120
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   61
      Left            =   3060
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   60
      Left            =   3000
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   59
      Left            =   2940
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   58
      Left            =   2880
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   57
      Left            =   2820
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   56
      Left            =   2760
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   55
      Left            =   2700
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   54
      Left            =   2640
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   53
      Left            =   2580
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   52
      Left            =   2520
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   51
      Left            =   2460
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   50
      Left            =   2400
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   49
      Left            =   2340
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   48
      Left            =   2280
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   47
      Left            =   2220
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   46
      Left            =   2160
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   45
      Left            =   2100
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   44
      Left            =   2040
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   43
      Left            =   1980
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   42
      Left            =   1920
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   41
      Left            =   1860
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   40
      Left            =   1800
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   39
      Left            =   1740
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   38
      Left            =   1680
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   37
      Left            =   1620
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   36
      Left            =   1560
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   35
      Left            =   1500
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   34
      Left            =   1440
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   33
      Left            =   1380
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   32
      Left            =   1320
      Top             =   900
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   31
      Left            =   3180
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   30
      Left            =   3120
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   29
      Left            =   3060
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   28
      Left            =   3000
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   27
      Left            =   2940
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   26
      Left            =   2880
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   25
      Left            =   2820
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   24
      Left            =   2760
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   23
      Left            =   2700
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   22
      Left            =   2640
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   21
      Left            =   2580
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   20
      Left            =   2520
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   19
      Left            =   2460
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   18
      Left            =   2400
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   17
      Left            =   2340
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   16
      Left            =   2280
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   15
      Left            =   2220
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   14
      Left            =   2160
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   13
      Left            =   2100
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   12
      Left            =   2040
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   11
      Left            =   1980
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   10
      Left            =   1920
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   9
      Left            =   1860
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   8
      Left            =   1800
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   7
      Left            =   1740
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   6
      Left            =   1680
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   5
      Left            =   1620
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   4
      Left            =   1560
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   3
      Left            =   1500
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   2
      Left            =   1440
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   1
      Left            =   1380
      Top             =   840
      Width           =   60
   End
   Begin VB.Image imgTarget 
      Height          =   60
      Index           =   0
      Left            =   1320
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1023
      Left            =   3180
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1022
      Left            =   3120
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1021
      Left            =   3060
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1020
      Left            =   3000
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1019
      Left            =   2940
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1018
      Left            =   2880
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1017
      Left            =   2820
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1016
      Left            =   2760
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1015
      Left            =   2700
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1014
      Left            =   2640
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1013
      Left            =   2580
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1012
      Left            =   2520
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1011
      Left            =   2460
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1010
      Left            =   2400
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1009
      Left            =   2340
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1008
      Left            =   2280
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1007
      Left            =   2220
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1006
      Left            =   2160
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1005
      Left            =   2100
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1004
      Left            =   2040
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1003
      Left            =   1980
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1002
      Left            =   1920
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1001
      Left            =   1860
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1000
      Left            =   1800
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   999
      Left            =   1740
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   998
      Left            =   1680
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   997
      Left            =   1620
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   996
      Left            =   1560
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   995
      Left            =   1500
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   994
      Left            =   1440
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   993
      Left            =   1380
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   992
      Left            =   1320
      Top             =   2700
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   991
      Left            =   3180
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   990
      Left            =   3120
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   989
      Left            =   3060
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   988
      Left            =   3000
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   987
      Left            =   2940
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   986
      Left            =   2880
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   985
      Left            =   2820
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   984
      Left            =   2760
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   983
      Left            =   2700
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   982
      Left            =   2640
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   981
      Left            =   2580
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   980
      Left            =   2520
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   979
      Left            =   2460
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   978
      Left            =   2400
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   977
      Left            =   2340
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   976
      Left            =   2280
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   975
      Left            =   2220
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   974
      Left            =   2160
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   973
      Left            =   2100
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   972
      Left            =   2040
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   971
      Left            =   1980
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   970
      Left            =   1920
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   969
      Left            =   1860
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   968
      Left            =   1800
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   967
      Left            =   1740
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   966
      Left            =   1680
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   965
      Left            =   1620
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   964
      Left            =   1560
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   963
      Left            =   1500
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   962
      Left            =   1440
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   961
      Left            =   1380
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   960
      Left            =   1320
      Top             =   2640
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   959
      Left            =   3180
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   958
      Left            =   3120
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   957
      Left            =   3060
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   956
      Left            =   3000
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   955
      Left            =   2940
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   954
      Left            =   2880
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   953
      Left            =   2820
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   952
      Left            =   2760
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   951
      Left            =   2700
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   950
      Left            =   2640
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   949
      Left            =   2580
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   948
      Left            =   2520
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   947
      Left            =   2460
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   946
      Left            =   2400
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   945
      Left            =   2340
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   944
      Left            =   2280
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   943
      Left            =   2220
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   942
      Left            =   2160
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   941
      Left            =   2100
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   940
      Left            =   2040
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   939
      Left            =   1980
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   938
      Left            =   1920
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   937
      Left            =   1860
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   936
      Left            =   1800
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   935
      Left            =   1740
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   934
      Left            =   1680
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   933
      Left            =   1620
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   932
      Left            =   1560
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   931
      Left            =   1500
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   930
      Left            =   1440
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   929
      Left            =   1380
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   928
      Left            =   1320
      Top             =   2580
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   927
      Left            =   3180
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   926
      Left            =   3120
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   925
      Left            =   3060
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   924
      Left            =   3000
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   923
      Left            =   2940
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   922
      Left            =   2880
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   921
      Left            =   2820
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   920
      Left            =   2760
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   919
      Left            =   2700
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   918
      Left            =   2640
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   917
      Left            =   2580
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   916
      Left            =   2520
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   915
      Left            =   2460
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   914
      Left            =   2400
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   913
      Left            =   2340
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   912
      Left            =   2280
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   911
      Left            =   2220
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   910
      Left            =   2160
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   909
      Left            =   2100
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   908
      Left            =   2040
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   907
      Left            =   1980
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   906
      Left            =   1920
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   905
      Left            =   1860
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   904
      Left            =   1800
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   903
      Left            =   1740
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   902
      Left            =   1680
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   901
      Left            =   1620
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   900
      Left            =   1560
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   899
      Left            =   1500
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   898
      Left            =   1440
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   897
      Left            =   1380
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   896
      Left            =   1320
      Top             =   2520
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   895
      Left            =   3180
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   894
      Left            =   3120
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   893
      Left            =   3060
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   892
      Left            =   3000
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   891
      Left            =   2940
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   890
      Left            =   2880
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   889
      Left            =   2820
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   888
      Left            =   2760
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   887
      Left            =   2700
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   886
      Left            =   2640
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   885
      Left            =   2580
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   884
      Left            =   2520
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   883
      Left            =   2460
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   882
      Left            =   2400
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   881
      Left            =   2340
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   880
      Left            =   2280
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   879
      Left            =   2220
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   878
      Left            =   2160
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   877
      Left            =   2100
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   876
      Left            =   2040
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   875
      Left            =   1980
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   874
      Left            =   1920
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   873
      Left            =   1860
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   872
      Left            =   1800
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   871
      Left            =   1740
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   870
      Left            =   1680
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   869
      Left            =   1620
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   868
      Left            =   1560
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   867
      Left            =   1500
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   866
      Left            =   1440
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   865
      Left            =   1380
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   864
      Left            =   1320
      Top             =   2460
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   863
      Left            =   3180
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   862
      Left            =   3120
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   861
      Left            =   3060
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   860
      Left            =   3000
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   859
      Left            =   2940
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   858
      Left            =   2880
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   857
      Left            =   2820
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   856
      Left            =   2760
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   855
      Left            =   2700
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   854
      Left            =   2640
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   853
      Left            =   2580
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   852
      Left            =   2520
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   851
      Left            =   2460
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   850
      Left            =   2400
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   849
      Left            =   2340
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   848
      Left            =   2280
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   847
      Left            =   2220
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   846
      Left            =   2160
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   845
      Left            =   2100
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   844
      Left            =   2040
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   843
      Left            =   1980
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   842
      Left            =   1920
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   841
      Left            =   1860
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   840
      Left            =   1800
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   839
      Left            =   1740
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   838
      Left            =   1680
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   837
      Left            =   1620
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   836
      Left            =   1560
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   835
      Left            =   1500
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   834
      Left            =   1440
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   833
      Left            =   1380
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   832
      Left            =   1320
      Top             =   2400
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   831
      Left            =   3180
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   830
      Left            =   3120
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   829
      Left            =   3060
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   828
      Left            =   3000
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   827
      Left            =   2940
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   826
      Left            =   2880
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   825
      Left            =   2820
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   824
      Left            =   2760
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   823
      Left            =   2700
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   822
      Left            =   2640
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   821
      Left            =   2580
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   820
      Left            =   2520
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   819
      Left            =   2460
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   818
      Left            =   2400
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   817
      Left            =   2340
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   816
      Left            =   2280
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   815
      Left            =   2220
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   814
      Left            =   2160
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   813
      Left            =   2100
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   812
      Left            =   2040
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   811
      Left            =   1980
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   810
      Left            =   1920
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   809
      Left            =   1860
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   808
      Left            =   1800
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   807
      Left            =   1740
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   806
      Left            =   1680
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   805
      Left            =   1620
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   804
      Left            =   1560
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   803
      Left            =   1500
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   802
      Left            =   1440
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   801
      Left            =   1380
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   800
      Left            =   1320
      Top             =   2340
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   799
      Left            =   3180
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   798
      Left            =   3120
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   797
      Left            =   3060
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   796
      Left            =   3000
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   795
      Left            =   2940
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   794
      Left            =   2880
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   793
      Left            =   2820
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   792
      Left            =   2760
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   791
      Left            =   2700
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   790
      Left            =   2640
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   789
      Left            =   2580
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   788
      Left            =   2520
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   787
      Left            =   2460
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   786
      Left            =   2400
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   785
      Left            =   2340
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   784
      Left            =   2280
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   783
      Left            =   2220
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   782
      Left            =   2160
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   781
      Left            =   2100
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   780
      Left            =   2040
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   779
      Left            =   1980
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   778
      Left            =   1920
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   777
      Left            =   1860
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   776
      Left            =   1800
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   775
      Left            =   1740
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   774
      Left            =   1680
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   773
      Left            =   1620
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   772
      Left            =   1560
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   771
      Left            =   1500
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   770
      Left            =   1440
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   769
      Left            =   1380
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   768
      Left            =   1320
      Top             =   2280
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   767
      Left            =   3180
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   766
      Left            =   3120
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   765
      Left            =   3060
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   764
      Left            =   3000
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   763
      Left            =   2940
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   762
      Left            =   2880
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   761
      Left            =   2820
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   760
      Left            =   2760
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   759
      Left            =   2700
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   758
      Left            =   2640
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   757
      Left            =   2580
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   756
      Left            =   2520
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   755
      Left            =   2460
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   754
      Left            =   2400
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   753
      Left            =   2340
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   752
      Left            =   2280
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   751
      Left            =   2220
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   750
      Left            =   2160
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   749
      Left            =   2100
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   748
      Left            =   2040
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   747
      Left            =   1980
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   746
      Left            =   1920
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   745
      Left            =   1860
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   744
      Left            =   1800
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   743
      Left            =   1740
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   742
      Left            =   1680
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   741
      Left            =   1620
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   740
      Left            =   1560
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   739
      Left            =   1500
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   738
      Left            =   1440
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   737
      Left            =   1380
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   736
      Left            =   1320
      Top             =   2220
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   735
      Left            =   3180
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   734
      Left            =   3120
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   733
      Left            =   3060
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   732
      Left            =   3000
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   731
      Left            =   2940
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   730
      Left            =   2880
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   729
      Left            =   2820
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   728
      Left            =   2760
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   727
      Left            =   2700
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   726
      Left            =   2640
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   725
      Left            =   2580
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   724
      Left            =   2520
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   723
      Left            =   2460
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   722
      Left            =   2400
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   721
      Left            =   2340
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   720
      Left            =   2280
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   719
      Left            =   2220
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   718
      Left            =   2160
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   717
      Left            =   2100
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   716
      Left            =   2040
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   715
      Left            =   1980
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   714
      Left            =   1920
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   713
      Left            =   1860
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   712
      Left            =   1800
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   711
      Left            =   1740
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   710
      Left            =   1680
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   709
      Left            =   1620
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   708
      Left            =   1560
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   707
      Left            =   1500
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   706
      Left            =   1440
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   705
      Left            =   1380
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   704
      Left            =   1320
      Top             =   2160
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   703
      Left            =   3180
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   702
      Left            =   3120
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   701
      Left            =   3060
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   700
      Left            =   3000
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   699
      Left            =   2940
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   698
      Left            =   2880
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   697
      Left            =   2820
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   696
      Left            =   2760
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   695
      Left            =   2700
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   694
      Left            =   2640
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   693
      Left            =   2580
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   692
      Left            =   2520
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   691
      Left            =   2460
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   690
      Left            =   2400
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   689
      Left            =   2340
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   688
      Left            =   2280
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   687
      Left            =   2220
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   686
      Left            =   2160
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   685
      Left            =   2100
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   684
      Left            =   2040
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   683
      Left            =   1980
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   682
      Left            =   1920
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   681
      Left            =   1860
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   680
      Left            =   1800
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   679
      Left            =   1740
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   678
      Left            =   1680
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   677
      Left            =   1620
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   676
      Left            =   1560
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   675
      Left            =   1500
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   674
      Left            =   1440
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   673
      Left            =   1380
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   672
      Left            =   1320
      Top             =   2100
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   671
      Left            =   3180
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   670
      Left            =   3120
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   669
      Left            =   3060
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   668
      Left            =   3000
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   667
      Left            =   2940
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   666
      Left            =   2880
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   665
      Left            =   2820
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   664
      Left            =   2760
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   663
      Left            =   2700
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   662
      Left            =   2640
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   661
      Left            =   2580
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   660
      Left            =   2520
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   659
      Left            =   2460
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   658
      Left            =   2400
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   657
      Left            =   2340
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   656
      Left            =   2280
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   655
      Left            =   2220
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   654
      Left            =   2160
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   653
      Left            =   2100
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   652
      Left            =   2040
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   651
      Left            =   1980
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   650
      Left            =   1920
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   649
      Left            =   1860
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   648
      Left            =   1800
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   647
      Left            =   1740
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   646
      Left            =   1680
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   645
      Left            =   1620
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   644
      Left            =   1560
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   643
      Left            =   1500
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   642
      Left            =   1440
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   641
      Left            =   1380
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   640
      Left            =   1320
      Top             =   2040
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   639
      Left            =   3180
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   638
      Left            =   3120
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   637
      Left            =   3060
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   636
      Left            =   3000
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   635
      Left            =   2940
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   634
      Left            =   2880
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   633
      Left            =   2820
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   632
      Left            =   2760
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   631
      Left            =   2700
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   630
      Left            =   2640
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   629
      Left            =   2580
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   628
      Left            =   2520
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   627
      Left            =   2460
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   626
      Left            =   2400
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   625
      Left            =   2340
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   624
      Left            =   2280
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   623
      Left            =   2220
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   622
      Left            =   2160
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   621
      Left            =   2100
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   620
      Left            =   2040
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   619
      Left            =   1980
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   618
      Left            =   1920
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   617
      Left            =   1860
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   616
      Left            =   1800
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   615
      Left            =   1740
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   614
      Left            =   1680
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   613
      Left            =   1620
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   612
      Left            =   1560
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   611
      Left            =   1500
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   610
      Left            =   1440
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   609
      Left            =   1380
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   608
      Left            =   1320
      Top             =   1980
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   607
      Left            =   3180
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   606
      Left            =   3120
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   605
      Left            =   3060
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   604
      Left            =   3000
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   603
      Left            =   2940
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   602
      Left            =   2880
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   601
      Left            =   2820
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   600
      Left            =   2760
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   599
      Left            =   2700
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   598
      Left            =   2640
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   597
      Left            =   2580
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   596
      Left            =   2520
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   595
      Left            =   2460
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   594
      Left            =   2400
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   593
      Left            =   2340
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   592
      Left            =   2280
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   591
      Left            =   2220
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   590
      Left            =   2160
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   589
      Left            =   2100
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   588
      Left            =   2040
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   587
      Left            =   1980
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   586
      Left            =   1920
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   585
      Left            =   1860
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   584
      Left            =   1800
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   583
      Left            =   1740
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   582
      Left            =   1680
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   581
      Left            =   1620
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   580
      Left            =   1560
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   579
      Left            =   1500
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   578
      Left            =   1440
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   577
      Left            =   1380
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   576
      Left            =   1320
      Top             =   1920
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   575
      Left            =   3180
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   574
      Left            =   3120
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   573
      Left            =   3060
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   572
      Left            =   3000
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   571
      Left            =   2940
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   570
      Left            =   2880
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   569
      Left            =   2820
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   568
      Left            =   2760
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   567
      Left            =   2700
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   566
      Left            =   2640
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   565
      Left            =   2580
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   564
      Left            =   2520
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   563
      Left            =   2460
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   562
      Left            =   2400
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   561
      Left            =   2340
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   560
      Left            =   2280
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   559
      Left            =   2220
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   558
      Left            =   2160
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   557
      Left            =   2100
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   556
      Left            =   2040
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   555
      Left            =   1980
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   554
      Left            =   1920
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   553
      Left            =   1860
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   552
      Left            =   1800
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   551
      Left            =   1740
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   550
      Left            =   1680
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   549
      Left            =   1620
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   548
      Left            =   1560
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   547
      Left            =   1500
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   546
      Left            =   1440
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   545
      Left            =   1380
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   544
      Left            =   1320
      Top             =   1860
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   543
      Left            =   3180
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   542
      Left            =   3120
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   541
      Left            =   3060
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   540
      Left            =   3000
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   539
      Left            =   2940
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   538
      Left            =   2880
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   537
      Left            =   2820
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   536
      Left            =   2760
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   535
      Left            =   2700
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   534
      Left            =   2640
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   533
      Left            =   2580
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   532
      Left            =   2520
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   531
      Left            =   2460
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   530
      Left            =   2400
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   529
      Left            =   2340
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   528
      Left            =   2280
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   527
      Left            =   2220
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   526
      Left            =   2160
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   525
      Left            =   2100
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   524
      Left            =   2040
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   523
      Left            =   1980
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   522
      Left            =   1920
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   521
      Left            =   1860
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   520
      Left            =   1800
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   519
      Left            =   1740
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   518
      Left            =   1680
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   517
      Left            =   1620
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   516
      Left            =   1560
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   515
      Left            =   1500
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   514
      Left            =   1440
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   513
      Left            =   1380
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   512
      Left            =   1320
      Top             =   1800
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   511
      Left            =   3180
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   510
      Left            =   3120
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   509
      Left            =   3060
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   508
      Left            =   3000
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   507
      Left            =   2940
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   506
      Left            =   2880
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   505
      Left            =   2820
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   504
      Left            =   2760
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   503
      Left            =   2700
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   502
      Left            =   2640
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   501
      Left            =   2580
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   500
      Left            =   2520
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   499
      Left            =   2460
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   498
      Left            =   2400
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   497
      Left            =   2340
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   496
      Left            =   2280
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   495
      Left            =   2220
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   494
      Left            =   2160
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   493
      Left            =   2100
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   492
      Left            =   2040
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   491
      Left            =   1980
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   490
      Left            =   1920
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   489
      Left            =   1860
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   488
      Left            =   1800
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   487
      Left            =   1740
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   486
      Left            =   1680
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   485
      Left            =   1620
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   484
      Left            =   1560
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   483
      Left            =   1500
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   482
      Left            =   1440
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   481
      Left            =   1380
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   480
      Left            =   1320
      Top             =   1740
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   479
      Left            =   3180
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   478
      Left            =   3120
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   477
      Left            =   3060
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   476
      Left            =   3000
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   475
      Left            =   2940
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   474
      Left            =   2880
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   473
      Left            =   2820
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   472
      Left            =   2760
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   471
      Left            =   2700
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   470
      Left            =   2640
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   469
      Left            =   2580
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   468
      Left            =   2520
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   467
      Left            =   2460
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   466
      Left            =   2400
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   465
      Left            =   2340
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   464
      Left            =   2280
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   463
      Left            =   2220
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   462
      Left            =   2160
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   461
      Left            =   2100
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   460
      Left            =   2040
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   459
      Left            =   1980
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   458
      Left            =   1920
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   457
      Left            =   1860
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   456
      Left            =   1800
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   455
      Left            =   1740
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   454
      Left            =   1680
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   453
      Left            =   1620
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   452
      Left            =   1560
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   451
      Left            =   1500
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   450
      Left            =   1440
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   449
      Left            =   1380
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   448
      Left            =   1320
      Top             =   1680
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   447
      Left            =   3180
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   446
      Left            =   3120
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   445
      Left            =   3060
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   444
      Left            =   3000
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   443
      Left            =   2940
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   442
      Left            =   2880
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   441
      Left            =   2820
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   440
      Left            =   2760
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   439
      Left            =   2700
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   438
      Left            =   2640
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   437
      Left            =   2580
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   436
      Left            =   2520
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   435
      Left            =   2460
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   434
      Left            =   2400
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   433
      Left            =   2340
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   432
      Left            =   2280
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   431
      Left            =   2220
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   430
      Left            =   2160
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   429
      Left            =   2100
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   428
      Left            =   2040
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   427
      Left            =   1980
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   426
      Left            =   1920
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   425
      Left            =   1860
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   424
      Left            =   1800
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   423
      Left            =   1740
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   422
      Left            =   1680
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   421
      Left            =   1620
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   420
      Left            =   1560
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   419
      Left            =   1500
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   418
      Left            =   1440
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   417
      Left            =   1380
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   416
      Left            =   1320
      Top             =   1620
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   415
      Left            =   3180
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   414
      Left            =   3120
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   413
      Left            =   3060
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   412
      Left            =   3000
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   411
      Left            =   2940
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   410
      Left            =   2880
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   409
      Left            =   2820
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   408
      Left            =   2760
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   407
      Left            =   2700
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   406
      Left            =   2640
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   405
      Left            =   2580
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   404
      Left            =   2520
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   403
      Left            =   2460
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   402
      Left            =   2400
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   401
      Left            =   2340
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   400
      Left            =   2280
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   399
      Left            =   2220
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   398
      Left            =   2160
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   397
      Left            =   2100
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   396
      Left            =   2040
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   395
      Left            =   1980
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   394
      Left            =   1920
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   393
      Left            =   1860
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   392
      Left            =   1800
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   391
      Left            =   1740
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   390
      Left            =   1680
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   389
      Left            =   1620
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   388
      Left            =   1560
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   387
      Left            =   1500
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   386
      Left            =   1440
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   385
      Left            =   1380
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   384
      Left            =   1320
      Top             =   1560
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   383
      Left            =   3180
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   382
      Left            =   3120
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   381
      Left            =   3060
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   380
      Left            =   3000
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   379
      Left            =   2940
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   378
      Left            =   2880
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   377
      Left            =   2820
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   376
      Left            =   2760
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   375
      Left            =   2700
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   374
      Left            =   2640
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   373
      Left            =   2580
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   372
      Left            =   2520
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   371
      Left            =   2460
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   370
      Left            =   2400
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   369
      Left            =   2340
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   368
      Left            =   2280
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   367
      Left            =   2220
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   366
      Left            =   2160
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   365
      Left            =   2100
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   364
      Left            =   2040
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   363
      Left            =   1980
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   362
      Left            =   1920
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   361
      Left            =   1860
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   360
      Left            =   1800
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   359
      Left            =   1740
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   358
      Left            =   1680
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   357
      Left            =   1620
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   356
      Left            =   1560
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   355
      Left            =   1500
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   354
      Left            =   1440
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   353
      Left            =   1380
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   352
      Left            =   1320
      Top             =   1500
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   351
      Left            =   3180
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   350
      Left            =   3120
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   349
      Left            =   3060
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   348
      Left            =   3000
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   347
      Left            =   2940
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   346
      Left            =   2880
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   345
      Left            =   2820
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   344
      Left            =   2760
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   343
      Left            =   2700
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   342
      Left            =   2640
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   341
      Left            =   2580
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   340
      Left            =   2520
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   339
      Left            =   2460
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   338
      Left            =   2400
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   337
      Left            =   2340
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   336
      Left            =   2280
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   335
      Left            =   2220
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   334
      Left            =   2160
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   333
      Left            =   2100
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   332
      Left            =   2040
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   331
      Left            =   1980
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   330
      Left            =   1920
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   329
      Left            =   1860
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   328
      Left            =   1800
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   327
      Left            =   1740
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   326
      Left            =   1680
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   325
      Left            =   1620
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   324
      Left            =   1560
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   323
      Left            =   1500
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   322
      Left            =   1440
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   321
      Left            =   1380
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   320
      Left            =   1320
      Top             =   1440
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   319
      Left            =   3180
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   318
      Left            =   3120
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   317
      Left            =   3060
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   316
      Left            =   3000
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   315
      Left            =   2940
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   314
      Left            =   2880
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   313
      Left            =   2820
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   312
      Left            =   2760
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   311
      Left            =   2700
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   310
      Left            =   2640
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   309
      Left            =   2580
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   308
      Left            =   2520
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   307
      Left            =   2460
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   306
      Left            =   2400
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   305
      Left            =   2340
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   304
      Left            =   2280
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   303
      Left            =   2220
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   302
      Left            =   2160
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   301
      Left            =   2100
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   300
      Left            =   2040
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   299
      Left            =   1980
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   298
      Left            =   1920
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   297
      Left            =   1860
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   296
      Left            =   1800
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   295
      Left            =   1740
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   294
      Left            =   1680
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   293
      Left            =   1620
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   292
      Left            =   1560
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   291
      Left            =   1500
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   290
      Left            =   1440
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   289
      Left            =   1380
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   288
      Left            =   1320
      Top             =   1380
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   287
      Left            =   3180
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   286
      Left            =   3120
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   285
      Left            =   3060
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   284
      Left            =   3000
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   283
      Left            =   2940
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   282
      Left            =   2880
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   281
      Left            =   2820
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   280
      Left            =   2760
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   279
      Left            =   2700
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   278
      Left            =   2640
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   277
      Left            =   2580
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   276
      Left            =   2520
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   275
      Left            =   2460
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   274
      Left            =   2400
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   273
      Left            =   2340
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   272
      Left            =   2280
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   271
      Left            =   2220
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   270
      Left            =   2160
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   269
      Left            =   2100
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   268
      Left            =   2040
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   267
      Left            =   1980
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   266
      Left            =   1920
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   265
      Left            =   1860
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   264
      Left            =   1800
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   263
      Left            =   1740
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   262
      Left            =   1680
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   261
      Left            =   1620
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   260
      Left            =   1560
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   259
      Left            =   1500
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   258
      Left            =   1440
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   257
      Left            =   1380
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   256
      Left            =   1320
      Top             =   1320
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   255
      Left            =   3180
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   254
      Left            =   3120
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   253
      Left            =   3060
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   252
      Left            =   3000
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   251
      Left            =   2940
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   250
      Left            =   2880
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   249
      Left            =   2820
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   248
      Left            =   2760
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   247
      Left            =   2700
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   246
      Left            =   2640
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   245
      Left            =   2580
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   244
      Left            =   2520
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   243
      Left            =   2460
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   242
      Left            =   2400
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   241
      Left            =   2340
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   240
      Left            =   2280
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   239
      Left            =   2220
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   238
      Left            =   2160
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   237
      Left            =   2100
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   236
      Left            =   2040
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   235
      Left            =   1980
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   234
      Left            =   1920
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   233
      Left            =   1860
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   232
      Left            =   1800
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   231
      Left            =   1740
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   230
      Left            =   1680
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   229
      Left            =   1620
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   228
      Left            =   1560
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   227
      Left            =   1500
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   226
      Left            =   1440
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   225
      Left            =   1380
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   224
      Left            =   1320
      Top             =   1260
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   223
      Left            =   3180
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   222
      Left            =   3120
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   221
      Left            =   3060
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   220
      Left            =   3000
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   219
      Left            =   2940
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   218
      Left            =   2880
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   217
      Left            =   2820
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   216
      Left            =   2760
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   215
      Left            =   2700
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   214
      Left            =   2640
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   213
      Left            =   2580
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   212
      Left            =   2520
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   211
      Left            =   2460
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   210
      Left            =   2400
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   209
      Left            =   2340
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   208
      Left            =   2280
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   207
      Left            =   2220
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   206
      Left            =   2160
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   205
      Left            =   2100
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   204
      Left            =   2040
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   203
      Left            =   1980
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   202
      Left            =   1920
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   201
      Left            =   1860
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   200
      Left            =   1800
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   199
      Left            =   1740
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   198
      Left            =   1680
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   197
      Left            =   1620
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   196
      Left            =   1560
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   195
      Left            =   1500
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   194
      Left            =   1440
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   193
      Left            =   1380
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   192
      Left            =   1320
      Top             =   1200
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   191
      Left            =   3180
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   190
      Left            =   3120
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   189
      Left            =   3060
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   188
      Left            =   3000
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   187
      Left            =   2940
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   186
      Left            =   2880
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   185
      Left            =   2820
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   184
      Left            =   2760
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   183
      Left            =   2700
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   182
      Left            =   2640
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   181
      Left            =   2580
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   180
      Left            =   2520
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   179
      Left            =   2460
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   178
      Left            =   2400
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   177
      Left            =   2340
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   176
      Left            =   2280
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   175
      Left            =   2220
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   174
      Left            =   2160
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   173
      Left            =   2100
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   172
      Left            =   2040
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   171
      Left            =   1980
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   170
      Left            =   1920
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   169
      Left            =   1860
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   168
      Left            =   1800
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   167
      Left            =   1740
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   166
      Left            =   1680
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   165
      Left            =   1620
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   164
      Left            =   1560
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   163
      Left            =   1500
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   162
      Left            =   1440
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   161
      Left            =   1380
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   160
      Left            =   1320
      Top             =   1140
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   159
      Left            =   3180
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   158
      Left            =   3120
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   157
      Left            =   3060
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   156
      Left            =   3000
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   155
      Left            =   2940
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   154
      Left            =   2880
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   153
      Left            =   2820
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   152
      Left            =   2760
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   151
      Left            =   2700
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   150
      Left            =   2640
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   149
      Left            =   2580
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   148
      Left            =   2520
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   147
      Left            =   2460
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   146
      Left            =   2400
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   145
      Left            =   2340
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   144
      Left            =   2280
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   143
      Left            =   2220
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   142
      Left            =   2160
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   141
      Left            =   2100
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   140
      Left            =   2040
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   139
      Left            =   1980
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   138
      Left            =   1920
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   137
      Left            =   1860
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   136
      Left            =   1800
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   135
      Left            =   1740
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   134
      Left            =   1680
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   133
      Left            =   1620
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   132
      Left            =   1560
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   131
      Left            =   1500
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   130
      Left            =   1440
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   129
      Left            =   1380
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   128
      Left            =   1320
      Top             =   1080
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   127
      Left            =   3180
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   126
      Left            =   3120
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   125
      Left            =   3060
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   124
      Left            =   3000
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   123
      Left            =   2940
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   122
      Left            =   2880
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   121
      Left            =   2820
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   120
      Left            =   2760
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   119
      Left            =   2700
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   118
      Left            =   2640
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   117
      Left            =   2580
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   116
      Left            =   2520
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   115
      Left            =   2460
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   114
      Left            =   2400
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   113
      Left            =   2340
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   112
      Left            =   2280
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   111
      Left            =   2220
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   110
      Left            =   2160
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   109
      Left            =   2100
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   108
      Left            =   2040
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   107
      Left            =   1980
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   106
      Left            =   1920
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   105
      Left            =   1860
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   104
      Left            =   1800
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   103
      Left            =   1740
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   102
      Left            =   1680
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   101
      Left            =   1620
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   100
      Left            =   1560
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   99
      Left            =   1500
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   98
      Left            =   1440
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   97
      Left            =   1380
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   96
      Left            =   1320
      Top             =   1020
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   95
      Left            =   3180
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   94
      Left            =   3120
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   93
      Left            =   3060
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   92
      Left            =   3000
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   91
      Left            =   2940
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   90
      Left            =   2880
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   89
      Left            =   2820
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   88
      Left            =   2760
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   87
      Left            =   2700
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   86
      Left            =   2640
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   85
      Left            =   2580
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   84
      Left            =   2520
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   83
      Left            =   2460
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   82
      Left            =   2400
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   81
      Left            =   2340
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   80
      Left            =   2280
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   79
      Left            =   2220
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   78
      Left            =   2160
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   77
      Left            =   2100
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   76
      Left            =   2040
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   75
      Left            =   1980
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   74
      Left            =   1920
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   73
      Left            =   1860
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   72
      Left            =   1800
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   71
      Left            =   1740
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   70
      Left            =   1680
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   69
      Left            =   1620
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   68
      Left            =   1560
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   67
      Left            =   1500
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   66
      Left            =   1440
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   65
      Left            =   1380
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   64
      Left            =   1320
      Top             =   960
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   63
      Left            =   3180
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   62
      Left            =   3120
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   61
      Left            =   3060
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   60
      Left            =   3000
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   59
      Left            =   2940
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   58
      Left            =   2880
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   57
      Left            =   2820
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   56
      Left            =   2760
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   55
      Left            =   2700
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   54
      Left            =   2640
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   53
      Left            =   2580
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   52
      Left            =   2520
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   51
      Left            =   2460
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   50
      Left            =   2400
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   49
      Left            =   2340
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   48
      Left            =   2280
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   47
      Left            =   2220
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   46
      Left            =   2160
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   45
      Left            =   2100
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   44
      Left            =   2040
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   43
      Left            =   1980
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   42
      Left            =   1920
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   41
      Left            =   1860
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   40
      Left            =   1800
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   39
      Left            =   1740
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   38
      Left            =   1680
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   37
      Left            =   1620
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   36
      Left            =   1560
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   35
      Left            =   1500
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   34
      Left            =   1440
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   33
      Left            =   1380
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   32
      Left            =   1320
      Top             =   900
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   31
      Left            =   3180
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   30
      Left            =   3120
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   29
      Left            =   3060
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   28
      Left            =   3000
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   27
      Left            =   2940
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   26
      Left            =   2880
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   25
      Left            =   2820
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   24
      Left            =   2760
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   23
      Left            =   2700
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   22
      Left            =   2640
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   21
      Left            =   2580
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   20
      Left            =   2520
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   19
      Left            =   2460
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   18
      Left            =   2400
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   17
      Left            =   2340
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   16
      Left            =   2280
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   15
      Left            =   2220
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   14
      Left            =   2160
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   13
      Left            =   2100
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   12
      Left            =   2040
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   11
      Left            =   1980
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   10
      Left            =   1920
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   9
      Left            =   1860
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   8
      Left            =   1800
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   7
      Left            =   1740
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   6
      Left            =   1680
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   5
      Left            =   1620
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   4
      Left            =   1560
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   3
      Left            =   1500
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   2
      Left            =   1440
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   1
      Left            =   1380
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape shpBit 
      BorderColor     =   &H00808080&
      BorderStyle     =   0  'Transparent
      FillStyle       =   0  'Solid
      Height          =   60
      Index           =   0
      Left            =   1320
      Top             =   840
      Width           =   60
   End
   Begin VB.Shape Shape1 
      FillStyle       =   0  'Solid
      Height          =   1935
      Left            =   1320
      Top             =   840
      Width           =   1935
   End
   Begin VB.Menu file_file1 
      Caption         =   "&File"
      Begin VB.Menu file_new1 
         Caption         =   "&New Movie"
      End
      Begin VB.Menu file_open1 
         Caption         =   "&Open Movie..."
      End
      Begin VB.Menu file_dash1 
         Caption         =   "-"
      End
      Begin VB.Menu file_save1 
         Caption         =   "Sa&ve Movie..."
      End
      Begin VB.Menu file_dash3 
         Caption         =   "-"
      End
      Begin VB.Menu file_make1 
         Caption         =   "&Export Frames..."
         Enabled         =   0   'False
      End
      Begin VB.Menu file_stand 
         Caption         =   "&Make Standalone"
      End
      Begin VB.Menu file_dash2 
         Caption         =   "-"
      End
      Begin VB.Menu file_exit1 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu edit_edit1 
      Caption         =   "&Edit"
      Begin VB.Menu edit_cut1 
         Caption         =   "Cut"
         Enabled         =   0   'False
         Shortcut        =   ^X
      End
      Begin VB.Menu edit_copy1 
         Caption         =   "Copy"
         Enabled         =   0   'False
         Shortcut        =   ^C
      End
      Begin VB.Menu edit_dash1 
         Caption         =   "-"
      End
      Begin VB.Menu edit_paste1 
         Caption         =   "Paste"
         Enabled         =   0   'False
         Shortcut        =   ^V
      End
      Begin VB.Menu edit_dash2 
         Caption         =   "-"
      End
      Begin VB.Menu edit_go1 
         Caption         =   "&Go To Page..."
      End
   End
   Begin VB.Menu view_view1 
      Caption         =   "&View"
      Begin VB.Menu view_play1 
         Caption         =   "Play Movie"
      End
      Begin VB.Menu view_source1 
         Caption         =   "View Source"
      End
   End
   Begin VB.Menu help_help1 
      Caption         =   "&Help"
      NegotiatePosition=   3  'Right
      Begin VB.Menu help_general1 
         Caption         =   "General Help"
      End
      Begin VB.Menu help_dash1 
         Caption         =   "-"
      End
      Begin VB.Menu help_about1 
         Caption         =   "About Us"
      End
   End
End
Attribute VB_Name = "frmdisplay"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


'***************************
'*  Command Button Events  *
'***************************
Private Sub cmdAddPage_Click()
    txtPage.SetFocus
    totPage = totPage + 1
    txtPage.Text = "PG " & CStr(curPage) & " of " & CStr(totPage)
    isSaved = False
End Sub
Private Sub cmdColor_Click(Index As Integer)
    arr = Array(vbBlack, vbRed, vbGreen, vbYellow, vbBlue, vbMagenta, vbCyan, vbWhite)
    shpCurrentColor.FillColor = arr(Index)
    curColor = arr(Index)
    txtPage.Text = "PG " & CStr(curPage) & " of " & CStr(totPage)
End Sub

Private Sub cmdNextPage_Click()
    txtPage.SetFocus
    If curPage < totPage Then
        curPage = curPage + 1
        wipeCurPage
        loadCurPage
    End If
    txtPage.Text = "PG " & CStr(curPage) & " of " & CStr(totPage)
End Sub
Private Sub cmdPlay_Click()
    txtPage.SetFocus
    view_play1_Click
End Sub
Private Sub cmdPrevPage_Click()
    txtPage.SetFocus
    If curPage > 1 Then
        curPage = curPage - 1
        wipeCurPage
        loadCurPage
    End If
    txtPage.Text = "PG " & CStr(curPage) & " of " & CStr(totPage)
End Sub





'***************************
'*       Menu Events       *
'***************************
Private Sub file_exit1_Click()
    If isSaved = False Then
        isSaved = True
        EMRG
    End If
    End
End Sub



Private Sub file_make1_Click()
    mvt = txtMovie.Text
    vtm = Split(mvt, vbCrLf)
    pth = InputBox("Enter a name for this movie", "Name movie", "Untitled")
    If pth <> "" Then
        Beep
        Exit Sub
    End If
    For xa = 0 To UBound(vtm) - 1
        sdt = vtm(xa)
        If Not sdt = "" Then
            dts = Split(sdt, "|")
            pgn = dts(0)
            idx = Val(dts(1))
            clr = Val(dts(2))
            coorX = ((idx - (((idx \ 32)) * 32)) + 1)
            coorY = ((idx \ 32) + 1)
            Set dts = Nothing
            'needs work here to export frames
        End If
    Next



End Sub

Private Sub file_new1_Click()
    If MsgBox("Are you sure you want to discard any unsaved data and start over?", vbExclamation + vbDefaultButton2 + vbYesNoCancel, "Warning") = vbYes Then
        txtMovie.Text = ""
        curPage = 1
        totPage = 1
        curColor = vbWhite
        shpCurrentColor.FillColor = vbWhite
        txtPage.Text = "PG " & CStr(curPage) & " of " & CStr(totPage)
        wipeCurPage
        loadCurPage
        isSaved = False
    End If
End Sub
Private Sub file_open1_Click()
    frmLoad.Show
End Sub
Private Sub file_save1_Click()
    frmSave.Show
End Sub
Private Sub edit_go1_Click()
    aa = InputBox("What page number do you want to go to?", "Go To", "1")
    If aa = "" Then Exit Sub
    curPage = Val(aa)
    wipeCurPage
    loadCurPage
    txtPage.Text = "PG " & CStr(curPage) & " of " & CStr(totPage)
End Sub

Private Sub file_stand_Click()
    On Error Resume Next
    aa = MsgBox("In order to make a ""standalone"" you will need to have VB6 on your system" & vbCrLf & "Large Movies may not work correctly due to string size limitations" & vbCrLf & vbCrLf & "Are you sure you want to make a standalone?", vbInformation + vbDefaultButton2 + vbYesNoCancel, "Continue?")
    If aa <> vbYes Then Exit Sub
    fln = InputBox("Enter a short name for your movie", "Title", "")
    If fln = "" Then
        Beep
        Exit Sub
    End If
    
    
    Screen.MousePointer = 11
    
    
    Dim mv As String
    Dim tp As Long
    
    MkDir App.Path & "\comp\"
    
    mv = Trim(txtMovie.Text)
    mv = Replace(mv, vbCrLf & vbCrLf, vbCrLf)
    mv = Replace(mv, vbCrLf & vbCrLf, vbCrLf)
    mv = Replace(mv, vbCrLf, "¶")
    tp = totPage
    fh = Replace(frmHdrA, "<TOT>", CStr(tp))
    fi = Replace(frmHdrB, "<MOV>", mv)
    'Write project files
    Open App.Path & "\comp\compile.vbp" For Output As #99
        Print #99, strVbp
    Close #99
    Open App.Path & "\comp\compile.vbw" For Output As #98
        Print #98, strVbw
    Close #98
    Open App.Path & "\fcrmpm.dta" For Input As #96
        mfr = Input(LOF(96), 96)
    Close #96
    Open App.Path & "\comp\frmdisplay.frm" For Output As #94
        Print #94, fh & fi & mfr
    Close #94
    Open App.Path & "\comp\modmain.bas" For Output As #95
        Print #95, strBas
    Close #95

    'Make exe
    Dim Buff As String, hK As Long
    Buff = String(255, Chr$(0))
    
    'www.allapi.net was helpful as a reference for the registry section below
    RegOpenKey HKEY_CLASSES_ROOT, "visualbasic.project\shell\make\command", hK
    rs = RegQueryValueEx(hK, "", 0, 0, ByVal Buff, 255)
    RegCloseKey hK
    
    If rs = 0 Then
        pth = Left$(Buff, InStr(1, Buff, Chr$(0)) - 1)
    End If
    pth = Replace(LCase(pth), "%1", App.Path & "\comp\compile.vbp")
    Shell pth, vbMinimizedNoFocus
    
    Sleep 5000
    
    'cleanup
    Kill App.Path & "\comp\compile.vbp"
    Kill App.Path & "\comp\compile.vbw"
    Kill App.Path & "\comp\FRMDISPLAY.FRM"
    Kill App.Path & "\comp\FRMDISPLAY.FRX"
    Kill App.Path & "\comp\modmain.bas"
    Name App.Path & "\comp\compile.exe" As App.Path & "\" & fln & ".exe"
    Sleep 100
    RmDir App.Path & "\comp\"
    
    MsgBox "The file " & App.Path & "\" & fln & ".exe" & " has been made"
    Screen.MousePointer = 0
End Sub

Private Sub help_general1_Click()
    Shell "Winhlp32.exe " & App.Path & "\bitmovie.hlp", vbNormalFocus
    
    
End Sub

Private Sub view_play1_Click()
    For ap = 1 To totPage
        curPage = ap
        wipeCurPage
        loadCurPage
        txtPage.Text = "PG " & CStr(curPage) & " of " & CStr(totPage)
        DoEvents
        Sleep 375
    Next
    curPage = totPage
    wipeCurPage
    loadCurPage
    txtPage.Text = "PG " & CStr(curPage) & " of " & CStr(totPage)
End Sub

Private Sub view_source1_Click()
    frmViewSource.txtSource.Text = txtMovie.Text
    frmViewSource.Show
End Sub
Private Sub help_about1_Click()
    frmAbout.Show
End Sub





'***************************
'*       Form Events       *
'***************************
Private Sub Form_Load()
    arr = Array(vbBlack, vbRed, vbGreen, vbYellow, vbBlue, vbMagenta, vbCyan, vbWhite)
    For xa = 0 To 7
        cmdColor(xa).BackColor = arr(xa)
    Next
    curPage = 1
    totPage = 1
    curColor = vbWhite
    txtPage.Text = "PG " & CStr(curPage) & " of " & CStr(totPage)
    isSaved = True

End Sub
Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    lblCoord.Caption = "(0,0)"
End Sub
Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If isSaved = False Then
        isSaved = True
        EMRG
    End If
    End
End Sub
Private Sub Form_Terminate()
    If isSaved = False Then
        isSaved = True
        EMRG
    End If
    End
End Sub
Private Sub Form_Unload(Cancel As Integer)
    If isSaved = False Then
        isSaved = True
        EMRG
    End If
    End
End Sub







'***************************
'*   Image Target Events   *
'***************************
Private Sub imgTarget_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    shpBit(Index).FillColor = curColor
    txtMovie.Text = txtMovie.Text & CStr(curPage) & "|" & CStr(Index) & "|" & curColor & vbCrLf
    isSaved = False
End Sub

Private Sub imgTarget_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Shift = 1 Then
        shpBit(Index).FillColor = curColor
        txtMovie.Text = txtMovie.Text & CStr(curPage) & "|" & CStr(Index) & "|" & curColor & vbCrLf
        isSaved = False
    End If
    lblCoord.Caption = "(" & CStr((Index - (((Index \ 32)) * 32)) + 1) & "," & CStr((Index \ 32) + 1) & ")"
End Sub

Private Sub imgTarget_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Shift = 1 Then
        shpBit(Index).FillColor = curColor
        txtMovie.Text = txtMovie.Text & CStr(curPage) & "|" & CStr(Index) & "|" & curColor & vbCrLf
        isSaved = False
    End If
End Sub






'***************************
'*      General Subs       *
'***************************
Public Sub loadCurPage()
    mvt = txtMovie.Text
    vtm = Split(mvt, vbCrLf)
    For xa = 0 To UBound(vtm) - 1
        sdt = vtm(xa)
        If Not sdt = "" Then
            dts = Split(sdt, "|")
            pgn = dts(0)
            If CInt(Trim(pgn)) = curPage Then
                shpBit(CLng(Trim(dts(1)))).FillColor = CLng(Trim(dts(2)))
            End If
            Set dts = Nothing
        End If
    Next
End Sub
Public Sub wipeCurPage()
    For xa = 0 To shpBit.Count - 1
        shpBit(xa).FillColor = vbBlack
    Next
End Sub
Public Sub EMRG()
    Open App.Path & "\backup.bmv" For Output As #1
        Print #1, txtMovie.Text
    Close #1
End Sub

