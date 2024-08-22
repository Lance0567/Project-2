unit ddoPas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmDDO = class(TForm)
    PanelMain: TPanel;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDDO: TfrmDDO;

implementation

{$R *.dfm}

procedure TfrmDDO.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if (KEY=27) then close;

end;

end.
