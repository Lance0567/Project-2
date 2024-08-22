object frmChangeInfo: TfrmChangeInfo
  AlignWithMargins = True
  Left = 0
  Top = 0
  Cursor = crHandPoint
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'USERS CHANGE INFO. CREDENTIALS'
  ClientHeight = 252
  ClientWidth = 262
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poOwnerFormCenter
  OnKeyUp = FormKeyUp
  TextHeight = 15
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 242
    Height = 48
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Align = alTop
    Caption = 'Current Password'
    ShowFrame = False
    TabOrder = 0
    ExplicitWidth = 256
    object DBEdit1: TDBEdit
      Left = 2
      Top = 17
      Width = 238
      Height = 28
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 256
    end
  end
  object GroupBox3: TGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 64
    Width = 242
    Height = 48
    Margins.Left = 10
    Margins.Right = 10
    Align = alTop
    Caption = 'Confirm Password'
    ShowFrame = False
    TabOrder = 1
    ExplicitWidth = 256
    object DBEdit3: TDBEdit
      Left = 2
      Top = 17
      Width = 238
      Height = 28
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 0
      ExplicitWidth = 256
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 118
    Width = 242
    Height = 48
    Margins.Left = 10
    Margins.Right = 10
    Align = alTop
    Caption = 'New Password'
    ShowFrame = False
    TabOrder = 2
    ExplicitWidth = 256
    object DBEdit2: TDBEdit
      Left = 2
      Top = 17
      Width = 238
      Height = 28
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 0
      ExplicitWidth = 256
    end
  end
  object btOkay: TButton
    AlignWithMargins = True
    Left = 50
    Top = 172
    Width = 162
    Height = 25
    Margins.Left = 50
    Margins.Right = 50
    Align = alTop
    Caption = 'Okay'
    TabOrder = 3
    ExplicitTop = 181
    ExplicitWidth = 176
  end
  object btCancel: TButton
    AlignWithMargins = True
    Left = 50
    Top = 203
    Width = 162
    Height = 26
    Margins.Left = 50
    Margins.Right = 50
    Align = alTop
    Caption = 'Cancel'
    TabOrder = 4
    ExplicitTop = 212
    ExplicitWidth = 176
  end
end
