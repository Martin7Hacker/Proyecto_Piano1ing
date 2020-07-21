VERSION 5.00
Begin VB.Form frmMensaje 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Error"
   ClientHeight    =   1680
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7035
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1680
   ScaleWidth      =   7035
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin Proyecto.ChameleonBtn volumen 
      Height          =   480
      Index           =   12
      Left            =   5280
      TabIndex        =   0
      Top             =   1080
      Width           =   1635
      _ExtentX        =   2884
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "&Aceptar"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   2
      FOCUSR          =   -1  'True
      BCOL            =   4194368
      BCOLO           =   12583104
      FCOL            =   16777215
      FCOLO           =   16777215
      MCOL            =   12632256
      MPTR            =   1
      MICON           =   "frmMensaje.frx":0000
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin Proyecto.ChameleonBtn volumen 
      Height          =   480
      Index           =   0
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   1635
      _ExtentX        =   2884
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "&Cancelar"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   2
      FOCUSR          =   -1  'True
      BCOL            =   4194368
      BCOLO           =   12583104
      FCOL            =   16777215
      FCOLO           =   16777215
      MCOL            =   12632256
      MPTR            =   1
      MICON           =   "frmMensaje.frx":001C
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin VB.PictureBox picdato 
      BorderStyle     =   0  'None
      Height          =   1815
      Left            =   0
      ScaleHeight     =   1815
      ScaleWidth      =   7095
      TabIndex        =   2
      Top             =   -120
      Width           =   7095
      Begin VB.Image Image1 
         Height          =   720
         Left            =   480
         Picture         =   "frmMensaje.frx":0038
         Top             =   240
         Width           =   720
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   195
         Left            =   1680
         TabIndex        =   3
         Top             =   480
         Width           =   75
      End
   End
End
Attribute VB_Name = "frmMensaje"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
Me.Icon = frmPrograma.Icon
picdato.Picture = frmPrograma.Picture
End Sub

Public Sub mensaje(ByVal mensaje As String, ByVal titulo As String, ByVal boton1 _
As Boolean, ByVal boton2 As Boolean)
 Me.Caption = titulo
 Label1.Caption = mensaje
 volumen(0).Visible = boton1
 volumen(12).Visible = boton2
 frmMensaje.Show 1
End Sub

Private Sub volumen_click(Index As Integer)
 Select Case Index
 Case 0
 Unload Me
 Case 12
 Unload frmPrograma
 End
 End Select
End Sub
