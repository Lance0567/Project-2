unit changeUsersInfoPas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TfrmChangeInfo = class(TForm)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    btOkay: TButton;
    btCancel: TButton;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChangeInfo: TfrmChangeInfo;

implementation

{$R *.dfm}

procedure TfrmChangeInfo.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (key=27) then close;
     
end;

end.
