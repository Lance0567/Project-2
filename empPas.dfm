object frmEmp: TfrmEmp
  AlignWithMargins = True
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'EMPLOYEES PROFILE'
  ClientHeight = 575
  ClientWidth = 714
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  TextHeight = 15
  object PanelMain: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 708
    Height = 569
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 704
    ExplicitHeight = 568
    object PanelMain2: TPanel
      Left = 1
      Top = 1
      Width = 706
      Height = 567
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 702
      ExplicitHeight = 566
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 554
        Top = 3
        Width = 149
        Height = 475
        Caption = 'Emp. Picture'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        TabStop = True
        object btUpload: TButton
          AlignWithMargins = True
          Left = 5
          Top = 160
          Width = 139
          Height = 25
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Upload'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btUploadClick
        end
        object btDelete: TButton
          AlignWithMargins = True
          Left = 5
          Top = 191
          Width = 139
          Height = 25
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Delete Pix'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btDeleteClick
        end
        object fldPhoto: TDBImage
          AlignWithMargins = True
          Left = 5
          Top = 22
          Width = 139
          Height = 132
          Cursor = crNo
          Align = alTop
          DataField = 'photo'
          DataSource = frmDataMod.dEmpTbl
          Enabled = False
          Proportional = True
          ReadOnly = True
          TabOrder = 0
        end
        object btPicture: TButton
          AlignWithMargins = True
          Left = 5
          Top = 222
          Width = 139
          Height = 24
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Take Picture'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btPictureClick
        end
      end
      object fullname: TGroupBox
        AlignWithMargins = True
        Left = 7
        Top = 3
        Width = 375
        Height = 52
        Caption = 'FULLNAME |  (Last Name, First Name and Middle Name)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ShowFrame = False
        TabOrder = 0
        object fldFullname: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 365
          Height = 25
          Margins.Top = 0
          Align = alTop
          DataField = 'Fullname'
          DataSource = frmDataMod.dEmpTbl
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object address: TGroupBox
        AlignWithMargins = True
        Left = 6
        Top = 54
        Width = 546
        Height = 52
        Caption = 'CURRENT FULL ADDRESS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ShowFrame = False
        TabOrder = 1
        object fldAddress: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 536
          Height = 25
          Margins.Top = 0
          Align = alTop
          DataField = 'Address'
          DataSource = frmDataMod.dEmpTbl
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 6
        Top = 104
        Width = 98
        Height = 52
        Caption = 'Sex'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ShowFrame = False
        TabOrder = 2
        object fldSex: TDBComboBox
          AlignWithMargins = True
          Left = 5
          Top = 22
          Width = 88
          Height = 25
          Align = alTop
          AutoDropDown = True
          DataField = 'Sex'
          DataSource = frmDataMod.dEmpTbl
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Items.Strings = (
            'Male'
            'Female')
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 98
        Top = 104
        Width = 202
        Height = 52
        Caption = 'Marital Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ShowFrame = False
        TabOrder = 3
        object fldMaritalStatus: TDBComboBox
          AlignWithMargins = True
          Left = 5
          Top = 22
          Width = 192
          Height = 25
          Align = alTop
          AutoDropDown = True
          DataField = 'MaritalStatus'
          DataSource = frmDataMod.dEmpTbl
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Items.Strings = (
            'Single'
            'Married'
            'Widow'
            'Common Law')
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 301
        Top = 104
        Width = 171
        Height = 52
        Caption = 'Date of Birth'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ShowFrame = False
        TabOrder = 4
        object dob: TDateTimePicker
          AlignWithMargins = True
          Left = 5
          Top = 22
          Width = 161
          Height = 25
          Align = alTop
          Date = 24591.000000000000000000
          Time = 24591.000000000000000000
          ShowCheckbox = True
          TabOrder = 0
          OnChange = dobChange
        end
      end
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 476
        Top = 107
        Width = 76
        Height = 52
        Caption = 'Age'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ShowFrame = False
        TabOrder = 5
        object fldAge: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 66
          Height = 25
          Margins.Top = 0
          Align = alTop
          DataField = 'Age'
          DataSource = frmDataMod.dEmpTbl
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox6: TGroupBox
        AlignWithMargins = True
        Left = 6
        Top = 157
        Width = 187
        Height = 52
        Caption = 'License Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ShowFrame = False
        TabOrder = 6
        object fldLicense: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 177
          Height = 25
          Margins.Top = 0
          Align = alTop
          DataField = 'Licensed_no'
          DataSource = frmDataMod.dEmpTbl
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox7: TGroupBox
        AlignWithMargins = True
        Left = 186
        Top = 157
        Width = 186
        Height = 52
        Caption = 'SSS Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ShowFrame = False
        TabOrder = 7
        object fldSSS: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 176
          Height = 25
          Margins.Top = 0
          Align = alTop
          DataField = 'SSS_no'
          DataSource = frmDataMod.dEmpTbl
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox8: TGroupBox
        AlignWithMargins = True
        Left = 366
        Top = 157
        Width = 186
        Height = 52
        Caption = 'PhilHealth Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ShowFrame = False
        TabOrder = 8
        object fldPhilHealth: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 176
          Height = 25
          Margins.Top = 0
          Align = alTop
          DataField = 'Philhealth_no'
          DataSource = frmDataMod.dEmpTbl
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox9: TGroupBox
        AlignWithMargins = True
        Left = 6
        Top = 207
        Width = 186
        Height = 52
        Caption = 'Pag-Ibg Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ShowFrame = False
        TabOrder = 9
        object fldPagibig: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 176
          Height = 25
          Margins.Top = 0
          Align = alTop
          DataField = 'PagIbig_no'
          DataSource = frmDataMod.dEmpTbl
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox10: TGroupBox
        AlignWithMargins = True
        Left = 186
        Top = 207
        Width = 366
        Height = 52
        Caption = 'CellPhone Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ShowFrame = False
        TabOrder = 10
        object fldCellphone: TDBEdit
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 356
          Height = 25
          Margins.Top = 0
          Align = alTop
          DataField = 'cellphone_no'
          DataSource = frmDataMod.dEmpTbl
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox11: TGroupBox
        Left = 6
        Top = 259
        Width = 542
        Height = 107
        Caption = 'Date Hire and Previous Employer/s Information'
        TabOrder = 11
        object fldEmpInfo: TDBRichEdit
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 532
          Height = 82
          Align = alClient
          DataField = 'empInfo'
          DataSource = frmDataMod.dEmpTbl
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ScrollBars = ssVertical
          TabOrder = 0
          StyleName = 'Windows'
        end
      end
      object GroupBox12: TGroupBox
        Left = 6
        Top = 372
        Width = 542
        Height = 106
        Caption = 'Educational Attainment'
        TabOrder = 12
        object fldEduc: TDBRichEdit
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 532
          Height = 81
          Align = alClient
          DataField = 'educ_attain'
          DataSource = frmDataMod.dEmpTbl
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ScrollBars = ssVertical
          TabOrder = 0
          StyleName = 'Windows'
        end
        object DBNavigator1: TDBNavigator
          Left = 152
          Top = 56
          Width = 240
          Height = 25
          DataSource = frmDataMod.dEmpTbl
          TabOrder = 1
          Visible = False
        end
      end
      object GroupBox13: TGroupBox
        Left = 6
        Top = 479
        Width = 542
        Height = 83
        Caption = 'Remarks'
        TabOrder = 13
        object fldRemarks: TDBRichEdit
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 532
          Height = 58
          Align = alClient
          DataField = 'remarks'
          DataSource = frmDataMod.dEmpTbl
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ScrollBars = ssVertical
          TabOrder = 0
          StyleName = 'Windows'
        end
      end
      object btSave: TButton
        Left = 554
        Top = 484
        Width = 149
        Height = 74
        Cursor = crHandPoint
        Caption = 'SAVE'
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Images = frmDataMod.VirtualImageList36
        ParentFont = False
        TabOrder = 15
        OnClick = btSaveClick
      end
      object DBCheckBox1: TDBCheckBox
        Left = 388
        Top = 25
        Width = 150
        Height = 17
        TabStop = False
        Caption = 'Include in Payroll?'
        DataField = 'inc'
        DataSource = frmDataMod.dEmpTbl
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        ValueChecked = '1'
        ValueUnchecked = '0'
        StyleName = 'Aqua Graphite'
      end
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    Left = 143
    Top = 311
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = frmDataMod.qEmpTbl
    ScopeMappings = <>
    Left = 384
    Top = 312
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 268
    Top = 313
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DOB'
      Control = dob
      Track = True
    end
  end
end
