unit dispositionPas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmDisposition = class(TForm)
    PanelMain: TPanel;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDisposition: TfrmDisposition;

implementation

{$R *.dfm}

procedure TfrmDisposition.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (key=27) then close;
     
end;

end.
