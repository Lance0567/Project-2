unit usersInfoPas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmUsers = class(TForm)
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsers: TfrmUsers;

implementation

{$R *.dfm}

procedure TfrmUsers.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (KEY=27) Then close;

end;

end.
