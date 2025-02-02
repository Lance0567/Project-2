object frmSigna: TfrmSigna
  AlignWithMargins = True
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'AGTA | Signatories and Position'
  ClientHeight = 219
  ClientWidth = 633
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  TextHeight = 15
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 633
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 629
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 631
      Height = 39
      DataSource = frmDataMod.dSignatoryTbl
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 627
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 633
    Height = 178
    Align = alClient
    DataSource = frmDataMod.dSignatoryTbl
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SignatoryName'
        Title.Caption = 'Signatory Name'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Segoe UI Semibold'
        Title.Font.Style = [fsBold]
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Position'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Segoe UI Semibold'
        Title.Font.Style = [fsBold]
        Width = 280
        Visible = True
      end>
  end
end
