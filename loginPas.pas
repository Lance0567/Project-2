unit loginPas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  TfrmLogin = class(TForm)
    btLogin: TButton;
    grp1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit2: TDBEdit;
    Image1: TImage;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses aboutPas, dbSettingsPas, dmPas, empPas, MainPas, signatoriesPas;

procedure TfrmLogin.btLoginClick(Sender: TObject);
begin
    frmMain.SystemStatus.Caption := 'System Status: Online';
    frmMain.Login.enabled := false;
    frmMain.Logout.enabled:= true;
    frmMain.UsersCredentials.enabled:= true;
    frmMain.ChangeUsernamePassword.enabled:= true;
    frmMain.Signatories.enabled:= true;
    frmMain.GeolocationSettings.enabled:= true;
    frmMain.Others.Enabled := true;
    frmMain.panelTop.Enabled := true;
    frmLogin.Close;
    ShowMessage( ' Congratulations! Welcome to the system...' );
end;

procedure TfrmLogin.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (KEY=27) then CLOSE;

end;

end.
