VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "msadodc.ocx"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDatGrd.ocx"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDatLst.ocx"
Begin VB.Form frmObl 
   Caption         =   "�������"
   ClientHeight    =   5490
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9510
   DrawMode        =   14  'Copy Pen
   Icon            =   "frmObl.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   5490
   ScaleWidth      =   9510
   Begin MSAdodcLib.Adodc adoRayn 
      Height          =   330
      Left            =   4920
      Top             =   4320
      Visible         =   0   'False
      Width           =   4335
      _ExtentX        =   7646
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "adoRayn"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc adoOblBrs 
      Height          =   330
      Left            =   240
      Top             =   4320
      Visible         =   0   'False
      Width           =   2415
      _ExtentX        =   4260
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "spSelect_Oblasts_Dbc"
      Caption         =   "adoOblBrs"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.PictureBox picBtn 
      Align           =   2  'Align Bottom
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      ScaleHeight     =   735
      ScaleWidth      =   9510
      TabIndex        =   10
      TabStop         =   0   'False
      Top             =   4755
      Width           =   9510
      Begin VB.CommandButton cmdCancel 
         Cancel          =   -1  'True
         Caption         =   "������"
         Height          =   375
         Left            =   8040
         TabIndex        =   12
         Top             =   240
         Width           =   1215
      End
      Begin VB.CommandButton cmdOk 
         Caption         =   "&��"
         Height          =   375
         Left            =   6720
         TabIndex        =   11
         Top             =   240
         Width           =   1215
      End
      Begin VB.Line linBtn 
         BorderColor     =   &H80000010&
         Index           =   0
         X1              =   0
         X2              =   10695
         Y1              =   0
         Y2              =   0
      End
      Begin VB.Line linBtn 
         BorderColor     =   &H80000005&
         Index           =   1
         X1              =   0
         X2              =   10695
         Y1              =   15
         Y2              =   15
      End
   End
   Begin VB.TextBox txtObl 
      Height          =   315
      Left            =   4920
      MaxLength       =   50
      TabIndex        =   3
      ToolTipText     =   "��������� ���� � ������� Enter (������ �������� �� ����)"
      Top             =   240
      Width           =   3975
   End
   Begin MSDataGridLib.DataGrid dgdRayn 
      Height          =   2175
      Left            =   4920
      TabIndex        =   9
      Top             =   2400
      Width           =   4335
      _ExtentX        =   7646
      _ExtentY        =   3836
      _Version        =   393216
      AllowUpdate     =   0   'False
      HeadLines       =   1
      RowHeight       =   15
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1049
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1049
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin VB.TextBox txtRemark 
      Height          =   735
      Left            =   4920
      MaxLength       =   150
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   7
      Top             =   1440
      Width           =   4335
   End
   Begin MSDataListLib.DataCombo dbcCountr 
      Height          =   315
      Left            =   4920
      TabIndex        =   5
      ToolTipText     =   "F4 - ������� ������"
      Top             =   840
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   556
      _Version        =   393216
      MatchEntry      =   -1  'True
      Style           =   2
      Text            =   ""
   End
   Begin MSAdodcLib.Adodc adoCountr 
      Height          =   330
      Left            =   4920
      Top             =   1080
      Visible         =   0   'False
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "spSelect_BrsShG_Countries"
      Caption         =   "adoCountr"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSDataListLib.DataList dblOblBrs 
      Height          =   4155
      Left            =   240
      TabIndex        =   1
      Top             =   480
      Width           =   2415
      _ExtentX        =   4260
      _ExtentY        =   7329
      _Version        =   393216
   End
   Begin VB.Label lblRayn 
      Caption         =   "&������ � �������:"
      Height          =   255
      Left            =   3120
      TabIndex        =   8
      Top             =   2400
      Width           =   1575
   End
   Begin VB.Label lblOblBrs 
      Caption         =   "�&������� �������:"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1455
   End
   Begin VB.Label lblCountr 
      Caption         =   "&������:"
      Height          =   255
      Left            =   3120
      TabIndex        =   4
      Top             =   840
      Width           =   615
   End
   Begin VB.Label lblObl 
      Caption         =   "�&������:"
      Height          =   255
      Left            =   3120
      TabIndex        =   2
      Top             =   240
      Width           =   735
   End
   Begin VB.Label lblRemark 
      Caption         =   "&�������:"
      Height          =   255
      Left            =   3120
      TabIndex        =   6
      Top             =   1440
      Width           =   735
   End
End
Attribute VB_Name = "frmObl"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Implements MsgRecip
Implements DatFrm
Implements SetngFrm

Dim mcolMsgs As Collection
Dim mobTblObl As TblObl
Dim mobDatFrm As DatFrm
Dim mobUtilDatFrm As UtilDatFrm

Dim mstrIDFrm As String
Dim mstrFrmHostNam As String
Dim mstrFrmHostCapt As String
Dim mintMode As Integer
Dim mblnIsDirty As Boolean

' Unload the form, if it's clear.
' Cancel the changes.
' Clear the controls.
' Return the focus to txtObl
Public Sub cmdCancel_Click()
On Error GoTo ErrHnd
   mobUtilDatFrm.Cancel_Click dblOblBrs
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Complete the mode's operation.
' Clear contols in the Del mode.
' Return the focus to txtObl.
Private Sub cmdOk_Click()
On Error GoTo ErrHnd
   mobUtilDatFrm.Ok_Click dblOblBrs, LoadResString(291)
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Clear controls.
Private Sub DatFrm_CtlClear()
On Error GoTo ErrHnd
   mobUtilDatFrm.DatFrm_CtlClear
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Fill the form's controls.
Private Sub DatFrm_CtlWrite()
On Error GoTo ErrHnd
   With mobTblObl
      dbcCountr.BoundText = .IDCountr
      txtRemark = .Remark
   End With
   Call GridRecSrc 'Set adoRayn's record source.
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Read the data from the form's controls.
Private Sub DatFrm_CtlRead()
On Error GoTo ErrHnd
   With mobTblObl
      .Obl = Trim$(txtObl)
      .IDCountr = CLng(Util.DbcReadBoundTxt(dbcCountr, adoCountr))
      .Remark = Trim$(txtRemark)
   End With
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Link to Me.
Private Property Get DatFrm_FrmHost() As Form
   Set DatFrm_FrmHost = Me
End Property

' Let & get the hosting form name.
Private Property Let DatFrm_FrmHostNam(ByVal strFrmHostNam As String)
    mstrFrmHostNam = strFrmHostNam
End Property

' Get the host form's name.
Private Property Get DatFrm_FrmHostNam() As String
    DatFrm_FrmHostNam = mstrFrmHostNam
End Property

' Get the ID control.
Private Property Get DatFrm_IDCtl() As TextBox
   Set DatFrm_IDCtl = txtObl
End Property

' Let & IDShG to identify this data form.
' Remember the last ID.
Private Property Let DatFrm_IDFrm(ByVal strIDFrm As String)
    mstrIDFrm = strIDFrm
End Property

' Get IDFrm to identify this data form.
Private Property Get DatFrm_IDFrm() As String
    DatFrm_IDFrm = mstrIDFrm
End Property

' Implements or not the SetngFrm class.
Private Property Get DatFrm_IsSetngFrm() As Boolean
   DatFrm_IsSetngFrm = True
End Property

' Register the data form itself under a new ID. Delete it under the previous ID, if any,
'  & register under a new one.
Private Sub DatFrm_RegistFrm(ByVal strNewIDFrm As String, ByVal blnDelPrev As Boolean)
On Error GoTo ErrHnd
   Static blnPassed As Boolean
   Dim obDatTbl As DatTbl
   If Not blnPassed Then 'Execute once.
      blnPassed = True
      Set mobDatFrm = Me
      Set mobTblObl = New TblObl
      Set obDatTbl = mobTblObl
      Set mobUtilDatFrm = New UtilDatFrm
      mobUtilDatFrm.InitCls Me, obDatTbl 'Initialise mobUtilDatFrm.
   End If
   mobUtilDatFrm.DatFrm_RegistFrm strNewIDFrm, blnDelPrev
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Shwitch on/off the data form's controls depending on whether the txtObl is filled.
Private Sub DatFrm_SwchCtlFill(ByVal blnEnable As Boolean, Optional ByVal blnEnableID _
   As Boolean)
On Error GoTo ErrHnd
   mobUtilDatFrm.DatFrm_SwchCtlFill blnEnable, blnEnableID, lblObl.Name, _
      lblOblBrs.Name, dblOblBrs.Name
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Switch controls by mode.
' Switch the controls to save a new ID.
Private Sub DatFrm_SwchCtlMode()
On Error GoTo ErrHnd
'   mobUtilDatFrm.DatFrm_SwchCtlMode cmdObl.Name, dbcCountr.Name
   With mobUtilDatFrm
      .DatFrm_SwchCtlMode lblOblBrs.Name, dblOblBrs.Name, dbcCountr.Name
      .SwchGridMode dgdRayn 'Disable dgdFarm in the Add mode.
   End With
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Validate the logical consistence of the inputted data.
' Return True, if succeeds.
Private Function DatFrm_Vld() As Boolean
On Error GoTo ErrHnd
   If dbcCountr.BoundText = "" Then 'Define the country.
      Call Util.MissParam(dbcCountr, lblCountr) 'Message & focus.
   Else
      DatFrm_Vld = True 'Succeeded.
   End If
Exit Function
ErrHnd:
MsgBox Err.Description
End Function

' Enable Del.
' Enable Esc.
Private Sub dbcCountr_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo ErrHnd
   With gobFormtCtl
      Select Case KeyCode
      Case .CodeDel
         dbcCountr.BoundText = ""
      Case .CodeEsc
         Call cmdCancel_Click
      End Select
   End With
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Syncronise the txtObl with this control.
Private Sub dblOblBrs_Click()
On Error GoTo ErrHnd
   txtObl = dblOblBrs
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Press Enter.
' Avoid opening another duplicate data form by ivoking the LostFocus procedure.
Private Sub dblOblBrs_DblClick()
On Error GoTo ErrHnd
   Call Util.IDCtlEnter(mobDatFrm, gobFormtCtl.AscEnter)
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Call the txtObl_KeyPress procedure in the Edit/Del mode, if Enter is pressed.
Private Sub dblOblBrs_KeyPress(KeyAscii As Integer)
On Error GoTo ErrHnd
   Call Util.IDCtlEnter(mobDatFrm, KeyAscii)
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Switch the Edit tool bar's buttons & the Edit menu.
Private Sub Form_Activate()
On Error GoTo ErrHnd
   Call frmMDI.SwchMnuMode(mobDatFrm.Mode) ', IsDirty)
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Reset the relevant to data form forms menu's & tool bar's items.
Private Sub Form_Deactivate()
On Error GoTo ErrHnd
   Call frmMDI.SwchMnuMode(gobSetng.ModeOff)
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Set the form's controls & variables.
Private Sub Form_Load()
On Error GoTo ErrHnd
   Const lngWdth As Long = 9630 '8055 '9420
   Const lngHght As Long = 5895 '6015
   Set mcolMsgs = New Collection 'Create a new mcolMsgs object.
   mobDatFrm.SwchCtlFill False, True
   mobDatFrm.FrmHostCaptOrig = Me.Caption
   Call InitCtl 'Initialise controls.
   txtObl = gobDatFrms.IDFrmLast(Me.Name) 'Set the last ID.
   Call frmMDI.SwchMnuWin(True)  'Switch the menu & toolbar buttons.
   Call frmMDI.WinPosn(Me, lngWdth, lngHght) 'Place the the window & adjust its size.
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Display a pop-up File menu on the right-mouse click.
Private Sub Form_MouseUp(Button As Integer, Shift As Integer, x As Single, Y As Single)
On Error GoTo ErrHnd
   Call Util.FileMnu(Button)
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Save the window state, if changed.
' Resize controls & move the buttons.
Private Sub Form_Resize()
On Error GoTo ErrHnd
   mobUtilDatFrm.Form_Resize dblOblBrs, dgdRayn.Name
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Delete the current data form from the DatFrms collection.
' Reset the relevant to windows & data form forms menu's & tool bar's items.
' Reset the gobMsgInst object.
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo ErrHnd
   With mobDatFrm
      gobDatFrms.Del .IDFrm, .FrmHostNam 'Delete the data form.
   End With
   Call frmMDI.SwchMnuWin(False) 'Switch the buttons.
   Call frmMDI.SwchMnuMode(gobSetng.ModeOff)
   gobMsgInst.Rest Me 'Reset gobMsgInst.
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Cancel the current changes.
' Switch controls.
' Nullify this data form's marks.
' Re-register the data form under zero-length-string ID.
' Switch the menu & toolbar.
' Reset the gobMsgInst object.
Private Sub DatFrm_Cancel(ByVal blnCtlClear As Boolean)
On Error GoTo ErrHnd
   mobUtilDatFrm.DatFrm_Cancel blnCtlClear
   Call GridRecSrc 'Reset adoRayn's record source.
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Write the controls' content to the the mobTblObl object.
Private Sub DatFrm_FrmToDB()
On Error GoTo ErrHnd
   mobUtilDatFrm.DatFrm_FrmToDB LoadResString(290), LoadResString(319)
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

Private Property Get DatFrm_Mode() As Integer
   DatFrm_Mode = mintMode
End Property

' Set the form's mode to the specified option unless there is unsaved data.
Private Sub DatFrm_ModeSet(ByVal intMode As Integer)
On Error GoTo ErrHnd
   mintMode = intMode
   Call frmMDI.SwchMnuMode(intMode) ', IsDirty)
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub


' Get the mcolMsgs collection to the gobMsgInst object to read/write messages to the form
Private Property Get MsgRecip_Msgs() As Collection
   Set MsgRecip_Msgs = mcolMsgs
End Property

Private Property Let SetngFrm_RefrshResm(ByVal RHS As Boolean)
'If necessary modify the code to use this procedure.
End Property

Private Property Get SetngFrm_RefrshResm() As Boolean
'If necessary modify the code to use this procedure.
End Property

Private Property Let SetngFrm_RefrshSusp(ByVal RHS As Boolean)
'If necessary modify the code to use this procedure.
End Property

Private Property Get SetngFrm_RefrshSusp() As Boolean
'If necessary modify the code to use this procedure.
End Property

' Press Enter.
Private Sub txtObl_DblClick()
On Error GoTo ErrHnd
   mobDatFrm.IDCtlPress gobFormtCtl.AscEnter
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Format the control.
Private Sub txtObl_GotFocus()
On Error GoTo ErrHnd
   gobFormtCtl.SelTxt txtObl
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Reset the relevant to data form forms menu's & tool bar's buttons.
' Format the control.
' Fill the form & begin the mode's operation.
Private Sub txtObl_KeyPress(KeyAscii As Integer)
On Error GoTo ErrHnd
   mobDatFrm.IDCtlPress KeyAscii
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Prevent a duplication.
' Reset the gobMsgInst object for later use.
' Unless the Util.DuplFrmtRest procedure unloads the form complete switching the
'  controls in the Edit mode after filling the form to restrict the access to the this
'  control until saving or canceling.
Private Sub txtObl_LostFocus()
On Error GoTo ErrHnd
   mobUtilDatFrm.IDCtl_LostFocus
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Select data from the DB to fill this form.
Private Sub DatFrm_DBtoFrm()
On Error GoTo ErrHnd
   mobUtilDatFrm.DatFrm_DBtoFrm
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Initialise the form's controls.
Private Sub InitCtl()
On Error GoTo ErrHnd
   adoOblBrs.ConnectionString = gcnnConn.ConnectionString 'adoOblBrs & dblOblBrs.
   With dblOblBrs
      Set .RowSource = adoOblBrs
      .BoundColumn = "IDOblast"
      .ListField = "Oblast"
   End With
   adoRayn.ConnectionString = gcnnConn.ConnectionString 'Set the data source for
   adoRayn.CommandType = adCmdText                    'adoRayn & dgdRayn.
   Call GridRecSrc 'Set adoRayn's record source.
   Set dgdRayn.DataSource = adoRayn 'Set data source.
   adoCountr.ConnectionString = gcnnConn.ConnectionString 'adoCountr & dbcCountr.
   With dbcCountr
      Set .RowSource = adoCountr
      .BoundColumn = "IDCountry"
      .ListField = "Country"
   End With
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Set the adoRayn control's record source.
Private Sub GridRecSrc()
On Error GoTo ErrHnd
   mobUtilDatFrm.GridRecSrc adoRayn, "SELECT Rayons.Rayon AS ����� FROM Oblasts INNER " _
      & "JOIN Rayons ON Oblasts.IDOblast = Rayons.IDOblast WHERE Oblasts.Oblast = """ & _
         mobDatFrm.IDFrm & """ ORDER BY Rayons.Rayon", dgdRayn
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Display the File menu as a pop-up menu.
Private Sub picBtn_MouseUp(Button As Integer, Shift As Integer, x As Single, Y As Single)
On Error GoTo ErrHnd
   Call Util.FileMnu(Button)
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Restrict the focus, if the field is left blank in the Edit mode after changing the ID.
Private Sub txtObl_Validate(Cancel As Boolean)
On Error GoTo ErrHnd
   mobUtilDatFrm.IDCtl_Validate Cancel, lblObl
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Refresh all settings-relevant Ado's.
Private Sub SetngFrm_RefrshAdo()
On Error GoTo ErrHnd
   adoOblBrs.Refresh
   adoCountr.Refresh
   adoRayn.Refresh
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Syncronise the browsing list with the ID control.
Private Sub SetngFrm_SyncBrs()
On Error GoTo ErrHnd
   dblOblBrs.Text = txtObl
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Let & get IsDirty.
Private Property Let DatFrm_IsDirty(ByVal blnIsDirty As Boolean)
   mblnIsDirty = blnIsDirty
End Property

Private Property Get DatFrm_IsDirty() As Boolean
   DatFrm_IsDirty = mblnIsDirty
End Property

' Reset the relevant to data form forms menu's & tool bar's buttons.
' Format the control.
' Fill the form & begin the mode's operation.
Private Sub DatFrm_IDCtlPress(ByRef intKeyAscii As Integer)
On Error GoTo ErrHnd
   mobUtilDatFrm.IDCtl_KeyPress intKeyAscii
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' Prevent a duplication.
' Reset the gobMsgInst object for later use.
' Unless the Util.DuplFrmtRest procedure unloads the form complete switching the
'  controls in the Edit mode after filling the form to restrict the access to the this
'  control until saving or canceling.
Private Sub DatFrm_IDCtlLostFoc()
On Error GoTo ErrHnd
   mobUtilDatFrm.IDCtl_LostFocus
Exit Sub
ErrHnd:
MsgBox Err.Description
End Sub

' The form's caption.
Private Property Get DatFrm_FrmHostCaptOrig() As String
   DatFrm_FrmHostCaptOrig = mstrFrmHostCapt
End Property

' The form's caption.
Private Property Let DatFrm_FrmHostCaptOrig(ByVal strFrmHostCapt As String)
   mstrFrmHostCapt = strFrmHostCapt
End Property

