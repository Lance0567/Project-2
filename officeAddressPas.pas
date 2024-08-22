unit officeAddressPas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.ToolWin, System.ImageList, Vcl.ImgList, Vcl.ExtActns, Vcl.StdActns,
  System.Actions, Vcl.ActnList;

type
  TfrmOffice = class(TForm)
    fldAddress: TDBRichEdit;
    btSave: TButton;
    ActionList1: TActionList;
    FormatRichEditBold1: TRichEditBold;
    FormatRichEditAlignLeft1: TRichEditAlignLeft;
    FormatRichEditAlignRight1: TRichEditAlignRight;
    FormatRichEditAlignCenter1: TRichEditAlignCenter;
    FormatRichEditAlignJustify1: TAction;
    EditUndo1: TEditUndo;
    DialogFontEdit1: TFontEdit;
    FormatRichEditItalic1: TRichEditItalic;
    FormatRichEditUnderline1: TRichEditUnderline;
    VtoolBarIcon16: TImageList;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    FontDialog: TFontDialog;
    ToolButton1: TToolButton;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btSaveClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOffice: TfrmOffice;

implementation

{$R *.dfm}

uses dmPas;

procedure TfrmOffice.btSaveClick(Sender: TObject);
begin
     frmDataMod.qAddressTbl.Refresh;
     showMessage('  Record Saved ');
end;

procedure TfrmOffice.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (KEY=27) then close;     
end;

procedure TfrmOffice.ToolButton1Click(Sender: TObject);
begin
     // Set the default font properties
  FontDialog.Font.Name := 'Tahoma';
  FontDialog.Font.Size := 9;
  if FontDialog.Execute then
  begin
    fldAddress.SelAttributes.Assign(FontDialog.Font);
  end;
end;

end.
