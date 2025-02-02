object frmEmpMain: TfrmEmpMain
  AlignWithMargins = True
  Left = 0
  Top = 0
  Cursor = crHandPoint
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'EMPLOYEES PROFILE'
  ClientHeight = 278
  ClientWidth = 712
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poOwnerFormCenter
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 712
    Height = 278
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 708
    ExplicitHeight = 277
    object PanelTop: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 704
      Height = 52
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 700
      object btAdd: TButton
        AlignWithMargins = True
        Left = 2
        Top = 2
        Width = 48
        Height = 48
        Cursor = crHandPoint
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = 'Add'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageAlignment = iaTop
        ImageIndex = 14
        ImageName = 'plus'
        Images = frmDataMod.VirtualImageList24
        ParentFont = False
        TabOrder = 0
        OnClick = btAddClick
      end
      object btDele: TButton
        AlignWithMargins = True
        Left = 52
        Top = 2
        Width = 48
        Height = 48
        Cursor = crHandPoint
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = 'Delete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        HotImageIndex = 19
        HotImageName = 'remove'
        ImageAlignment = iaTop
        ImageIndex = 19
        ImageName = 'remove'
        Images = frmDataMod.VirtualImageList24
        ParentFont = False
        TabOrder = 1
        OnClick = btDeleClick
      end
      object btFind: TButton
        AlignWithMargins = True
        Left = 102
        Top = 2
        Width = 48
        Height = 48
        Cursor = crHandPoint
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = 'Find'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        HotImageIndex = 22
        HotImageName = 'searching'
        ImageAlignment = iaTop
        ImageIndex = 22
        ImageName = 'searching'
        Images = frmDataMod.VirtualImageList24
        ParentFont = False
        TabOrder = 2
        OnClick = btFindClick
      end
      object btRefresh: TButton
        AlignWithMargins = True
        Left = 152
        Top = 2
        Width = 48
        Height = 48
        Cursor = crHandPoint
        Hint = '(F5) refresh data grid..'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = 'Refresh'
        DisabledImageIndex = 18
        DisabledImageName = 'refresh2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        HotImageIndex = 18
        HotImageName = 'refresh2'
        ImageAlignment = iaTop
        ImageIndex = 18
        ImageName = 'refresh2'
        Images = frmDataMod.VirtualImageList24
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btRefreshClick
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 204
        Top = 4
        Width = 269
        Height = 44
        Align = alLeft
        Caption = 'Search Fullname and Include in the payroll.'
        TabOrder = 4
        object EditFullName: TEdit
          AlignWithMargins = True
          Left = 5
          Top = 17
          Width = 224
          Height = 25
          Hint = 'Fullname'
          Margins.Top = 0
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = EditFullNameClick
          OnKeyDown = EditFullNameKeyDown
        end
        object include: TEdit
          Left = 235
          Top = 17
          Width = 31
          Height = 25
          Hint = 'Include in the Payroll'
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 1
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = includeClick
          OnKeyDown = includeKeyDown
        end
      end
      object btExport: TButton
        AlignWithMargins = True
        Left = 479
        Top = 4
        Width = 48
        Height = 44
        Align = alLeft
        Caption = 'Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageAlignment = iaTop
        ImageIndex = 26
        ImageName = 'print2'
        Images = frmDataMod.VirtualImageList24
        ParentFont = False
        TabOrder = 5
        OnClick = btExportClick
      end
    end
    object dbGridEmp: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 59
      Width = 551
      Height = 218
      Cursor = crHandPoint
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alClient
      DataSource = frmDataMod.dEmpTbl
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = dbGridEmpDblClick
      OnKeyDown = dbGridEmpKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taRightJustify
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI Semibold'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'inc'
          Title.Alignment = taCenter
          Title.Caption = 'Inc.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI Semibold'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fullname'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Segoe UI Semibold'
          Title.Font.Style = [fsBold]
          Width = 400
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 558
      Top = 59
      Width = 153
      Height = 218
      Align = alRight
      Caption = 'Employee Photo'
      TabOrder = 2
      ExplicitLeft = 554
      ExplicitHeight = 217
      object fldPhoto: TDBImage
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 143
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
    end
    object DBNavigator1: TDBNavigator
      Left = 20
      Top = 208
      Width = 200
      Height = 50
      DataSource = frmDataMod.dEmpTbl
      TabOrder = 3
      Visible = False
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = frmDataMod.qEmpTbl
    BCDToCurrency = False
    DataSetOptions = []
    Left = 588
    Top = 222
    FieldDefs = <
      item
        FieldName = 'id'
      end
      item
        FieldName = 'inc'
      end
      item
        FieldName = 'photo'
      end
      item
        FieldName = 'Fullname'
        FieldType = fftString
        Size = 256
      end
      item
        FieldName = 'Address'
        FieldType = fftString
        Size = 256
      end
      item
        FieldName = 'Sex'
        FieldType = fftString
      end
      item
        FieldName = 'MaritalStatus'
        FieldType = fftString
        Size = 256
      end
      item
        FieldName = 'DOB'
        FieldType = fftDateTime
      end
      item
        FieldName = 'Age'
      end
      item
        FieldName = 'Licensed_no'
        FieldType = fftString
        Size = 256
      end
      item
        FieldName = 'SSS_no'
        FieldType = fftString
        Size = 256
      end
      item
        FieldName = 'Philhealth_no'
        FieldType = fftString
        Size = 256
      end
      item
        FieldName = 'PagIbig_no'
        FieldType = fftString
        Size = 256
      end
      item
        FieldName = 'cellphone_no'
        FieldType = fftString
        Size = 256
      end
      item
        FieldName = 'empInfo'
      end
      item
        FieldName = 'educ_attain'
      end
      item
        FieldName = 'remarks'
      end>
  end
  object frxReport1: TfrxReport
    Version = '2024.2.2'
    DataSetName = 'empList'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.PictureCacheInFile = True
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 45427.773792812500000000
    ReportOptions.LastChange = 45497.807223414300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 660
    Top = 222
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 185.196970000000000000
        Top = 158.740260000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Picture3: TfrxPictureView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 11.338589960000000000
          Top = 18.897652200000000000
          Width = 94.488243100000000000
          Height = 102.047304040000000000
          DataField = 'photo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          HightQuality = True
          Transparent = True
          TransparentColor = clWhite
        end
        object frxDBDataset1Address: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 45.354360000000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Address : [frxDBDataset1."Address"]')
          ParentFont = False
        end
        object frxDBDataset1Sex: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 64.252010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Sex: [frxDBDataset1."Sex"]')
          ParentFont = False
        end
        object frxDBDataset1MaritalStatus: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 64.252010000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Marital Status: [frxDBDataset1."MaritalStatus"]')
          ParentFont = False
        end
        object frxDBDataset1SSS_no: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 83.149660000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SSS No.: [frxDBDataset1."SSS_no"]')
          ParentFont = False
        end
        object frxDBDataset1DOB: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 64.252010000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'mm.dd.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Date of Birth: [frxDBDataset1."DOB"]')
          ParentFont = False
        end
        object frxDBDataset1Age: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 64.252010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Age: [frxDBDataset1."Age"]')
          ParentFont = False
        end
        object frxDBDataset1Licensed_no: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 83.149660000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Licensed No:. [frxDBDataset1."Licensed_no"]')
          ParentFont = False
        end
        object frxDBDataset1Philhealth_no: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 83.149660000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PhilHealth No.: [frxDBDataset1."Philhealth_no"]')
          ParentFont = False
        end
        object frxDBDataset1PagIbig_no: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 102.047310000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PagIbig No. : [frxDBDataset1."PagIbig_no"]')
          ParentFont = False
        end
        object frxDBDataset1cellphone_no: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 102.047310000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cell No.: [frxDBDataset1."cellphone_no"]')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 113.385898120000000000
          Top = 132.283542810000000000
          Width = 604.724800730000000000
          Height = 18.897644040000000000
          StretchMode = smMaxHeight
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313033337B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430207461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31393034317D5C76
            6965776B696E64345C756331200D0A5C706172645C625C66305C667331382044
            617465204869726520616E642050726576696F757320456D706C6F7965722F73
            20496E666F726D6174696F6E3A5C62305C7061720D0A5B667278444244617461
            736574312E22656D70496E666F225D5C7061720D0A7D0D0A00}
        end
        object Rich3: TfrxRichView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 113.385900000000000000
          Top = 158.740260000000000000
          Width = 604.724800730000000000
          Height = 18.897644040000000000
          StretchMode = smMaxHeight
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313033337B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430207461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31393034317D5C76
            6965776B696E64345C756331200D0A5C706172645C716A5C625C66305C667331
            3820456475636174696F6E616C2041747461696E6D656E743A5C62305C706172
            0D0A5B667278444244617461736574312E22656475635F61747461696E225D5C
            7061720D0A7D0D0A00}
        end
        object Memo1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Fullname"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Rich1: TfrxRichView
          AllowVectorExport = True
          Top = 18.897649100000000000
          Width = 740.787895990000000000
          Height = 98.267781670000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313033337B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205365676F652055493B7D7D0D0A7B5C
            2A5C67656E657261746F722052696368656432302031302E302E31393034317D
            5C766965776B696E64345C756331200D0A5C706172645C66305C66733138205B
            667278444244617461736574322E2241646472657373225D5C7061720D0A7D0D
            0A00}
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 15.118118240000000000
          Top = 15.118121630000000000
          Width = 71.220470000000000000
          Height = 87.220470000000000000
          Center = True
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000004B0000
            005B08060000003B987871000000097048597300000B1300000B1301009A9C18
            00003AFA4944415478DAED7C077C15D5FAED9A767A4D6F2421849284DE7B479A
            5744698A88051550145001916B051BA28822F60A7604E945A413E9BD04484842
            427A727A3F33EF9B39A1D9BDFFFBDEFBFFDFBBE3EF48723265EFB5D7B7BEF5ED
            D9338C2449F8CFF6D736E63F60FDF5ED3F60FD8D4D01EBB3BEBD610E71E05809
            824A075E1305D65E8E6A830A5C48842485A0167868442D82013744B506528805
            2B7AA16244380535FDEE83292C80E73510FD0EB8550C82C13024AD1E3A8D1A55
            B595301A63A00985E1F278116F50597521554C556DA9C5CFB186865EC65ACB05
            63E212E2F5FEF20A211C0C3186E4A440495DA5D71254D556F34C25C3041C9AE8
            98BA9018AA2C7779DD265332589F0F1E6AB74F1346429085180E80E1D4A8F3D6
            41CF1BE0A5DF55460E7A5105D61584140E2360D1420805C0336A783880F57BC0
            082A84030C210278B482D2677D3804C91B02179B80C1DF7EF66F042BE8855154
            8355EBE00FB961D3B090FC21E824686245A969B8B626DDC8691A9A02FEE65A8F
            37C7228613F412130551328161224327D2271C04389E1ACD0221FA9915E8A30C
            ABFCBF30ED6B77B3A8ADE0A5733EADF5905F429E5DA32AA8303127742AABDD87
            2004560397B31226564B6D0940F8EF02164FC754E98D0885FD88F131308089D2
            DA2A06A803C136D680D83CC9EBEBC687258BD20ABA381D48AD6311901894D1CF
            1741C75307ECA2048F24C223061020A042F461E83B9DC4414BD730D131D11C87
            547068C4525B38F97C0420C745C064A5608DCEB0BB82630EBA8DE6C3F96C701D
            A78BAAB34B41E80D2C62FC1C58A79F2E4F6059FF0F80A525B002045650A7871F
            2A628207A6909F55BBFC375ADDCE8169EE40074B486C83909F87C82854292330
            7651289C090671DE17C4698F0F0E5E8497C2B42C184290808228FE1DE5809A00
            CBD4A8D090189DC60BC8E458F414B4682BFF99C0A58E000217AC5209870A05F6
            6767B465B5D764D922FAE8E80085A95905B5DF0B8ED1FC6F004B0C42A55681E1
            CDF0063DC4B0B06076F8FF91585B7167437FA02FEF0F1BA9952085C21962C7C6
            A01FABEB9CD8476CF3B041F94FF491FF47E145A013254082764DFF19E5EFD1D1
            1A8C1C60849AF123DA1426C230D8714CC4A65C5F2446192DA0A1F304C4084B71
            3DC851C494F65A0DFA190C18CE69D0580E5D8653AEEFD4F055A56AEDDA1A83F1
            839A78F36E9100D587793A55101C8185FF2A583506819AC3C2255078D10593EC
            A1CED6EA8A079A389D770822C38342A9560A633BF16CA9CD85EF3DCE6B3AC021
            AB2B8F709D84B3A77DB8A95F0CDE99C12031D387675FD3E099C5D50A464CBD5E
            89C4AE36CD0D38B49F8EAF1071F0270D5A360E63D55E2D463C568D8C54337E58
            C0A1792F2FA841F8E41335EE7FD98B20251381D8658D37A2AAC2456116B8025E
            8A4A8BDB4C160CE5D5E8C5090A2BE581AA51F1D52526D33B8EE8980F2F598C85
            42C00B2D85B4440228517BFE1658028115F654A3384A0F4B9D332AC5661B9F66
            73DE9FE00E3493F5A686F6FB86C0F9C2E9C12ED4036415D0BF3B836139408C5E
            40B7B66A341862C42B33C29839BF1C5FBCA3C36DF753472B38F8AA04A4F76351
            5165A7D3B157C0CACED4E0E4FA00AACFAB31F2591DBC9420F61EF62A9D2CDDA5
            45527B0FE64C52C3A09730EB4D11DB96EAD1675C2D8D8B0AA59B2D88129CC8BF
            C4E0C7BD22DE5A23E0FC596784C5B4A50B7A8CD41970AB5E874EC43A42997491
            41A1C5B8A5DAA87BA72236E63B1F04680341F8551C91F10FC0B210582C653618
            AD081BE3612C3E9B6AF53AE76456D9EE320644012A163FD3095EAEB361A5DB19
            E14E0C0B0D8595BBCC8387EE4DC09BEFA8E13CEC82B1550D0A771831F06E35CE
            96D8684F15CAD64BA8B38978F2A3447CBFAE0CAF3D6BC0A373EDC4ACB0C22E19
            ACA6193A9CF9524E00F449B4C259C1C3D4AE1ACD730C387E3C882D8B59F49FE2
            57C239EF5B064D068A30A411C1BD01B8F3249416B078FD7D03A6DE13424A0FE0
            B17B592C585A7785E997816BC2EB3023261AE3D47AA84837419F0AA3AEACD86C
            5D50161BFD66A5D910D052685AFD3E88BEF0F5607DDEA737B48C0A010D8F586F
            283ED5EE7E33A3AC74A4404843C5E353A2E96BCE5A1C53406270F3303356CCA1
            BF35A60B9981E9E379BCFE990D1A12DD28D29DD2ED4ED80B39440FA1E6D1B119
            0D2DC8DF1044FE9100BED811857F3E5A85A05D8FE41B5854D5B34B06AB71BA0E
            67B70470E1901A5D26AB29D3BA505A1140D7CE51D89DEBC7AA0502863DE6A236
            6850BB39046B63064C3A8B2EA4EC7B36F8E13CCFA3EBBD160C6C27E2D5CF2BB1
            6AB905C346489838468D1726B8A97D3C1E799BC3FB5FC8E708C0A25663BCDA84
            19662B9264307D5ED8B47C302F36E6E5FCA4F86718810BEB6C1EA8ADB118F45D
            3D58EFDDD00FF13EE8D2ED8E179B56543F4C16090162CCB3975C782154AB9CF8
            F2E8BC382D0EB35EF362CDDB12BE5C1D202DD1636F9E0EDB72CBC956C8FB6951
            B08A47C38E3EB41FA0C5C1E30EFC83447BD54724D236166E8F060E5B10893704
            F0DEAB163CF0B8AD7EC42534CE24B0CE91C6ED54A3694F59D47DF5D7D5E0CC7A
            2D9AF6F261CA3815B29A49983CD78F958BF518FE901B2F3DACC2CCA7BC38B935
            1A99ED9D5007FC387AC08241D343E8DB5AC0B20D5E541DA14CBCC7809E0F8471
            66338BACC124EAA4B594069504305230E2F5842824B3049ACB8B4ABDCA579810
            37BB546F78838F4F11FFF1E58711B056F4EA15DBB5A8FC48BCD39B04B3116F3A
            EC78B8C60E4B0B098DA2591CDC26EB4608B13166549E0AA260B78846C379346F
            0A3C7C0B87FBC60053174878E33307ED2760D14C03A6BCE4C2A4717ABCB3D486
            D98F18316F21F0CA6306CC5C5083CC86067CF77218B927584C7ACE7B05148349
            85BBEED2A3B050C49A55D7260B1A02AB1EEFCE6631AE6F44A7BFDECC63ECD301
            847D01EC5E2DA0EB8D41187426DC756B006F7DCE6050772D36EEAEC3B90D3C32
            3B06D0A9AF05FB8ED831FF412D1E7B4B873B6E97B0ECCB0A7CFD520314B9EC98
            B188C0738818CC9AF051721C126469B03B70C96A2C2D6ADB7E64B7E5CB7215B0
            76B5EDD0B443A5ED989AE754834AABB051B063DE340B663F4C9D880686F73562
            E5CE7244C56A51B32F8C60290755770EB70FD5E3ED270498BB9560F9FB511871
            BF47E9F89D379BF0E90A0EAF3E26E0F1059568D75A0B43431EDB37D3F95C972D
            831001839348025898593953B1282772AAA8A18D650DA66CEBA351F751C6AD09
            123092BAFE58A99E8D61E59817661971732F15B207D7A05943134E1788F8E243
            0FC64E30413AE183AB5282B1BF7C397960F4484FE1505D1B465A928013DBE982
            6662982D164BBFF162DCD36EF2190CDE4B88C77DE4DDBC64624FA53618D7EEE7
            6D4B15B0B6B66C9BD9CDE63D164258ABBF781E71CDB4A83816C6F9B52A68A325
            24B71231EC461356EDACC1472F9971F74C27367F2460C9C75A3C4B76A045AF10
            EE1BCFE08395B54A47781301412546A82C40C68FA14E72104416C3751AF437E9
            91227248A4904E520B88E1D9484694221E4701426223E58EFC73BD07A33A059E
            5008F9EE102E0442285591C9A5E4B0CF4719D9252A5501449702DE43937418DC
            4A8FA1137DF8F4450677CE0AA17F47069D7278DCD29FC7E0292E54D5F9B1F819
            33263F5D87CFE65A30F34D1E3BDE0BA3F13003DAF673A1E827176AD21AC243E3
            71C464BEBDEBC97D5F2A606D6BD3B951D71AFBF11042DAA88B850852960BE706
            B1799D19D3DF8EC7F14DE7A9F32A74EDA545EE711FD62CD461E808D90E6BB06F
            9B1F373D29A1A2D0AD744E4F002451F64B21133FDEA2C3308B1116328B8A1995
            F5801812A4B45D2A52A7C530F208800BE48DAAC332186178091B918C2D596068
            A8ACB190794C915D3AAF423A1D9E467563ACEC99A860074F5FD07940C5F4192A
            6576F361ACF4DAB1C6496C9149482E1D74ED0F5F31E09E3BE8FA71F2EF3C86F6
            5063DD6E177CFBA81A8826E9602C58BC44C2EC77398CBE41856F0ED622FE028B
            BCB474B8A95DC7A2626EEF72744F04ACBD5DFB65B52B293D46B5199F5852088F
            8643CD7A9E42C3834317CDE8D099462EC64E748DC68DDD04ACDD534902430DA6
            11A6220F6463718BD1807E5A1DC6680DD0A8D49191A6735778BDD8E173E12895
            3CB904D46102AA4E4E047FABC4B97E531160391A3DDAD30064536DD889BC6167
            BA2E23080AB3E402FCA0BD0E2B443F7E70BB71C2EF079FCCA16D2B1EA547C9B3
            957AB1601E1161762DE64F49C09C7783A8F8C90B4B662CA2B36A516B73A2BDCE
            88FDB10D8859011C8D8ABD0AD6816EDD73DA96541D73925D4F2BB900723FD8F7
            A91E1D86D6E1E2211DC6CD52A165531E9DBB06F1C4FB21141F73238AC6FE66DE
            80DBA38D545E1823230D191C275678DDF899463537E4C3596A28C2E15F75B849
            8F1E884E4941D0E3F94B0029B36E2A011EA713799B7F8478ED39898D1695069D
            6990DA091A0C526BD19DEA5790E6C8E15BEC706051850D1F8B6ED42AC984C5F4
            C9162CF827C51279B9D10F07F1FD0E81FA48A15DEC81C71B461B02FF505C0378
            89B947ACD7306B7FE7CE59ED2ED98ED9496E1A9717A286C2E29B25E4782702BD
            3B68B0FD4035EA4B7BF4A2517C313A1A5DB4D41899411446657E379610489BC9
            A7FCECA3700C5D0F0EC3B2A89F8451FCD49D1327E2D3254B8063470964FE8F11
            62AEF95DAE275BB5C6F3F3E7E3A9193322A5127D9409CC5F4C622651FB7A1170
            A308B49BB5260A4B8D025CA1CB8137A9ADAFD53AE44C82A90F01AFCFD3432AD1
            20BD8703C5E50EE5F89674FC5105AC300E5BA2C7743D96FBB502D69E7E035B76
            3D5778B44A94D0B4B21875142AD3C7C7C26D0EE3DD45B58823BD9844C66D9AD6
            0C33950C72076A3D6E7CE977E243B70387656DB806A06BC1B97613EB436FEBC1
            03E8BDE81DD83FFD004C54E2EF83742D58B2D6DBED3036CF46E9179FA0C9A041
            F094945C2997AEBBCEB5E011987A2A926FA6B09A486CE9AEA528D010709418E6
            975660869F24C118C45D1354D8B62244B6C5AD1C964D209FA030F453C9732C3E
            7E5CC703BBEAB3E1809BDBF7C93BBDBF8284B53181E554CC25474AA4C1CBE4BB
            A6C7C5D0AFA407C13036BAEBF011B1E75B97938AD6AB3307BFD5E8DF02ABE3A8
            91D8FBE0C370F61A00501921B2BF80554E8494BAA1A2A2567539FE2EF79B9C7E
            793E2C6BD761CCCF7BF0F5F373FFF4BA72FFAE9D3A4FD6E870170DF83DE4C932
            0C547E509F9717576102B1CDC6B814F6C95B139D0E27625295D98DBC848489CD
            0FEC7C57016B7BCF41ED7A155E3870910E4CBD54002D65A0772D8918678C5274
            C2E573E25D99BE1E278A3CAE6B1844E5C66F72E8F71BFDF2F2EF30A3B81475D3
            1E01529B5E2FF4341E0C45BC5CC8F2F435AF0B1398BF008CD864B9F72EFC306E
            146EEEDDE72F0FD4AF1847C7F4D69B30536FC4204A5CF254CE69970D0FDA6AB1
            D5558754950A6712D3C187441447253ED8E8D88EB72360F5BBB95DCFB3A70E1C
            2514BF0E7AF18C31066AB50A76AF0B739D762CA1BAD07D79FE8968CD327F0DA0
            5FB28A8F8DC5F1D5ABD06CD2C370149440A40C7A154D82BD923C59AB20841FAB
            E15B6404FF94116CBC480C93AE00C650D16B20D1AD5BF9155A4C7908E5870EFF
            65B07ED99ECB5B03CAE24F1B2DB8D74CE4E0D4D850578D177C0E2C3345239188
            5618933839F3E88E25916C38764297465BB7EE1124B9E4B0A08A3468BAA3025F
            105062BD16FD9E0EFD9DC6F59F34119B87DC04FB3F6E8494DAF82AAB648DB733
            08D69179A5746E995701DF491D6CED5221B749880F112B982B8C40711E2C6F2D
            C1C3946DDF9C3AED5F02EBCA185D13A63A8AA29904DA535149728FE1203D1689
            18D5D14957C13A79C7EDDD1A6E3DB04B47ED79D24FC5735D05C5AAF86F01E9DA
            51FCE88795B87BC34FB02D79175283B4AB2151CD42BA999244AA08A6548475E9
            2578975950B7460F6D1B3AF649CA66F1E215B1672BAB601ED007DB9E988E3EDD
            7BD463F8AF03F64BD01802ED3D4B3C26A8F5542E8651199D782D587776CED9B6
            37F73C15CBCD2A8A48D3C2FFE58B5F6D84A860626EDA04A73EFC0849A327C0EE
            F741D20857772AE121CDA8836AA017FED7AD885A5D08D7EB7108FA58A8877AE1
            69954CA63278052C86C0E7AA6AA1DFBE115D16CEC7DE6FBEFDB700A6B457FED0
            F91349B34E27A6C140BEFB82396E52E6C95DEF2860E50E1CD0ABCBC9A26DF98C
            882C022B48BAF0EFB8B072CB4292A768FD98FCFA6758DCD48CAA21C320989A82
            8926102FCB602D07A98B07FC341B82C428EB17C5B0CF8D071ACAF71EC2F0DF1E
            0B2E2514D9992A1CC6CF21507E06B16FCCC782D41C3C367C08E4FA8665AF99D7
            FFA547FB1B9B1C09C91A154EC5A5411F9250989834A9D181ED11B0F674EF3AB0
            6B61CD860296C02A2F4280C4FC5F014B12AF866E84D62C663D66C4B4C76CF05D
            FA0886055B21CCF91C81BB28CBECD5404A0B47260E7CD42BB304F6953A843609
            887AA702B6E7A22165D2F7B90298B72811A4D49F3BC82050C141F7533EA4136D
            516C7E1AA16E6370E9A488C1C364CBE30727DF1E53EEBC45666199BF999064B0
            1A68D48ACF32905DBAD0A6C58C46EB7E981F61568F5EFDBB14966F2E60FE35B0
            2EC7BB3AC94CB52D0FCFC59A7A67CD62DEDC68CC7EB20622A152D1AE0174F787
            C00F71C19B9A0C4166974EA2B062102AA74EBD4585561903EBB355A87DD14235
            0C7DF7A50EEC1102D62CCA3530428502B87935D04E72A32C836AB91F6B606CE7
            C0E953B1C8CE916D8D57A9358C1DD211B6AAE0DB74163227FF4E7FAE8295AA80
            75AE45D6134D37AD79295248F71B3AA053DEB94D0A5815C57F0B2CF9C4B277E4
            47B680BA4B1A7CF376C25B234F15CBF3EA722C58B165732BF4EDBF1B419784F2
            F4C6B07C510EA98C43F0AE38F0A94145D3C48B3CD8394E84E383308FB4C3B55C
            0B2940BAF68619AC9780976F811571107BFAA05D5B8DEA3609303D5507F3B81A
            B86D4D90D5C28F8B254557AE2B50516DFCF026D23DAAFF66FC089FCD7DA5B8FF
            33A6FD12ACF32DB36635D9B8E6E5C8E4DFA0C163BA1F3DFB6581C0FE2566294C
            8AFCA0CC84F0F3FA83BDB71DC2372E83E740A40489F83F114346A9F1FAB8B791
            71F40BF04F6E81BF4087CAFE0D60DE5081E05326705FEB800C0A970201EC6D6E
            78FA86A1C9F620944FAC3AA407BB500F2639AC846AD00968CF56C23DC30C2EDD
            8FE897CB801F743857FD0116162DC4C7F3F7C1EBC395397D412740D879AF72E7
            5F1AF205BC950EB03CF7A709ECFA301409AC6C026B7504ACEDFDFB8EEB75AAF8
            B3029EF953B0645D62B5D408BD16C16A07B44FF644F0999EE06E5D0EDFAAD3CA
            7DB76BEF053E35B7099E7D9245C95027389B1A89BB0BE0DD6940E54B09B03C57
            0BB14F1444A70A61329EC203363013C2D0277811B487E05E1185F0CB06F0B5C4
            3AF90EE6B775081692909F0B23FADD12D85E8E836D8119E9E53AEC2D70A373E3
            F372C0E172D3E5EB6B1B58A918BD13ECC94A04877D096DA70C04CBEDF014D5FC
            6E1F7FC5AC16C4AC4DF5CCDAD1AFCFE89EA72F7EF567605DD626EBC896104F55
            C3E323313D763FB899DBE07D2B379280AEB90F286FEFBFBF0E13E236C3D5F275
            78D62621F4BD80A44D6570AF53A376630C343124EC6743D092B8AB5302E068D4
            434102849486D1861108ABE1596442E8B01A814654AD7A02C4A812D43E91005F
            A106A6D70B6128EA82F5E79EC3907103946B5EDB767970D54D62C16FBA03C1C7
            3702BB4A6198D9138EA96B4002F0DB85F82F99D5AAF9AC261B7E8880953B78C8
            3D5D0EE77D98AF6291FD4760C9FAD4863CCF635DE11FFB2DF48B6E44F0A21DD2
            FC5D10AD7AF8EB5CD7DD348D6D9E8DE39F7C0A6BFB7BE0649C60D7BB11D650A6
            5AA2460CB9747BA1015C4200861CC7956B78AB8D48CB3163C14B3E8CBBBB46F6
            1E4A711D0C09702C33C3D0C703C7DB5604A359E846B820DD4561BA438276CB77
            E8B4E8791CFD61DD756D30662543AC75538EF4C330AA0D7C6FEE01F3FD6DC096
            02F816EFBD32B8BFC72C638098D5AAD9ACC61BD746C03A306CC4D4F67B0FBE9E
            AFE27F172C1928F936A5FA9D1B11A213E0E1F5E03362102CA886616A37043616
            C075BAECBA86DEF9DCB3F8342D13B6F163C1463543B09681EA21274A3B893014
            9B90323B3FB2C4C8433E2B44E16B0DE1C8B138B469558BFE03A2B17913897298
            0071F260D4C454AD88EA6F62E139638229CD8BD03D26089449259C8665EE3CBC
            DAB4311E1F39EA8A5D50920FC985F1E51BE0F9FA30989DC5CA4D3D767A1770FD
            32101ABA0CB23363E5F97EE637C0229F65A04AE68CD5F064F6F1C32F4426FF6E
            19F95087DDFBDFCC279B9F5DF16BB02E4FAEA9B46A081BC622B43017FE15A7C9
            5CAAA15F7A2BA4F5F954C2EC8D14D8F58D94B74DDBB661C0A2B7615FB5015252
            BC22B4E68B2CF667B298D23C880F9F2F454E732FA43AF252D620EC7566DCF40F
            1576ECAE521681AC5F99804137D1CF20C0EC9C720F236CE451FB4002B8F774E0
            E3448804205BE78429AB094E2C7C192D060E041C8EEB064D9D110DFD5723E0D9
            720EA1277E025A2542FDEA4004477EA380EDF30720FA43CA2CCA7560C5932925
            66E7A95573B2CF9D98A78075B8DFD047DA9C3AB3305FF87518CA8C12E24C5019
            D5F0119D854F6F8138FE7B300DA3A05A4B8C796B2F1CF3B62977F822C7484AEA
            CE1A3206071E99010C1C4CEA63563C9364A4CE5D14607DC885B9E489967F6EC0
            611918C8B7A8CCB8F11F6AAC5D5379259BC9B7ADEE9F60C6BBEFFB8180039287
            BC96250CC74771F0DF1B0375B27CEB9D76AB6511089D45CC973F61D489FDF876
            DEE3F58B4EAE012CDE0861C568C0168478CF4A304FF5806FE68F30F6CD44D0E1
            837BEBF9EB00BEC22CEACB1983664EF6E96311B08EE5747CB4A5BDEED5F31C83
            9CB2C2EBC0920F348C6E05294A03EF8707A0BEB72DB80B4E309F0C43F0C13508
            2D3FA9983ED9358795797106430733F8726D47125E2B1C5F6C0253938CF0CFC4
            8C933CFC7601FA9525300C7360EAC3E9085118BEB5B806CF3E6DC282050499D9
            85924B9E6B00E3D0BC45348EEC74813379150D0B882AD89AA44328A4366605C0
            7420EB915C06FD8DDDE1EF4A45F0CB5B307D963C95E1BB6ED0653FC8BD7D1304
            D2667C7D069E9F08A049EDA16A1603CF436B941986CBE1FBBB601D69D5617AEB
            1ADB827C022BFB1AB024DA515E4FA2219DF25FA8035EDE0DFD942E90DA25C3FF
            662ED883A5F0926F6114F349AC5116B0F11832BA1D56BD361C81C52FC19F48E6
            9346582AA7069205401407CBF40AA8AC3E0588198FA7E0C04111B63A3B1E9E6C
            C6238F56C1E1F45D3F5846152E9EE66149F6293740619450FB611C02BBC8D9C7
            FBC0C7008295CE7DB804960766E3A9EDE7F1FC946F151B115978125945A8CD8A
            47E07439B8A1CDA0EDDB04CE475701933B80BB290BE2A0CF95ECC8D40FD215B0
            089F333ACD93D9678E4534EB447697C79B3BAA5FC9A798CD2EBF162C11BC3C45
            B3F67648DB2E8091C17A71005C94FD58A306FA81CD607F2FB77E6D0A8F89F7C7
            61EE1C1BCE9618D03CA527F8555B2052E8847912680A4331891AD3888131D546
            A22E2921E5F71961326BF0CDD77A9CC90B62D6ACD2EBF4526E787A43232E9CA4
            5F54A45D2E1A1C5D186EBB01C1131AB0956165D290F5110B7D2E68C60CC1B6CA
            B3C8309FC6D19371B8F57617C470E40E92F16E8A8ACE0DE078E00768DB3640F8
            500942D3BB821DDE0C18FA0585A3F75760E9E9E7B366C33FB34E1C9EAB8075A8
            DBC0A96D2F9C7FFD2CCF2A6085EB671D940CA8A611A358678E968379628BE2A5
            B84423B41BC6C13B63337C1BCFD5774B8DAFBF4AC1A8D1A50AFDEB458C1A4AE7
            A99117B591665553B9A263A06E46CC09CA2B0A89F69610F6ED6B80E79FD762CD
            9AB391535D331B2B377CE488187CF3AD7CEBDF4DC7C86089F097AA219EE71591
            87350C2E9A4023B167E4C9CAC88D28B89DA96896E543496925229C07346BC741
            A46C1E1AFE85221FCCF3FDC0766F0069D857089176FD8A59940DCF5AF4CF363B
            71E499C81DE99B870DEABDEFD4FA52F20659F5372C64B064EA1A3506D8177653
            562363CA76A2BC1EC2FE09E0BE390DEFCC4D8409A36491CB19F0FE996DB0F0AE
            DBE179FC0D8851545624523329D33146D2E21AEA2075346E72153829AC2CE265
            E4269BB4F86A590CEEBCAB9AFC942CF654FAB0214AC08C52362D26533A790A01
            65AF9F9CA3A2BA66B519819F48B49B5016F3D2399C64632B68FF3C1FE2E63F85
            374E6FA1505C83BA3A5C17D21AF283EC9EBB11DA5184F003AB117EAE13904855
            C27D3F412EE2A47AB092956C980A7390C230396E4ED6BEDD11CDDAD877404ECF
            F385C7B522C7B4A82EC109BF5B113AF96F93C7DF879B96F4C1821FF661FBBD3B
            10F8A407504135D9946F7EB354B8E5CE57B0FC85A6F0140C5316A48548849972
            02CC41EC3AA5827FBB860ADC72E83A5276A3EF94B9771DA534C144E1C6430A7B
            49C762F1D0C39720AFDC898BB7E2EC0916E6981A657F46A0B0D6B2A8BD35119C
            430037D00F369A321CB18B6F28DF2FAB85BEF9F378E6A54C2AB36EFBCD362225
            1A5839019876000D5BC7E1991787E1D4F49D78F9BDC557D656A46934C4AC54E8
            0221E465654CCBFA69F3C28829BDEB8ED88C1D078F47F9C5F81B1D1558EBB25F
            938D4C38BC692E5AF7D883EA43277134A1074AB7AB707C7B350E9557E3C2051B
            6A6C3E38AA4887A42036FFB805FDDF9F0BDB99A5148D54A69424523C50E890B2
            0964B442920ACC0B75B03E510AC9C6476E7D9942B85860456A230FC68CE1F0E5
            975668D5B5F011C3BFFA2A1EA34757D3BE727831CABE9E334678DBA540F04416
            FD2A7699CECDC5D5824DAD80C9D40247677E8DD66346505229A7D88B83354A87
            C4582D9A65C4A263461C9ADC1A8D26EC6EE4246A60F7DF839C31F3515A748832
            776492204BABC3C9985404A84FC71A35BABDC3B68D913BD25B6F1F8346874FE5
            A6DA7D9DE750693FAFBA5C1980AC0E2D2084423876D88F79CB6FC5EC9CF7814B
            044A0AC5544213628B40BE4582DDA1C125CA743EC18A8CF4E660D6972370381A
            A1ED07A0AB390189A82F6756B94F1CC5BA4743625B50045D2C19523BB1856CD8
            C205F224A117DF2E153062AC9CC203486BC8A1B0405E91472C0CD07E72374C61
            54DF910E761985537A0011DF42ECB5D9E1D73485D8AA0DD4397E08F7B7C2894B
            C711BC741A89712C92AD7E68CD117D034F65D409D2DA581E2BCBC763789FCD48
            E8674674D3649C7C7B83D2F7CE3A2372A392E06025FFF1EC26C3BAAD5FBD5101
            6BD3AC9948DD7B6861B3A3671ED9A05161707981322D1BDFB50D72B77E0AEEC7
            7978A550C43D43A6A1AD772EA4B275A81FCC88981AEAFF959F09202CE58C2751
            7AB7B96F43F06E09EA1D9B800694DF2924450309FB341F826914626329692837
            0839BC31DF84A93378D82A8330C7BA91DC400D358D454101FDDDE3A3F024008D
            6448B75BE13B6402BF9C03BB9B589A44AA49C21468D91DCC3B065812D78223BB
            20E5D929BC11594D13AEF7BD01C50612F0F44F6C279C8F5B8067567C8B5135B9
            E83D6719BA3DF0384EBCB752016B88C182B5E638546AB88BA71BA70EEDB57EC3
            7105ACB5CFCC45D2A1A313DAECD8FD7EBE497FC5C5831A1CBBE036EC484A40B3
            6E3B80938710B22553C6C9578012350DE04E7A0954B091E1ABA36C944A8D3A07
            D64F20700448E307E0BEB700EA15ABC8C32403BD7DE0163AE15A41D9D4E28161
            AC131C1F044F09E0D97F4661F3361576EDB42BD9F4C927A2B1730FB063BB43E9
            9D186411B4AB113C26C0B6340ABAC974AE8D3C42FF34C8CB7BE1BB7924749FA4
            4273FA79844366488205922E9BFE8D85683F4E65525768DC1B20B8CF28CF3384
            749DA0628AC1E418A832B91BDDABDD38F8F8C7E0365F52B01D6F8EC2271A2BCA
            AC867D17DA65DFD875E917550A586B860D43B4CDDEAD435ED12E9E62B515D587
            C7BC6E68628DF0BDDF0B5850833B55C958FC0A0383B05A590F45E51A02C64EF0
            C58DA750DC054E8807E73F425F565146B12AD9CF1FEC8E70EFA3106B8E805F4A
            DEAD5718CEC74C30F6B7C334C681D25792A06A1B466C371F064FE3D0A36D08B3
            A7475617FFB4DA887F4CD2E060A117CD027ED872CD70AD3720BA6F2D84963E54
            4C4886E6112F54595E72ED6A84CBDA437B723091F43B301E0369B41BAC54079E
            128657688260FC24E8CA5F81A66ABBB29A51F1117C77BCFC462A9E385B06E985
            18E81FFD19EEBD1795EBCF894AC0F382167989894B0B331B8F1BF8ED279135A5
            5B1F9C4C6C11B5D95B7617C7F9FC31F7B86BF1B1AD466130F7F5481A673FC4D1
            ABA04FED8487BFBB1DD3F46710ABA18234A50B82A769E46BBE4728E61F900B0A
            365806C17F12BCDA0EC7817BE15D7814464A0CA1B31A384744C33CBF0A869BED
            A81C910666740886B734A8DEA946574B293E5FC8A3F76D6420BD01F8793D66DD
            1E87F4139478AD0C6A0EF01036D9E0F95085A8C7AAA0691FC0C59669D08CF0C1
            F8540D9C531A816DDC0FD1DD1691A853E451D11F50354558D31A5CB890D8190D
            4D1A5918E908C4D2AEF838A1279E79FE184A16BF47DEA427348DD229F696C127
            462CF6F789E9184E997A7F46FA034589C9EF8DF8EEF308589BA7CE8257AB41CE
            8F5B5636BA503CEC1B2AA24697152B07E9C6B684F8DA40B03D3F83A7BA920CEA
            DDC0A385E84A19F08EC7EFC3BDBDF74355F2B6B29E42D29A113675A68E36A1CC
            E487F3B31E08EA1743ABCB87F73E11313FD300B402CA7BC740182B803792D0DD
            6642D02262379DAFF318AA186E2017D1D041069143146953E8591D9C6A91429B
            1CD9103FF8F90E38876B10B7894A26EA7C451F2D55136A84EEF421943F1B89F7
            57C25F48ECD0A683A381635D3BA17290D549B901AB0A6EC3D71F7F8F1F56E4C3
            BDB03959A03C08AF9D027FF801D2BB83F02E8A4C6072828033E4B132C9381FE8
            DDB99BAD41D29EFEF35F8D80B576F828B8F57A343997FF64EBF317E6E6EB74C8
            A9B8406114849A0C239B7B37C2F377938521B3FA482704FB7F461640A46CD609
            056BDB229E5902B9A2908B7CF68AA8262124B481D3A185FF231EC6492CF4AD7D
            287B498074A91C9A3BF311EC20D0AE941189B966CA10BE075D703615611E4A65
            D00672FE1491E21C2A69940A957C1AF4C07312D89606D8DE6E8CB48DF2F72A54
            3DAAA284E284F126038CD12448CE6D088B1721D64596F92A13718937A32531F9
            F8C1350A0904AA07D57D1B42DA42C96C16C9C5C0A5F0BB7C0A584D345A9C894E
            869B65DD7B3AB46E1034EAEB867EF25104AC1D236E4750AD86C166EBD8E2D091
            BD3A8D0EFDCB8BB185A714EC2201BEA71DD856F160CE13BFD32DF03FBA01C118
            150C4C6BE4AFEB803869B19271CA6D025EFA26193DDA78D03DBB0EB116D22999
            D5999405ABD3C8C1B740A0260A5C4F27BCEBA95907AC60A3488C6DC41AAA7498
            D175A4E53E448DB5A37699A02C40E37747D1773ACA5E940DB54E044275D04DF4
            8339A70627AAC06B8AC0679EA68E540395127C45249B645A5FFD36191D3345DC
            D897CA2F5906D387A1E34017F67B774367B2C047826EBC916AC214AA040AEA10
            FAF420743D3260DF5980E10633BE37C6223FC6BCEA6066A3611A9F1F37AD5B59
            0FD6C4FB953ACE4F7E257BE3CEF3C94E5FA3D72A6BF0687B1D4C163D1C9BCEC2
            7C7F0712E324383F3A8CE0BE6284EF690EF37A23CEAE688338F66D324ED4F7FD
            1AF49C9800AB99C1D89BA80E248F367EB0038DE21C08F842B064D4A771BBE275
            C9AB1153C444F2B24684582D691FC5BF9FD82212B8ACA89869963225AB224633
            2E72EF0488A70228AB5F55237BE6784AC6671994556851215AB0729B80D3E778
            38FD3EB4209FF6E1F3E4A92ADD94D987A2473F0F76B52A842131019EC5B9B0CE
            1B8860412D1C1FEE87818A6C249BE09ABB0D2FC726610699E713CD1A3D5A9C93
            F99ACEE946EF65F59AB561C41D0A35DD3A3D724E9C78B75951D1FD4789BB6D35
            0EB02FF505336D23B1C28DA8976E80FB838308D77A115AD41FDCA31771EACB4E
            6892FA8E02C2D72BA230E39D28A899107AB4F7A1BC8EC5977345DCF0009968BD
            16A30704D128C189C6897E65C5638C3E008D89C25957EFD3EAD7CF2A1BF551C9
            5A6CC41F5152839740760554F0496A244785B0F3B809DB8EEAB179AF179C4A85
            76391CCE17B851494C329B644DD063D12427B2B30860CB1074EDE943EE0DE5D0
            B6CA4468F22AA8073481677721D45A01AA0D63617F6C23B0BD08A79333D12C2C
            21B74BC7B69E9898C30265FF9E9FBD17016BF7DD0F2BED0B1058A6AAF21E595B
            7FDCA123537653E169AC7EBE3BF4DD1A2130E013857D5C308450F37884DEE80F
            66E276EC7BE113B4EFB88B0495D8555089BC3201151E33BEFB494DC65BC4849B
            5D78E0391D460C5163C9774164A608309361CD6AA8459DCD03A7334CC0B2689C
            12C239CA29064D104E0AFD1B3A02C78A547078A8986154F08634D8779CCA9BB0
            881F0F08583CD3A71CFBF8420D598E008E9E67919ECCA34122A918CB6140A73A
            F4696A07D92CE8D207A2BAEE15B4CABA05971E265FD69CB46AFC4A6592559740
            E5C3C6B1C0917278C67F8F366A2D0E59E25169B1E4EEEBDABEABCA1F9041C280
            2FEA9FDDD973DFD4C86C224F221A0AB2593F6E2C8A0D88296F57D5E2418D13AA
            BD13C09550D57FEBB7F0393D50756880C01339E879BE19B647F547E5B497107C
            A617ACB714409744E582B30EAE0364BF7C2C0EE49B919E21C14B2335E99928B4
            CE9670FC4C006386A8106BF261CF3E17CADD2664A6F130E854282975C3CC39F1
            C47D1CFA4C89828300E9DBCD8FB68DE509420E3E0AEDF756F278684408994901
            14560B98742B8BA7DFD56240DB3A746EEE4242638AD158D94775867D4F2738A7
            152065E62C4C3CB41AEF3ABF82AA7B1B84C6AD8040D50A4B40890906307D3E83
            EF921DF3E353F098C8E360D3864F9FC969FC9CC11959633A6CD9D20858EB46DE
            71F9CE04DC2613B24EE52D6A7E366F8ACD644456511ECA3BA540BDFA36B0BB28
            C3DCF215C2993108CD6F8E773BCCC3FD2FAE8373F13CCA672908B7EF07DC40A2
            3B580573F65112DF6390AA1C6068086DA7E4672E39B8DD3AACFED980CE2D43A8
            AD1371E2BC444CD12A8F88346D2042AFF6921405F0C4435EF4BB331979C53CB1
            AC0E03BA083857480579388CCC466AE8D43E74CAA885CB292293841C51D4FE64
            0A3D5F2AFCE59D60DB170D693569DD967C686AB6C234EA76AC1A3D16C3CEBF40
            02A3837AE666485F8F42B8671A54C3BE868B74587E903D3F3E1D1954F5AFE8D9
            3ED563345C9299256F233FF9B4DE3ADC77FF95D90B3F0988A9BCA255E72D3B8F
            188C664CA9ABC45BF66A18FA6420F0DDAD603F3F06DFD48D30AD1E8F03CDA6A0
            71AF7154B5939DD7518AAFA8823F2020DCA013A4B6D1E0FAC543DDAC82325909
            B4195EF25567800BB591FA4C7E40836C9B87EAC9C24BA449BCA03C6C1F435AE3
            0E706896EEC1F18B3AC5A2C4707E582974053A8EA73CC0515E904CF2BC16D90B
            6326819388608916A1B296F0EF7483D9550BF6781E54FE5360626294D725B095
            15D02CFF0E3D728E616FBF99D0DF426D9CDA01CCE0AFE03E5EA6F47D9C35069F
            F1061424C5AD3BD8A7C75083CB7D0597C1EF2FA917F83BC65D9DEB519E11D6A2
            F5EE831B33CA6B6E386850A1FDC5F30AEB345971507F370AF667BEC33D1DA7E0
            C3AC36A8B97108F8064DEA57CD31CA0C00EB7440AA256389188871E9083449A0
            D025C76EBC04BE0DA978FB44A8AA4E42974C064853457A57A13C9CAE2028DF93
            A404212F9B44141B59271FA20CE0236D61E2E8EF56840331A8CDBD08B69C4070
            A6C17F9A8EDD5F04A1F812185F01550F74AA18B21CF22B0FC4C8733D62711EA2
            5E7D13FFCC89C1DC4513617A78187C772D8754E146505E58E70B626B4A067ABB
            7DD8DDA9C3B0AA468D56695D57171B0FFCE4DD0858EBA74CBF8A951C8A160BE2
            CE9E1DD665C3E6957C4C2CFA5F2CC296443290355E0429A58B7766E2FBC91F61
            F8DCF761FBEA0B480D5295E3AE5DBE2EE77D794A859105D2E6A20E06093C0762
            976DC2B8B22A2C7D7C0EBAF7ED8858AB04AB81BC15B1C5AC97A0258FA455C9EB
            15A81D5E090E77084E0F8B1A078F6AFAECDC5F801796BE8D87F61C43E5530F51
            0235D1757C604D7A88463A09CB2BCBB581EB163983B5D9606E9E83136FBE8A76
            6FDE8FC06787C0E978586E6E8D9AE5473048BE4F698EC5A568F3FEDC1BFA74D4
            BABD4A9F7EC5AC1F1F7EE8FA99441A090FA1DD7AD5E6EDA915F69EEB42610CB5
            78601CD71ACE795BD1AAFF201C98331BBEDE3D15AB13B957FD7B5B043E96BC85
            81326CD9E6F5C8B96B3CEC7967F1AF6EDDEFBE1B3B291A9CFDFAD259997A7F71
            65987EA715F224A108EBB7DF63E8F2B558F7D587885A7E0755027B216E3987DC
            944C7476B891DBB5ED4D35CD1AAFD6D91DCA2297CB5BBF0F3F8880B569EA63D7
            9F98BEF3582D883E4DEC5AB37125171F8B4117F2B071603A70470A1E881D8B77
            C26D80D7A968ED94055835F22317A4E014E30DAD14C7243E6442114F231DAA5F
            91EC244AF7ED8D0D521083E5BBC6CA9830F50B96FFA8A357D73B46667CE525D5
            0614EED983B47D878162AA03D5AAC8AEF2FB1CE427C2EC14CE0D48D4CA5D9127
            3F1A500857D17727A9B4197D073E1964C6DD175F82EE9D42783ED88FE1E6187C
            4F5A559918B5F5E80DBDFACA26F4978FB7747BBFDE67AD7DE091DF180A125A83
            066DB76CD998595C7EC32E4AEB3D4AF281014968FBDE444C4CBB11410F07F6A7
            42F8F71681BD2507689B8CF0477BC1CBFA242F22DB530846068F6C83BC2ECA6A
            B660F1EC39C8DDBD5BB9444A8A162FBC9880BA6A2F3EFDCC8D4183B4484B17F0
            E4936E3C318B6A4A3FB06C991B77DFA3431549DBEBAFD522108C64A71163C7E2
            960727A3BAA23C022001259271E6C90EF0439A22B8E224A48E2960A83C635ECB
            251791027FEF7458A81DDFE5AFC39A075F277F5502813CD985A40C247BDC5837
            B85F176F5ADACF6A8703F8C582B71B172DACB70E8F4CFC8D01A5F2D66C84B6AC
            A6658FEF361ED55BA2719FBD1C1FD8AA21A4EA109C990D744E03765031F60299
            2AF92EFCABC4B61F28B5ED24C17E86AAFA3728FBD5857E75EACBF3FBC9C96A74
            ED9A80071F24D0590FB6FE148620B098FCA00E4B3F0FC3EB0B60C44815F6ECE2
            D0A851102FBC508B55ABAFBD5BFD1BDB54AAF7FC04DE923C2A90A98DDF154498
            FE6A372083FCC5A6F3E0969C42B82C72FC07C969B8D713C6A1ACD405073A777A
            CC5453FB2BA0E46DCCC71F47C0DAF68B30BC3604BC562B32B66C5BD2F4F0D189
            9524F64D4BF361A3D1955F51C00E6C8C20D5881C81C6AF38036E1331AF672A9C
            8F6E847A423B088F7485AFCFC70854BBEAC3E8DA856E91F05ABE3C06494946BC
            F3B60BED3B88A8AA0C63D693662C7E3304A3C90F954A7E098F1EB78F75E38EB1
            55D8B0D17BF5967C7DA8C8FFCA9512FFDA20300332E06FF136D4B7B586AE453C
            82657604EE6B0D71FD05E0BDFD10F36B71794DF3486B2CBED118E1143445B937
            0D6DA48218E6027EFCD632E71EEF2E8A80B57ACC1DBF83958410E9815F92B8EE
            3B724FA5F8434DBEA5568D2A2950FE7CF989E550B401ECA82CE82873B14D6210
            24AD08BE950BD5AB03218E6D01914C9F77DFC52BAC8A8025223B3B9AD864C0DE
            9FFD78F6B9306EBB4D43759C80B17754E3AD372DE411253C30D185A79F8A22C6
            05F1C8D40A3ACE7F1D58F24725A8A0FA6C38D0260EC1DE9F402C77427B537304
            A8FC0ACBF71409201956B5D1487084E0F578D1426FC4B1E8642A36EDD87143FF
            9EA1F4263B3576DB75A27E9D662D9E1F016BE3A871F8BD4D5EA0EF25AD3155D7
            74EEBD6B572E633461BCB30A9FD556535D6585AA5303788E14235C6453C643FE
            081A35FC3E7FA4361E9D036E544B60CD59F83E3B8C6058BCC2B0C8220C79FDA9
            3C152182979764CB6BFEC241FA59A5DCF40CD3CF2A79AD04FD3D28D5B353B9D3
            1D56CEAF699904D5F06608054290DED84B3AEA07176B24CB4656457E059489CC
            72B764687BA683DB558EBA35C760267B91D72013F16E0FB6346D3AFD7CC394D7
            AD0EE71FE452CA0B3F7C5BCFAC5BC7E18F3639EDDA4D54E39D393DADDBE933AF
            212A0AAD2A2EE098C703438B64A81E6A8F10653EDF451BC40B76CA48947974D4
            F14B1E70F4BB4085B7BA6F2A44AAEEB1FA3C7C5F9F84D7EF533AAB28875E0D21
            4E0F893259A8DAAD5C4F09520A75758211013507D11D80501659212887915AAF
            A192A50BD4FD9B20BCB500BE339508CAC9844CA744D9999541D2ABC085190827
            2BE15FBC17DE3DC50A2BF737688CB62E1F4EC4C77E7C38BBC53D1A870DACAC81
            7FB08AF9D64D2B22607D3DFE01FCD926D2A87B28245BEED8F27687F2DA49D516
            335A9716A2D42FBF438BF4A27F26D0BB21D8B689045CE4616F863E9C9DB2D7D6
            0B90569EA1D28542C6190473BA0221D22969540EF876A9501DAB806F33F9AE42
            070CD949108391952F2223C27DF212B826D150DF908940472A6B8E5781FB210F
            EC991A3A5F8818C680ED4CE1D485325F920192592BCFE3402AB18391D97E94AE
            75AA52B9BD68A270DD4199AF15B1EE54947EE5890E2D869B081F2114FE4356C9
            5BFFA55FD65B878953FF142C19733FD56FCE8013DD76ECDED4A8A276C0C52813
            3A5C2A40852F92CE951B266A9E744E7E2A3EE2E0E1F25F6988B25EA34522C2A3
            29638D6A0E15A579495EA3FED55125B474C329647D61F87F2E519EAB56F74A47
            58C5C0B3F2342402503D2C0BECBC3E08120BC36BCE41B5E11CA40D05083BBC88
            ACE4AA1FD8FA9F65802E3F5F1BA7D160774243647ABD38A516B66C6EDFA47F23
            F28F1A7F10E13FED3D953B1FD6CF3A6CBC6FCA5FD8BD7E1E8EF4CB555ACE74C9
            DDB53FD5ED695762D41260C528971FFD4564FE4E9711076FA206E10A2A1982C4
            A40403842E69080DA03AB14D3C48B7A9C63C0371DE2E656DBAA6473AF4133A20
            48E1E95877EABAEB19FF91AD3C90E0FDF2083CEBF3A0D1AAC14D6A8FC09D3908
            A79AC15C724175A20AD24162508D0BAC86CA253B757F6F399CE7CB15E032F57A
            022A1D716436CFEBB55BD62424F5D7C40A6844722281B9EE49D7DF05EB9365F5
            9A75F7FD7FBAF3B51D7092D286D8B0AAEBCE5DBB333CE1F6D5062DBA971721CF
            E35218A8CB8C033FB431A46C2A7C1B5BE14FD1C90BB5C1E555833D500E614B11
            FCBB0A14ED314CEF0E75BF0C38A7AD83FF6CF575F6E24AB66B1805C36B83113E
            5406C7F33F29D7D0368E46B86F2384D3AD90D2F4E048F7D86A12F70BB56028EC
            5DBB8B1446F73659B1219A34D3EEC6E9F4F8EFF736CEBED55D70118618168909
            0991776EFC1DB0BE1C75CB5F06EB32602EF9A16CCA6C03F61DDB9E5AE7EE2999
            CDB8B1BA14EB1CB557438E3E7C12896E921E4C881A74C18630355A79029B34D0
            F4DECD441D351C777C438576E80F17F1CB8CD57E7A2BB878233C63BE839F8A73
            AEFE1A91A23DD269E51D8BF5C74D8B49C46B866832A56E1C34EBDF38DCB6F954
            9DCA00EFD1936053F4488E8FFFFB607D35FAD6BF0596AC607207449D063C8551
            CBBCA24DD90EC700584C98420EFFAD9AF2FABD7EF500FD95A54CBA0EA9D0DCDB
            1E8E87562114FAF347F6E4EBC97B98E7F4856FED59780F97284BB225E97A27AF
            749B4A988F13527197FC5231B70BB90D939E3C1115FD825127DF0D32C2965700
            2E49FBAF8235E26F8225977B1234F2AB506AFD70A9D5E878F1C2073997AAEF85
            C188CF833EDC5551ACDCDDF9DD87CEE978963EE1BFF1889BDC5665DAA47E09F9
            2FC194B70CAD1EABE21B20C72FC229F9B137BBD1ADA506C3F71AD2332E8AB2A5
            CE027B5EFEFF79B0540484A6C209AF4AA03A528DA48B15937BE7152EE6F43A5C
            A41AEFA6AA4B38E28ABCC5EDF71E6FF9BBCF02FEF2A1CBCB4F9ECA5F4E8E8EC3
            620BE924F9A62AADEEE2F60E2DBA3B74427154590D99550AFE681309EAFF45B0
            D4152E84E4F5515A0697545A34B5B9FB75C83BBBD62C3F74633261BAA31CAFD7
            542B4BB2FF1DCF5B5FBB5D7EF5805EA5C2D2B814DCCC5201E674E06462C28AD3
            4D1ADF1A30AB25356928EFF4232017D3D1C6FF1E60716AE55D5D50996320B85C
            FA9CFC82D54D2BAAFBC064C47EDAF77612FFF3F5EF84F82F3FFC8D7A3611F263
            2DD178970A623D31C741E73D9A1C7BE7F9A4D4CFCD3C0F8E0D5079E507EFF011
            B3FEBB8145D78C6175705143DD6A164D0B2F3ED6AAA064BE4E7E5BAD518F39F6
            6ACCABA9224AFC6B8FE3CA9BFCBA28B983B16A0D3E8F49C240958ED8E4448951
            7F22B765B3411E462AD5B9C3D051B60E12DB4321EF7F5FB0A238AAF148D8BD6A
            062E0A8B985A5B76FB92A2D589D5751920169C6242B8ABBA0CFB5D913AEFAFBE
            75E4CAAB04C8724CA6F3BC6E8A818A8A66F95D31271AC4CF3DD330E59F61B581
            0A7E32A7509179D522A4F91F00963C231090973FFA44F82853AAB512128BAB66
            B7282C9E6792C3C768C6575E0766DB2A71C11B71FEBFFB3028AE3EA8DED368C1
            220AB956F2C3D22E72E331E68367E363C77ACCC63CF919A530358277D9C967FD
            8F034B7EA32C994932AEAC85C3454D34522AED09AD2F5EF836A9AAA23BAFA134
            4E35A4FCFA9667EA2AC96604AF8016792BF35590A2355ABC19158BDB346602C9
            092715E84792931E399312BBC84466D62ABFE65C59BCA683E0B4FDCF058BA32C
            48D101BB480C93B4E0040EE6EAA29B9A165D7A3FD1E58A834E8F6A9EC533F65A
            2CB1D75CF71231B520E0494B2C661BADE0BC3EC5BC9E8B36AD3D95917EA7436B
            AE5579ED30FBFDCACD57AFE6FF21B06C920666AF7C238643958A348D3ADFA4BA
            767A7679F573513E9F5E5E4A433616332909ACA3AC395C67C47C6B0C62E53289
            F62D36E9CF5527A44F3817A5D911E0C330F805F8E83F43505628E9FF45B0687F
            32AB3ED1895A914190008AF7FA5489E525B333AADDB3ACC100D18F3A4DE755C9
            EFC271BB5169D0D71E4F4E985A156DFD3C063A047D3638E95A3CB1D42FFD7F00
            965774C1190A43CDF2D092ADA865C2300735DAD44B179E48B339675B027ECEA6
            D248E793E2669F8B8D7AC9A55223CEE3412CF95C1BB1C9459996A7F3FD7F0596
            8AC032CA6B66423E889A18EA502DD421263BA9CE36C6AE57ADAA68987A406617
            E70F4123BF2F1E1AD8A5FFCB60FD67FB6BDB7FC0FA1BDB7FC0FA1BDBFF02F5D6
            A6FEED085E970000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 19.779531630000000000
          Width = 82.559060000000000000
          Height = 82.559060000000000000
          Center = True
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000004B0000
            004B0806000000384E7AEA000000097048597300000B1300000B1301009A9C18
            000036314944415478DAED9C05745457BFF67FE399B83B1E82138A04772B9416
            6F91E25E9CE26EA510A06871778ABBBBBB6B9C1077CFF8B767028194B6EFFBAD
            F5BDDFBD77ADBBD79A929E3967EFFF79F65F9E679F7D46623299F8DFF6EF3589
            19AC81C376FEF349120932B99457CFDEA0542A2859CC83B0D05892D3D2311A0C
            E805DEE67F7D3CBDD0E4E59298928A09294E0E8E28544A12131391908BB5AD14
            5B2B07D292402F2E52D92783C6CE3D5767ED1B9B9CE09596A2B30BA8F455C390
            88385529BF92C444BF7D9C92141159AE748938A94911633099A2D233E2B1B371
            C4D35346768E89C4E44CACD472E40A1536D64A8C4603F171B138397B8A8F9C9C
            4C3D49A91A1472B0B35323535851A288173189D184BC8EA14A157FA45293B8EE
            9F9DE6D8D189FF79B0ACACAD484D8D1727640A439536E9A9D67522DE69EAEAF2
            B22B415E399097009515582171B0C7949323C690A1CDCE165FA9C0203A37E508
            2B34E63F22C51F6F40FDBC6449EBDBF6B6CAEBB9796971D6760A24526B54C2B6
            FF9160C9E4323C5C1DC5BD4AAD5EBE49FC2EFE7D6A47715613B076757475A77C
            052FAAD4F4A75CEBAA142DE28887930C27891EB536178530DC243E5ABD8EA484
            74929C7D781799CAEBD377781B95C3B33749443E7C2B2CCBD488FF5C73707538
            EAE3293FE8E961156D30426464348E4E9E38FFF706CB1B932197A4B464743AA5
            5F588476604E467A4FE1351E95EA55E39BA6BEB46C5C92EA558B626B67237ACE
            85B38721261642A2E0C40958B20C1AB5FA6C74E161E347C1C0FEE057D3724493
            9DC1F367315CBA19C5B113AFB87A31441C4DD0A370DA57AE8CCD1ABD26F6AA8B
            AB2F367672B2D275C2CEFF4660E9C46CCAC480A58A7A891C9257FADA8D887118
            730628D49EF4E81EC88021F5A82500FA73CB397698BCEFDA63864D213EE9458B
            60B56A0DEA6F5A5BBE379BAFD7EBD12814F976085BE56DBE467EF512B2372FC0
            CBCF723CE4ED7B76ED7DC2864DF7888A307B9CF14C9972BE0BFCFCE497B2324D
            BC8FC94398FD5F0B56526ABAB8232352A5482D5AA3323A9AD909710913ECEDBD
            F8796C437E1220B9BA3A41F81372DBFC002B57A16EDCA4A05F6356269AE8388C
            9326C0D1A34804306AF3787F1A5FB37225BAE1C391D46F80ECDA55F4BD7BA25A
            B71185D95D0A353DDBB6DD64C1A2EBBC7CF602B9D2EE40D5CA8E93F20CB9C106
            BD4414002B64CAFF02B0424362C910E180298FD44C55EBB72FA27F17F9A8F8A8
            B12D9835E51BEC1D6D0AAECF7DFE1443A50014DF7F8F72EFDE02304C1F80D12C
            0CC2387E02B2901014A54A7D01566E662652DF22C832D2C91E3A0CDB952B9059
            AE378973251F7AA210CCEB4E0433AECF563212C38D2EEECEE37DBD596CEF602B
            A24045C9FF9F60952AEE456C4C9C48E4E9B2FBF7137FD3E4E68CA8DFB21EAB8F
            0EA582B2F0B59650327F2A96C7F8E2152AE189F23FC1A1DBBD177DB72E48CF9E
            41D5BCC517E3EBCC5EE8E884DEC10679E47B54FF60AB417C648931E06C4DBACC
            91F1E30FB36EE14171D4EADC57D59D873A3BAB83BD3DBC898A8BFACF82F5F2E9
            6BACACACA854DE835B3743CBDFB8197D487CEB3F7FF33026F4AE0A7BD69379E1
            168AD973B1F2F22E00CBFCD16EDE8CAE6F5F14674E63D5A2658157999BF6E60D
            72EBD6C36AE60C5433667E31BE262C147D293F648307A258BD5690928F1E55B8
            69CD9FD16360E912CB0439F6ED0E1B7770F2CC13BAFEB0838CF44843E972A57A
            34AC5B6277C4FB185E3D8FE2ABAFCAFCBF074B2AC07AF3FC2D6EAE5624241A5B
            5CBE70FB8477D1B2F23DBB0650BFAE27C6F6DDC9397CC4121EFAD2A5B079F61C
            A9993E7DF48E9C6CF436B648AB7E85ECC143FE9C6D58361DDA0B765134E04B03
            B4D1F06D6718351E5AB583425053302959F37F45366932925E3F220DAC855184
            ACACFD77280F1E215E50903EBDB770EAD44DFCCB969E5CC24FF2EB9B17F154AC
            E8F77F0756BF21DBFEF624B31A924AA582252B498889E4F1A3982EC16FA27737
            6E549D93E7C6602597932EC0348786F6D64D14BB776158BE1285B8F0F370319A
            3DA4662DD4EF5E416CBAE55876B6861B3783B9F7388637063BA29F8593191987
            5C18AFD34950AB64B87BA8295D4670B26A45A91D588CA25E8E7FB6D0029C263B
            0B9DAD1DF2C60D319DBF803E4F83A449132477EE88D037154CCE84097B090A3A
            86ADA36A59A9A256A38A142B2AC6D2F1AF64DF99D3D3F2C11A3272CF3F806512
            55478183838CB3671EFD70EFE6D33DEDDA37E3D0C16196EF0D823AE48C1A8E6C
            E56A4C03FA235FBFC132E7FA2EDF0B6E34086595AAC89D3EDEA08197979FB1FE
            C86B4E9F7F29987636254AB8E3E6664D66AE9E229EF6942FEB439EDE80AD8D94
            C74FA20529CD466D2D26442F23FC6D8C20AC7AEAD42E41FF7EF568D2A45C819D
            796F43D097298DFCF4090CA99918BA7641DFA8218A91A3B169D75684EEA716B4
            E83413C66D13C4D56145DBB66547188D828F65669B43E82F823BBF1D38302E1F
            AC65ABEFFE3550E263A5B6213BE53D7BF75C6F7CEFDE8B8BED3B36E3E0FE9F3E
            F317A92501E7D5A88EFAFE0374DDBA2111E16658BFCE92371C1EDF8480DA02DC
            87FCB2FE3A4F1EC7E16D65A069D332222CEA71F77638DEBE8E74ED924F38376C
            B84064443C5F55F3A343FB40CBB1BB77433876EC018D1A0570E55A30478FDCE7
            D9B3683CBDED1839AC9948E2DF58CED3F878A01774C6F8D330D48B17936BAD42
            999D67E170D2CFBCD0DC166F7BCAD85EB3F1F32F3ABB7F9F7A335436DE82D319
            44381AFF128BF13FD7CF076BF99A877F0D96B8CEC7D7896387AF94DAB6796748
            BD06CDB976657C21F72F28FF890918DC3D90B66C8EE1F4596C6E5D071B13D7D3
            DDE93760236FDFC68B9BAF2E6EAC35356B96B2F4B06CF97901CE25B442B41C3C
            38186F1F7B9C9D8650ACB81B4D9B5761E3BA3EAC58759929930FD2BB47002111
            599C3C36D272EDFBF749FCB6E42CEBD75FB218B0E8F7BE0CEAE80F22D4739E85
            58265079E922EA468DBFC8709AF0705425BC9919749559139652A76EFD3E2346
            76D892972734A9D918C997FE35A06FB97CB0FAF6DBFC174019B173B046A7C965
            CD9A2BD1CE42CB24BD5F8064DB067202EB615DB6EC17D7E46CDB465EAF5E381F
            D8001DFAD17DCA6976CD5B43C7CE4DF87D654F3CDC3FCF374624B29F78F56A16
            65FD3D2C4626276BD8B8E912EFA363090DD6B37F7F7F2A7E358339B33A52B2B8
            2B418B8FB3ECB7CE942AE95568DC19B30E327BE62ECAB568C0E5033FE11E2F48
            7064228A265F7F5148721F3F41F75515AC7C5D514625D2BEE72E0E6FDF4FE74E
            CD2AF8783BBC4C4DCD13A2FC4BC7D9BCA55F3E5803066FF822FEE40A192ECE2A
            D6ADBBBD3A313E7AF0C384037CE52684AD44895A3067C9D3A702B072852E3387
            9DFCEA49A23D2A50ABDD1A6282DF73E4E878DAB4AEF4A7E0CE9F39EF6293E8DB
            A716B5028BB376ED0DE6CC6ECFCC9917F0F6D6B0636728C989F368D4F857AA07
            96E0DEBD689E3F8F212375F1673D7DA21091EF52F9A6D53C5EBC49E6E4CB15B4
            F2B7F9F32D9173F010A68E1D2C15DBB06409B6A346591289B3EB38D293DF05FF
            34A8B9BFC128213D3D47C8B7C2DEB563F7B07CB0A6CC3A5EB863D1B3BB873D27
            8F3F6978EEE4B1CB0B964E67FCC87A16C2A73BB01F43A7CEF9B72C2A9FBA4BD7
            42C9F3FC3B3DCD8BF5A649A3329CBF34ED6F13A6D9FC9BB782E9DA7D1DF60E9E
            4C1CDF8AEE5DCB0B2F5F8F8F8F0B95028A52B756691213339935FB1249492194
            AF5086B5ABBBF34F6DDAB43DCC9DBB9DA9D3FB088FEC643966B63B6FDE1CA453
            A663B415C4F6C913E4254B913D7800F68D6BF0B06657AA95188A6F11AF850307
            D5189FA795890AA92FD46FD0BCCEF9604D9FF1092CF3FFDBD95B93939D259935
            737762B5268D5CEE5F184C9E8733FAEAB5B13A71025D7C3CA64A9531893C6512
            89D466CC180B28DB77DEA1E78F3384C1FD993DBB13FF6E5BB4700E7DFA0E23E6
            FD4BF6ED694DFB1F1EF1E4E114942A0FBA755FCACEED7B0908284FC5CA95FEA1
            974F1E7BF6DC735AB69844AF5E6DD9B2A53F24BC23DDA3185655AB2079F0C872
            8EA64103A4D7AE61FCA113767BF63165F619E6CD5846FF9F7A07D4ABEBFF3426
            365550A64F533D6174A37CB066CC3CFD694C91DC3C44295FBCE45C5058C8CB71
            91A9BB28EA2823B5717394972F21A9520DF9A3FB96042AFD506AAD441FBB0FBD
            A05B87D1ACDD308581FD1AFE4B80D2D35378F53A417870592E9E2C4546A69227
            CF7D1839F81563A7EA183BDC8EACBC22DCB95746B8C63AC64F8EC1C1C98BB8D8
            388A096D2A9148FEB1FF57AFE3285F6E083DC7F461EBE2EFD089F34D0D855DD3
            A7A36DDD1283468F7CCE6C9453A7A1F8708D77D149C446C73D1F3FBE45A53C8D
            5CE4515D417FAB5776CB076BF4E83D05E1E7E0A0160936D56BD3C6C3314347F7
            62E56FED2DDF999D326BD91264A3C6A010195032781086D5ABB19EDC9F2B0357
            D1A8787BD66D18C7807F0328737BFCF8293BB6B4243EB9025F554EA372D97416
            2CCE64CCE852BC09C9A2BC9F033BF64451BC44328D1AB8F1FBBAC654AEF89CCA
            9585E7759AFE6F8D111C92887FE9DE8C5F37970555E3C8ADDEDA32C916E97DF2
            38B6ADBEB1A4908F3E79E56A088D1A8EA37295AADFB76C5A665F4A5A5E415F1B
            36F4CC07EBBBF68B3E7815D8DBCA3970F0CD3641D47AE4662E452A935940347D
            9848CD75E1BA6DBF8394346CFA752175C36E9C25839938B929BFFED299BF9222
            859B81F87813478E3F2637E95B4A14D773E0B81B83FB396065ABC5D71DCB2AA9
            4C29E1E5732356764A0EEED3909A1E4C79FF1C5C8BEEA05BD77FCE5B9FB71B37
            C3A8577724FB1F6DA1A34D14D967AF21EBD6039520CA664BFF5CF86AD65FC2DD
            EB0F62C78C6CE9AD152A42A733588EAF59D72B1FACF69D5758DCCADA46457A5A
            B6E789A3D76267FE32881993BFCEF7380AB02CF032637030CAD2A5F10908C28B
            0CEE3F99FBE1DB7F0516AC5CD6868C8C300E1FCD62FC68371A3692E1E62C7AB5
            12A60B268F98200441C45A6EE9EBC11D1D19C956042D7F8FBB5B80E0690A9A35
            9F857F9900FE9D16147452C89CF5449B0EE15D70F4CF76E6FFFFD3A7EF447E9C
            40F98A65BE6F5CDF775F5272AE25E477EFF9500D070CDA6539D1C949C5D61D0F
            7F4B884E1A9D9BB7022B95E21F8DE8FFD35E36AEDE2770DEF72F0132B7B74FDE
            B162F576B275BF8B8970E2EE4315F5EB18F1F4318363B208026D8EF8479FCF0B
            E5B666016FE66332C1C1A4ACDB840893540EED09E1C1B37AB469D25528AAFED8
            382BFFE5D855AACD253C2C91F4D465FFF2DC6A5517F2F479F8CB2143EB56D068
            2442D219D9B0F6C77CB0BA745B2378955C246CBD6CFBD6EBE9BD0775B4D9BCA6
            3DDAF3E7308445201FD0CF92A73E9F8FE0E058FCFDFB70E8C822DA7D57F11F07
            3F7DF43C77EF3C64D99EA9A4A845D67801F56BF971E194070A470D59D1260B38
            128199526912980906252A91492BC5A8CD971FD6AE3272D2152C5F95C3AF8B22
            C8C84E83AA50495A96DEED8752B546251A35FFFB7C999D9327F4663716AE18C3
            D861B5C93E760A85B5B5982421B8D3B3CC4BBD1885F856B56FCD9197D9B4AB3B
            9926CDEAD428ED6F773F235DCBAE1D833FE4AC768B71B057F2F0696287974F22
            0F3CCFDA4A855B87486BDEC1C251EC84EED12D5B8AC9D503DBEEDD2C83972C3B
            036F4F5BAE5F1EC75FAD547E6CBDFA7663DBE6DDE26E2170B2208F17205E2894
            B6DEC5A857C19E1C11D42683C96C33665936749535DE01E624A9E0CC0FC9445F
            D461EB29B3ACF19B11CD89973223219C700169E038A5E05F5AC23E0890DD5BFF
            A04BCFCE7F0BD8BA8DB718D4FF0F34A6251804E1D6A66A2DCBD8E6A4FF513F4A
            EA574776F51EB6AED3909B723674E9E23F20459CF7C7AEE11FC270C806EC84CA
            5FF1FBC303DE65CB74887C341C8D30CC50B326CA3DBB317A7A916B6B8D44DC94
            BD2E9DBB31326A161B2412F56ADCDDEDF8BB3CB5ECD7F58C5A3C9032CD258233
            2949353F96BA68CFB2A9B3493DBE8DC8F024212D94162B0D06116AD13A661EB5
            A6C2D74AF4B94676964824235E829525CA0C6204194EA614BC664CE4D757111C
            DFBB9EFA635508BE4A428E86BC67526E1F7C4DC5EAA5FF1630B57A2483A7B663
            493777D2F61C423D791ADA9A8158BD7C8121331BE38ADFB11EF61343461E60CD
            F2FDA9EDDAD67751AAAC4C7BF7F6CD076BD0B0D5E4E4E42A776CBE9B3269E130
            9B7963EB9125C092B76A89ECE4698B3CD05EBC80A169336C9E9EA3D6EF5A114A
            2FB87D6DDCDF1AD5AD632FC1BDB6516180848C876AEC8B9A78712597094316D0
            AB751DD6F5E99A1F063A1946F34AAC5A425294966AAD140C58644FC8B60C2E8C
            CEC0CE5389225784A990217A312F397151541E3781BCF66DE9D0B215CA4AC928
            736DB02FA6234DA32146F0EB5DDB76D2B547B7BFB46BE58A8B0C1FB15BE4D9F5
            F9E1D9BC29CAF317313F80949C3D854DF3FCA276E5CA1B1A359A41CB96351B04
            54F2BDB660E10706DFBDFB12C149329BDEBB1B71FEE6ED29D4AE29A4C0D42918
            7F992792AC35A6CE22B9DDBF8DD5ABA7243D7F837BDD1D5C3DDC8DFAF5CAFEA5
            41B3A7CD67C6DC4914F9166CE44A525ECBB0A99447DC39297BB75D2033F436B7
            57FC8642EA4C8441231C4B4A7185025B77196F9FEB9097D153F9B696228EE63C
            6AE2A9889334E15DB5D30D989419E4D5AC83C7C4511CDC759C4DC756F2557B2B
            A2AF99108592E8080D199170FD8FBBD46E54E32FAC1305433A8C3DF7E6F283F6
            0939759A6070754571EE1C5655AA149C655EA7533B4CC4D95136AF67D74A5382
            1676CF07EBC7EFD771F66AC89CAC1CD9D4CCA45982E3282DEBD9BA15CB05E39D
            212C4D432FA2CCE1E6697E8D2CC1AF83570B41BBE40B33B45A2D0D6A37E5CEEB
            EB54EE2923FBAD9CBC4C29459A1BB8BD49CB8066C3E9D8EB5B9E1F39C8EB7DFB
            C829E2C090DFECD1E549D8342E0D45AA0C6579299DC63812FB3C9377533331AA
            A4046CB1C5D94BC5D101A9F8BD4E415DB122EA691370B4B36740CF7EE4550CC7
            DD5745C24D395EB5B424A569893A043344B8CF9C33ED0B3BBF6EBD92D4A27EDC
            097C42DA94A5583F7C88D2CBEB8BF35AB45ECBB953B7AF7FDBB644FDA387A77F
            E059DF2EE7C8A99787036B57687BFBDAF082934D1F929FE97D38520F77140A1B
            6AD65E88ABBB2D278E0CF9A2F38B172FD1B46913BC9B42B1CA56041F50E0565B
            8BC6A821ED8A0BEB976F40622D23F4F841C20E1C23D7DF85CD379DC911B338B8
            460AB23019253A2998BEC19DAB3753395737415417255DC39D29EF62CDB48609
            94BC1E87A2BC3FEAD99385547267D9BC551CB8B28BDAC3AC88BA2A459F61A048
            3303F7D6E92959DC9BD017D15FD8B971CB75868F3D4ACEBB89E88D4A113DB67F
            192133845E9C3D637B46DD3ADECED76F04192C6075EB3187DD3BDEBE1E34A46D
            9935ABFE5900DBB98E6649D0F7F4EF5BFB8BEF66CD9ECECCC573A8D14D4EE26B
            099A6405FE1D8C5CDB9647E3222D98347D3C29E9E9BCDEBF93D45B37C8B37542
            5A427029831EDD7B09A555369C7BF71A55855C2A84DB1298E94D8C514782BFE0
            5C4E526C9EE82926BC26D5D516F994F1A89C1D880D8FE3E7992328D9418A93AD
            92C8F3525CAA6A4524E8797F07EEEE09A562CD9285EC4C484CC5D7672AB79ECC
            A45A39B7BFBDD703071FD1A9E352EAD4F32A7FE3DAFC57F9607559E1B27BEF9D
            D8E52BFB2B860F6DF4C1ABF22BDCE735EED5CB5802021711F6760ABEDECE853A
            DEB2611B3F0D1B8247EB5C1C5D14243F91606BB651AEE3D54123CB66FD4EF1B2
            BE82CF2979BC7E25D14FEE60EBE04A66623E25F0F090F138251D75CDA6542B1F
            C8ABCB17F0BA7D814047770CD11AC1598DE4BA2B04CDC813E120C139E817749E
            AEA8E50AA102A6F222E33EB5FBA808BB6444218A4191E6F0F4A016D53B0FEE3D
            BD23C477B142F6162B319D7E3F7EC5F439ED3F64320A1ED79AE992994A3C7F19
            45A50A73F9AA5A91760FEF4F3D6201AB6EBD05556FDE78FBE0D8B111B46913C0
            C7951CE9870ECC1D992BE2FA7557983CF3348931BF7E310B755A54E5D6F34754
            6DAB202B5642BA48EA1E354CBCB9A0A555F5768C9DF8335959599675EE5B0BE7
            88732251DA3A881BC7B28467273371F95D2CD5878CA6C5D7ADD8BE6821FEC74F
            D1C4DA911D7209E12A193F6A0CE6F48C263D0DFB99539154AE80CA682039218D
            61E386E02C3C4A6A94921325A3586B039A54234FB7EB58F6DB4A468C1A5AC8DE
            C62D56E05CDA870363CB93BE6C25D689C9184D520CA16F10490FEBFEDD499E38
            1337EB89229C6D4687BC9ABED40296A35B9F16E9C9F667EE262EA4C6EE25641D
            BF8A6CD2244C870FC2B4C968BB74C5B1475BC667D5E6C49A63BC10EEFB4532EC
            5287BB19B72855CC9AB09360EBA1C7A98C8E97FB4D2C9DB78EAA352B08D69D4D
            AE2816B716CF159C260399953A7F3284A738D95AF1E2D9331ED87B53A5532742
            7F5BCC76E722AC57CB5955D28BFA61510C15F53D53481F6D4A023663476125F2
            A342D0053751CD26FE3C9D4B4FCF50A3BB9AE0A352AC7C44356D61E2EE7E3D6B
            876D62E0D03E85EC1D3078374F659EDC691A4C5AC74196E567E507AF32FF2D0F
            0CC074E731C5CA2E2635E6E1BCAC8C9D532C6079788DE9959064DC12A25B4AA9
            8E2DD05D7D8471FC7874E243423C4A770F94637BD1CD6B24EF8F5FE1EAC55185
            06CECECC11DE599D58DF57B83A2A487D2EC5A19C796DDAC0FBCB2686779B4271
            3F5FB4426365C7BC277ACF16ACEDED2D1E6BF62A955C4A667232B735527E183D
            96CA019538B46D2BB7F7EC4757AF36E5C3A3E891924D968D9A3CF336B9A458B2
            9BB5C0F87D3B41BC72D069749C3876862BA1A7A8F29DA88A4F8457652B28F1B5
            819B9BB58CF9762A8BD7CC2964F3DC79E7D8B2E32E218F46A253589379E830CA
            4E1D315D3C8FECCA555140660B6E67A26A93F53CBA7C7B8FC9B8B1AB05ACFA8D
            376EBC7EED51DF68FD4ABC7B7442F32C184DBB7628C4058484212B5D1AE56F93
            F93A5ECCE4EB608E1D1C5068E0ED5B77D1B3777702FAC9C87A2713A120C3CEDF
            48C80D919065659835651E36766A0C62F0A49828EE2F5D805C2FF89420A5661D
            E820A672E79DD78CD8B499217D7A0BAA924290F87BD1817D04BE09E36783C881
            02A84C11724AA122346989C8060EC4BE750BD466A521AAE9D58BD759B27D3E7E
            0D55A81C04C17D2AC7A1949EF8E83C94B12EBCB9F31E5BE74F4FC857ADBBCE82
            85E7880C9E85E9D041B41D3AE6E76AFFD2489253C53C6B91A5A653ABC55AEE5E
            787BC368585CCF0296CA7EEC769354FE6354DA7C3C3AB742B3FFB4253CA41FF2
            9539E9A93605D12AAC2E56AF5F73685FDF42602D9AFF1BE3B6FF4C8D664A3242
            04231709CED65590FC6B1ABE29DF41B87C3F5252922DCBB44691E0DF5E38C7BB
            E37B513B3BA31402FD4D4424C5DA75A1FFE041BC0B0DE7F2F5EBBC0809C1A688
            2FAA5317E9919049865A959F43B35348295F0985A8AC8EE25AF3FE2D6B33E882
            AB0D9DDC0BAB00C1FA1D546892CC216542E1A341F7DA9ACBEBA3F0F5FF5494D6
            6FBCC12FBBDF12B1A20ADAF25531962F876ED468644386586E5C7E603FCA6FDB
            D1A4C5EF5C3AF7F88260FCCD2C6055A9B569CFD3870F7E88495D8CC7A553684E
            9F1112C380562AEE3A320C9D9515F67327D2667522D2B8788E1E1A5808AC9D1B
            0ED0636127AA759091725785CCD684734923CF0EEBE85CB7170D9BD4233E21C1
            B2A9C4DDCD0307372722D7AD47293CC546DCE8A5278FA8D5BBAF903C562C5DBD
            86C06AD5A852A62CC962CAAE08F23ABC6831CCCF0FF462EAB419A978F4EC4DAA
            872B8902E42C9107958244BB38B9B260E92FA47B04E3595642F273E1618E06A1
            69B5D88514E7E1A910E171B2029BD7AEBBC9FCCDF708DFDA989C0DDB512C0842
            26BC54AF138A42287AB94A6D39AF6EC3C5DCBC1A76C364FA3DDFB34A95993E32
            2C346D69A4A004454B7A1402E2E3F359F3AC76FD7E0DD149B9C2E547173A67D2
            B8E9CCFF7D0EB5C708C279528983AF012B17136F4FE8993BEA37DA74F89AE4A4
            64A1C78CC8BC3CD05DBF4BC28469C8ECECB0112A592128C3344D3A9D05777AFB
            EC2935C42CBF8949E0D19D5B14CB4CA2A85F71B2F3349687299902F4DA7D8650
            A1555BB2E3632D4F90552A95E581F0E8B12378187F97F24D55022CA3B0415471
            372DAF764AB97FF93ED56A7E5560F32FBF9E65D3A66B84067FCA657FB51C50BD
            EE621EDC09D96FD2AFEE6C01CBC6AE73F3DC3CAFB38F1E8C23A07211FEAEFD3C
            6E3FA7CFBE11D5704AA1E3737E99C5F4DF6752E51B05DA4C487D2BC5B9BC8197
            27F52C9BBA9636ED9BF3F6ED5BE29392D0258AF858B10EC9FB089476CE82CF18
            392588AAAC4D33B20D3A22DEC7D2B6697D42A31309BE779B40B97029852A7FD2
            C49D1872738504B2C2AF4B6F6C7D7C85473951A44811E1A1B67468DB91489BE7
            025C35D9421F3A96D79399A12327D49A8B9B9E52BE6AA9029B07FEB49BFB77C2
            79F860327FDF8CF85558406CC4DBA0ECECCD132C60D5AC35BBD6DD3BE1B7CE9E
            1F47F3A6E5FFF6D2356B2E0912779A84E805858EFFBE781DC3170EA2D2B72AB2
            C2459E1035582D6635F4BE9EFAFE2DE9D6B93BD1B1D1644905BB1655CBE9CA45
            643E257013BC667BCC3BE27E684D50B71E7CD77F20833A7C47BDCA952D2472C2
            E2E5185E3EA47C315F34FA7C1F97CAE4E4C64621295A12976F7FC024C2C6CDC5
            55FC2B67D91F53D03925A392087A212AABD2514C5C9A0665A42B0F2EBDC5CDDB
            A9C0E6662D570A27517264FF408B0EFEB8D6FAB977E58A4AEBE03E03772726BF
            8F5AF8AB05ACAF5B2CF53D73EE5ED4C6CD23E8DBBB6621207213E331DDBA8D75
            F3C63C4D5310587C3CE19173F0F2FCF4287EE2F889A2B22C20A0AF8A949772B4
            C9267C1AE98989D1E31B578D313F8FB1848BD4C509E5D90BA4FFBE0A85932736
            22B62385412FCA96E451661A8949096C9B3C8E13771E51A39C3F171E3E225CC8
            A206257CC9D07E7AE8991D1F875FEBB6A2287C2F14408225C13F7BF49A253BE6
            E0F79D91ACD77252230529AEA827374F4BC415A13EEE0653A6A25F411FC54BCD
            A0F72F5D98A9394D76D006641D040D69D30649CDDA055BA5425FBEC3AFD2422A
            5676E9FAECD1CC3D16B03A7658C3C143B7A37E1ED7DE7751505B8BCBE78AD937
            99DDBFCDB7C8535351FABA210B0EC621601DCBA736A0778F4FA09E3F799556C3
            1A52A6BE8CDCF772D2C38D42CC4A4402167316E5CCD4210B2955CE972C412833
            4F9D45B26A2D52A10BB552232E628C0C51A24F642520A95B9B9E6D5BD276E26C
            5A57AB4A3D91638E1D3A46335F1732749F76B7E4262552ECBB0E9468D5CEC2E0
            95222C37ADDFC4BEB37BA8DC594E4EB29ED4A70ABCAAC9088ECAA59E4F5DCEEE
            BECEC78D0FA9E99978F9CDE3ECA59F6930A011FADB2FC8F9E051E63C6A14A4D8
            76FA38CEA6BBD2B2CA5841ADCA55BF7A71E2030B58AD5A06895C147AB6799B6A
            CDCF1E136EB97C29D9234723717313322011EDFC5F904E9C82F5A249547BDD08
            DF94288E1CE8F7C9FD84EFD66A549D37CA07147156A3C910DC47A243232A6AEA
            0B394153568A592D8E95B30BA937EF1237610A2A6B1B4C023CF3863B1B4129AC
            85E7AC539928D7B806B76FDC4327BEA857AD0A0F1E3EA3AEBB1DB90663C158E9
            897154EA3590EA1D7E202A2C54E42D1716CE5BC2F9B063F8575392972CC6D72A
            F0ACA5E3CE6E0DCBC6AC63C4D84FDC70EB8E9B0C5D709BCC3F1AA317B441FFC7
            1FC81A36C2B4613DD2F56BC88B88C22EE20E4BDE94624CCB919A66CD2A3A9F3B
            3731271FAC166BB8762B6499958BED88C488991020F49260E5CAA64D45079BC8
            7DF10CDB5AB5B1EAD084D91D97F35BBFD5A425CC2F14AE2D9BB7E2ECCBD3D4EA
            AA26E2A40493528F675578B2474BB7363D9931770AB142EA44DDBC8D665E90A0
            0DE22285A260F5DE4B2A6753762A862A7E2893D3084F4AC1CBDB93DCF42CAA3B
            5993FB71DF94287B9A8C0C8AFDD09B80D6DFE028E8C8FBB058068CE88BA25C32
            76CE3262AE2BF0AE69C0A1B881BBCBF5ECDCB49F6E7D3A16D8DAE6BB552488A4
            7A77436DB2ED8B211F3912D9D2A596EF744387625AB50A6B814BD761C7D8F3FB
            1F4FDB77AC1E7070FFC8FCF5ACEFBB2EE0F9F3E4CEAF9EA7FDF1DCB48E0ABF4C
            206B6A10AACA95D085869253A31AB2CBD7703A7F94D4A6DFE22C19C89DBB1309
            ACF169E9E397B9BF3275C56402BB2809BF68C49026A368630919A21A25DF5233
            63CCAF54AC5799F4C8683227CF429E9286C9465D90547D44E2DE2FF2566C191F
            6C44C58B3083E5E54DAED090359D6DC83687A1C48C951E5D5E1ED5864FC0C9BF
            8CF04A19BF2D58C1899787A8DCD89AF4770652424CF8060A098586BC572A1E9C
            8CA048894F9448221FCAB61DFDE8D1A52A99DDBA23DDBDCB128272A13135A262
            DBF5EB0E1B76E0E23D135D4ECADAEE5DFC06AF5E33221FAC9EBD57939E96E774
            F4C8DDE425BBA749467529474ED9B218DEBC452A6487BC7A55744F9F60D3BD87
            A5D380AABFE0E868CD95CFF8564E9A5680519A9CA2EF7090AA88BC60C0A3920A
            9FE67A9E9ED6E099E8C7AA8D1BD0EAF304C79A8C5CC828D109327DFEC6214F95
            824DA949641477C2942B8A437A365FF9B8F24EE497724EB63848E4E8A4260C02
            28B30A081C334524DF0A1CDF7792590BA751B18F146B9592D7BB4C163E56A68B
            84FBFB354CEF3B9B59BF7E5A2D5DBFE12A0307EC16A0AFB43C7B332F6EE66EDD
            8A72DD5A4CAFDFA2FBB615F65BB6F2322A830A454751A366F90E35AB7B1D5AB1
            B2473E58FD8502572A8CAC5E79F55AB5EAA5EADDBF373E7FC36C72220A17370B
            21FD7C4FC0D56BC1346C308DB4B44D3838581718D2A3537F761CD848C35F5404
            1F9691FA5A8A5F871CD49E42FAEC9730E49BA9B4EBF52D11E32663109246EAEA
            4996D6806BA69157521DBB9D8CD8AAA494B075C1A0D7909C9E26729A1C7D9681
            C67E6E0224C813E029DCDC693079360AB91573664DE7A9E106959AC888BE2121
            F6969C8A3D25A4687209DF0EF76E3CA17A9DCA0536DA3B8CA17BF74056AFEA52
            288D986BADE1038530DFE3F4E9C79833679B71C080360EF60EB6598B1676CC07
            AB639715E2A6959CBFF47E685470DCCAB8D80578787EB6B8F761AFC3E7ECD6B7
            D8542A5670E5F4C9510530C64727D14AB0F5178607D468692D04B30E8762505A
            90D5E70F72A8AD6CCD88C99348FC6D0912511573755678FF5C16555927F60CB9
            CA4B116AE584C92D6AD4E5852C99EBAF22799D9DC7A8F195A95CCC853F663EC3
            D9468F55C99254193286F76FE359B6733A36B51290A689093A65C423408E7335
            3D8F37E95839773543470C2EB079C7EE7BF4E8B69CDCDC0D427AA93EDDDC67DB
            3D3FB6A2A5E788E21177E2C7AEE5DA6465EB397468141F9695578B8B156465E6
            BAECDB7B3D69F6DC7E4C9BD2827FDAB7F0F4693401017D387B6119CD3FDB356C
            CC15F9C7AB2489EEE1546BA5E2E916290E458C3836D660FF3880A9335792B97D
            33DA3DBB91189D7068EC46F6382F92DFEA7108D361159745A4C9810C85166F2F
            A520995A4A57B1E6FDD96C1EEE8945ADCCC629A03AF5468FE7C88E536CB83F9F
            0A8DA43C5AA2A2582323F6011A1E2F13E27EC64A7E9EF969C14FA7171443D195
            6933BB327B467BFEA93D7E12C95755A652AE7CE97665CB3A1EC9CCD472EEECD8
            7CB006FFB4158950F00E763296AFB97B58A9B0699B96F80BFFAA75EEBA9EFD7B
            AE8A1CB1BDD0F127F79E51AB7663F28A26E3ED0F69F714F8B43490F94CCD8AA5
            17A81C15CC8B3E7DB177F3213531055AD4C2AB6F7191F78249910B7E96ADC4C7
            4570B6940CE44A0FD2C2243C123ACED3C78684C808EA0D1B43AD412319F0633F
            6EE59CC14D2D274D10608417A75F80BEDD07B071C7BA4236D56B1864D919ADD5
            ACFE97F7D5F1872D1CFCE362EAE09F9A394BA442C2095AB3616D8F8F606DB36C
            2B7276B6E6E5CBF8AF8E1E3EFF70EFBEC97CDFE9CBE76E070EDE1124F61321B5
            771A46F56A25B9787E4CA1F312621285969CC0E5D0BDBC8F10942F3EFFF80FFD
            8653429380E2FC6921CAB5680D7ABE993F8BE8D038EEAD5B4E8972228F79BA93
            ADD008B91449B596DF53AD5120DB83E6A35688A2E16A8FC4A7244EA56B7160DF
            6EDEBE796D717E970028EB1EC8A0CE63E8D1FF8742B6AC597791218396111CB2
            05BF52F992E7C0817B74ECF8E5FDA52665E0EC36024777DBA95D3A56F8253925
            CFF28CE08FDDA33EEE75C8F722CB9B142A237BF7BCB951A4A45F9D77A1F99BC6
            CC52E5FCF9C70487263371CA259606B5A47849479A36092026361D1FEF1EFC32
            6F089327B5FA62F077AFE2B9FEE822D7AE5D15D54A543527094ADB0A2CD9FC8A
            EFBF2F498FEEB538B8FB01B7EF44A0B6B3A546055F116A32B66C7DC44FC3EBE0
            57D281356BEFF2DBD28E3C7D9EC08C59479939B129C5BC8C1C3F711D1BB52D7A
            A39666F55B1358BFCA17E33F79627E99A92FDB77CEE6C76E819CBFF08488F064
            468FBFC8AF7384EAF077A569D300CBBD9B5BAF7EBBD8B6E9A461E2848E0E22D8
            B2F3F2F2B7BFFDF65BC113E9B59613CD7F3B39A979FD2AA5C6C54B57EF6ED83A
            9E7E3D6B5B9656F6EEB941BF413BC9C94CC2DED1934D9BBAD1B17D6D4B47274F
            3DE59BD663D8B97B0EDDBA7CF988ECF376FAF441EAD4EDC0F84917707355D3BC
            5979264C3CC399533F606F0755037732776E23CE9D09C359D852ABB62F73175C
            E7CAD94E0C1C729EAB979F53F9ABAFD8BCB13C278F9DA5F3F77FBFB12DFA7D3A
            BE45FA3064684756ADECFEC1A36ED377C00E21B162B1B67563F3A61FE9DCA98E
            250DC5C4268B891F6DE677B3860CAA3F3323F3D34B048B7F6BF761B7F2F44305
            03C8840471B09732EFD78BA73232F2BECECD5A825C9E5F395A7CBD9CEB572FD3
            B859734E1C353F64FDF8CE9794B5EB2E3178D05C76EFF9852E3FD4FAD0DBA702
            61CCC6B2657AFE82B9346BDE16A9C49D3973AFD2A95305EC5DD4A464C6595E04
            4F4CD433706015CE9C7ECE868DAF1934B8266EEE3E64C66B448A4862ECD8862C
            5CF494C498D3228C8A08B006606D27FDB46CF0D1A3DFA550ACD8601135F53972
            6878A1EFBE6DB7868B674F53A77E633129230B8E376CB29CAB976E65F4EFD3D4
            3957A33598BDEAE3DED57DFB3F90D2495377175C6014FFEFE2624D78688AD79A
            5527637AF66DCFD68DDD898B4F162EFC82962DAA71E6CC63E11115F0F028FCD2
            D1EA9DF7F9E9C7E9042D18C2B8F1DF5A8E8DFDF9670E5EDD47313F5B6212E231
            A9B2B1A528E9497ABC8AD852AA8413712F0D443D57D2A56F27AAD574E2D18310
            42C25369F3752DB292D359BE7C235A87642A057A5916FA3459B93C7C152200CA
            C25AE286938B1D614F1239B9EB02E52B97E7CEED50E1913FD3B67D630E1F1C59
            C8C678711F67CF3EA755AB1A9C3BF790860DCBE1EDEDC2C1C34F44A44C23B06E
            9D1F5A34F7FF233925B7100FF87DD987BD0E1DBE5F5AA8433360EE6E6A2E5C8C
            F939ECCDCB45E72FCEA569E3C29B40CCA129F9EC55848F3EB4FF492A9DAB4DA1
            FD37C53978643C776F5EA366830648BE8132829C66BE1424D35A6F5ECFC3BC6A
            2D7111EC5F1444EB3439BD1A4C62C6B8D9483FECF7BF73E501E3160DE379C66D
            5C2A80360D3262C14AF06089A028E68D89F2F210228A719B06F53876F01A8B17
            1D65ECB85D8C10F467D994E61F6CFDF48689C16840269515BA97CCAC6C914B47
            A1B6525E0C0AEADA34274F8A264FC3E7B469EAA40F5BBB7BF7DFFA27204C962D
            926AB59195CBAEDF902B157512E282B0B7B7E6AFB8575E7C3C9A9E3FA2BEF700
            E5E0CEBCFD613475869EC5F8EA1977EF2CC4DD3E875ADFD5E395269CA23E22D4
            354A019484CC4833D8065CCA4B48CBD6102B9CA551C5AF983664290F9EDF67D6
            D69FC9114395F197A34D5190F256826D31036A7B938537654A0C2447C0827ED3
            183F7236ADDB0671EA6684480543E8D2DABC47CB2AFF49B3C9F48F5BC11B345A
            C2B52B3734438776F4F0F571494F4DCDF9E2FCF90BDAE6833572F497AFD05992
            BDA30D1191499EDBB61C8A6DD8A809972F8DFECBC1D267CC40355B78849313C6
            D454C1B005FB7F11CCB7A3CE717CED4E162CF8999E9D2AB2E8F7A99C085B4754
            AED1B234939724C61194C2C90B3C945EA4A4A490F05AF3A96351E5FDFD7C8527
            A6F14E9055F3EE40657101B695A00AE253C92E806E0DC6E3E95B8FD6EDE7E1E2
            6BC7BD2B93F05D318ECC653B60F9EF28FAF7C78ABF6F418B2E3261DC7A2A5729
            D9A54E6DD7BD49C9F9E3FF19DA3FF67E783973E2B4E37FD99139CC9C9D151C3C
            F4A4F3EDABD7FE183FA1270BE6772C083B7D763686AC4C0CB76E226DDF11FD8F
            3F225DB61CB98B2B2A1F91CFDE2773F2EC4B06F65F2D3CC9963EDD1A51C44383
            B56B2C1AA310CD3939A2364B78F32C9CE057A1DCB9F188766D3A3076CA702E5D
            B8C2D4A93385D6B6A155DB16B87B3B50C2CF0B2BA94494791559F18EC4BF77E5
            AEA013F71F3E63C2F8E682BA7480BD9BC8EED2CFBC2BD3FCAB1118AB5645327D
            2ACAB6EDF9F376E293A75E8A2A3E033B4787F58306050ECCCE36A2D168FFF2AD
            B08D6B3F6C939C36FBD65F826509472B2B1C1C25AC5D7D64D28B27CFE72D5C34
            4024ED9696EF33366F42377418CA95CB311D3B85F2F04134EBD721BD750BE3A6
            CD288F1D46DDA6ADE5DC4D9B2FB364F975728594A9ECEF4BE3BA25F8AE4D258A
            9592B169DD0AEEDCBDCA2FBFCEC5D5ADCC6716681839A23FC1AFC359B66C1345
            7CFD3974245824E8573C7B974AAE9D84EFAAD9316B521B941F7656E79E3E81A2
            551B3481D531D5AE8572D94A4B28EA1B37443A661C568D1B899C68C34DC1E6EB
            D69E2D2AADE3B97E03AAB57015E25C2B44FDDFBDD13A797CEB0FAFFD0EDEF4B7
            6E6A326F47B755606DAD65FBF6C7CBE2A29247FCB6A41FA3473545BF7B339A6E
            7D91D6113CE5C60D8CCD9A22AA02BA4913312A64A83B774559B142A18DF97784
            A65CBDFBB110C96924BE8D42919A42515F57FC84D754A8505CCC6CBAE509B339
            6758DB3A131E9EC8954B778437D9121B2B389E906435AA94A477E7B274282D37
            3FD82B64AF36361683B737C67A75D18D1885D5F79D2D2165FE98E9A5CDE92DDC
            2AF51D75CA0AC26D48BDD7B163606091223E242767F24F6FB86CDDDA3B1FAC76
            9D66FD43549B2CBB88EDED6D057789E3E6D5F8E5068369F8B4F93F327BC2D7D0
            AAA198CDAB488F1D455BA218561503307A78608A8B2B58EE302F7D98B789CB97
            2D41F9F40EF81585665F1359BF237715BE3C3E7E9790B014222292C81555C8E0
            E689C4D9495C6FA46811172A562E4149491275ABF952C65C52CDAD4115F2AE3D
            C174E32A5675EA7F7A93DF0C4A89925847845BD6D50DF5EBA35CBE1CD5999348
            BC151CB76FC8B79DFF102745DF757294D71513A4D799F7BA9B8C7F99AB3EB6BB
            F7E77E5829ED16C43F3533E2E69F767AFE341CA34627728D725664D8FBE9DF0F
            EBC196156D510FED46CEAADDC83F0C96E35F065BA1D93E16E80C2175A40D1AE6
            BF74EE5FD6B2CF411A168AC24684CED5B382B6372A3C60FA3B73DC0A0B457AF0
            16D9BFA3C89375DA147C6D79254ED011F5B56BE4FD3C06EB459FDE4134AF4B69
            5BB54671FA14DA410351AE595B90ABE61F096752BB5F71B0B33EE5E9AD6B1D16
            F68EDA756AA1920B3A6330FC2306172F4DFEF7C1326FCD7EF43014934E424080
            178F1EA5F67BFD3A6C834F8D46EC3BD08FDAE1E7440D5F4696081DC9C2C5D814
            CDFFED19F37C653710B37BED3ADA3EBD506EDA62015573F122D2A64D2D372E7D
            1F85DAC7D7727EDEA5FC5DD10A73EAA81280FEF1134B1FC6CE9DB0FD635F4148
            E7EEDB8F4C8498DECB13654CACA5CF82DF909830117DD002AC82E6211F3749A8
            82747AF4DC2E54C13D1C9D146B9B352F39382C2485870FDFD0A0614D0196E2FF
            3D588F1F859197A5A372E552C81546A2DE6506DEBAF56615B8559BB67D28B37F
            FCF480F6E35BA65A11C33AB50D326D1E92B0605425FC0A3C40D3B001CAABD744
            31D880AA4F3F0B28393D7AA2DEB19DBC460D30CD5F48CE8B2728AEDD44FDCD37
            283B752A004B939387C9C116A9E05BA67BF75055AF5EB07B4FB3E057AC76AD83
            E347D9FDC044FF9E5B84A67D9F51CACF6778697FAB6D562A075EBE88E1EDDB08
            0156E07F0E2C4DB69E72658B0A8F90A1CFCD2339294970207950425CD438BFB2
            9559BAA42DDF7CFDE9254A9D986A6DB16228A3DEA13B7A18EB6FF3ABA3399FC8
            5CDD101D603C7D1C75CBFC37E8F3424330F4EC83E2E6758BD759B62E36698A71
            C44FA8DB762858DEB62C7B0BBAA2101558F7D36054BFAFE6132F4FE7C5AD5026
            EF8AE3E8CA9D48A476C7FCFD24035DDD95714A2B3BD42A6BC242E3792DAAEC7F
            1EAC72022CA35428F71CB2325229E9EF4942B2AEEEB5CBA10BC5D9B55B7C5D95
            29139B09433E78DA8DF364D56B9EEF154141488B17C7B47409929BB7D08830B2
            8E8CB2FC629199A8EA7373C8BD7E15E3BB286CCD02FEE52B640BE7637EF34F76
            5778508DEA051A2277DF3E0CE61F037213C52021C5325478680C0B373D65F5B2
            9B22FEDFC4F8952D32A56411F596D89824A44A8508435B6CAD6D090DF9FF0C56
            665A0E2949C9142DE98DDA5A4A7A6626C16FB27B4546244C027599068D2AF1D3
            A0403A74A98DE2AD307EE478387DC3FCF361F93F9451DA0FE581835855AAC447
            1995366AB4A89A4B918A7C24DBB80EDDABD728036BE787D807B00AB53F5643B1
            F25CC97565EDC63BECDEF1401C4CC97471F1585CA6B45D90CACE906BD429887D
            1F8FB5BD5270C6FF42B0529393F12DEE65D9C1A7D5EB2D3FDF94939D474ABAB2
            D7FB7799434420D6F4F02E4AC7B1DFF04D2D4FEA18637194A40AFA5004DCFFE2
            6DB2F858B46DBE417EFF91850658A48A8F2B08EFA2EB674FC14590DE7D16CB89
            D7791CDA7E8767C72E9983FE9DD246BEDEBF84DD6A1F0FC7E4CC1C237A895680
            A124213601B5DD7F13B04C12936513465A6A3679D9B996F7ACA54A6B6262F50D
            424353BB1A74E9DF829D8F6B60556A372C47D54A5E541494A9B4BB145F1F27CB
            92B644FAD9AFD73CBE0D11EFD08BE29051B622891EC508BDF492A72FA2792288
            EDCD5B51BC0B792F4ECC12E9CFFE8CB3AB624FD52A2EFBB5FA2C634C5426DE9E
            DEE469B548947A94B2FFA660A50BB072B27205D3B646696D23F2909859C14E33
            D364B2F4CC9C466191598D4CBADC7A22EC2A98B79A094E8D5C6D8D979703AEAE
            56E2C6C4110F37B4CE2E42EC28484FCA20FA5504D961D166C66DF6A84CF1792B
            34CB6D5F6FC74BDE9EAACB360ECAE498E814BCBD9DC9C9CB25292E1D1F910BF3
            B4BAFF196039D85B23B7B2264F0853855C825EAB10A0E9C8CACC426BC8432193
            AB4C5259A9D45459698D5E553C392EC61B5422369DDDC10C8A590A1BB304A50D
            B377768D53AB65115E9EF2704DB6F1AD469799EEE2A817FDB90BE66DB224EE98
            F7423615752257934B727CC67F0EACFF6DFF5EFB3F9F3506E2BBA4753C000000
            0049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120190000000000
          Top = 113.385904080000000000
          Width = 710.551618580000000000
          Color = clBlack
          Frame.Color = clGray
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 404.409710000000000000
        Width = 740.409927000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page: [Page#]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = frmDataMod.qAddressTbl
    BCDToCurrency = False
    DataSetOptions = []
    Left = 448
    Top = 216
    FieldDefs = <
      item
        FieldName = 'id'
      end
      item
        FieldName = 'Address'
      end>
  end
  object frxRichObject1: TfrxRichObject
    Left = 328
    Top = 216
  end
end
