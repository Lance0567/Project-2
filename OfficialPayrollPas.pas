unit OfficialPayrollPas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmOfficialPayroll = class(TForm)
    PanelmMain: TPanel;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOfficialPayroll: TfrmOfficialPayroll;

implementation

{$R *.dfm}

procedure TfrmOfficialPayroll.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (KEY=27) then close;
      
end;

end.
