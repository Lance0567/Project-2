unit dbSettingsPas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls;

type
  TfrmDatabase = class(TForm)
    ToolBar1: TToolBar;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatabase: TfrmDatabase;

implementation

{$R *.dfm}

procedure TfrmDatabase.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (key=27) then close;
     
end;

end.
