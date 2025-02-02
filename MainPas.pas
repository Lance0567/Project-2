unit MainPas;

interface

uses
  ShellApi,
  MMSystem,   // to play audio file....
  IniFiles,
  System.IOUtils,

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Themes, // for cbTHeme controls....
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.ToolWin;



type
  TfrmMain = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    About1: TMenuItem;
    AGTASecurityForce1: TMenuItem;
    UsersCredentials: TMenuItem;
    ChangeUsernamePassword: TMenuItem;
    ChangeUsernamePassword2: TMenuItem;
    Signatories: TMenuItem;
    GeolocationSettings: TMenuItem;
    GeolocationSettings2: TMenuItem;
    ImgLogo: TImage;
    DatabaseSettings: TMenuItem;
    Login: TMenuItem;
    Logout: TMenuItem;
    SystemStatus: TMenuItem;
    PanelTop: TToolBar;
    btMod1: TButton;
    btMod2: TButton;
    btMod3: TButton;
    btMod4: TButton;
    btMod6: TButton;
    ToolButton1: TToolButton;
    btMod5: TButton;
    Others: TMenuItem;
    PanelTop1: TPanel;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    SystemRefresh1: TMenuItem;
    cbTheme: TComboBox;
    procedure AGTASecurityForce1Click(Sender: TObject);
    procedure DatabaseSettingsClick(Sender: TObject);
    procedure SignatoriesClick(Sender: TObject);
    procedure EmployeesProfileClick(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure LoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LogoutClick(Sender: TObject);
    procedure btMod1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure OthersClick(Sender: TObject);
    procedure cbThemeChange(Sender: TObject);
    procedure btMod2Click(Sender: TObject);
    procedure btMod3Click(Sender: TObject);
    procedure btMod4Click(Sender: TObject);
    procedure btMod5Click(Sender: TObject);
    procedure btMod6Click(Sender: TObject);
    procedure GeolocationSettingsClick(Sender: TObject);
    procedure UsersCredentialsClick(Sender: TObject);
    procedure ChangeUsernamePasswordClick(Sender: TObject);
    procedure SystemRefresh1Click(Sender: TObject);
  private
    { Private declarations }
    MutexHandle: THandle;    // to trap another load of application instance reserved function....
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses aboutPas, dbSettingsPas, dmPas, signatoriesPas, empPas, loginPas,
  OthersPas, ddoPas, prePayrollPas, OfficialPayrollPas, clientsPas,
  dispositionPas, officeAddressPas, usersInfoPas, changeUsersInfoPas,
  empMainPas;

procedure TfrmMain.AGTASecurityForce1Click(Sender: TObject);
begin
     frmAbout.ShowModal;
end;

procedure TfrmMain.SignatoriesClick(Sender: TObject);
begin
     frmSigna.ShowModal;
end;

procedure TfrmMain.SystemRefresh1Click(Sender: TObject);
begin
     PlaySound('./audio/sssh.wav', 0, SND_FILENAME or SND_ASYNC);
end;

procedure TfrmMain.UsersCredentialsClick(Sender: TObject);
begin
     frmUsers.ShowModal;
end;

procedure TfrmMain.btMod1Click(Sender: TObject);
begin
     frmEmpMain.ShowModal;
end;

procedure TfrmMain.btMod2Click(Sender: TObject);
begin
     frmDDO.ShowModal;
end;

procedure TfrmMain.btMod3Click(Sender: TObject);
begin
     frmPrePayroll.ShowModal;
end;

procedure TfrmMain.btMod4Click(Sender: TObject);
begin
     frmOfficialPayroll.ShowModal;
end;

procedure TfrmMain.btMod5Click(Sender: TObject);
begin
     frmClients.ShowModal;
end;

procedure TfrmMain.btMod6Click(Sender: TObject);
begin
      frmDisposition.ShowModal;
end;

procedure TfrmMain.cbThemeChange(Sender: TObject);
begin
      TStyleManager.SetStyle(cbTheme.Text); // TO CHANGE THE THEME.....
      sleep(100);
      doubleBuffered := true;
      frmMain.SystemStatus.Caption := 'System Status: Offline ';
      //
      Login.enabled := true;
      Logout.enabled := false;
      UsersCredentials.enabled:= false;
      ChangeUsernamePassword.enabled:= false;
      Signatories.enabled:= false;
      GeolocationSettings.enabled:= false;
      Others.Enabled := false;
      panelTop.Enabled := false;

end;

procedure TfrmMain.ChangeUsernamePasswordClick(Sender: TObject);
begin
      frmChangeInfo.ShowModal;
end;

procedure TfrmMain.DatabaseSettingsClick(Sender: TObject);
begin
    frmDatabase.ShowModal;
end;

procedure TfrmMain.EmployeesProfileClick(Sender: TObject);
begin
     frmEmp.ShowModal;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  StyleName: string;

begin
      sleep(100);
      PlaySound('./audio/entrance1.wav', 0, SND_FILENAME or SND_ASYNC);


      // to trap another load of application instance .................
      MutexHandle := CreateMutex(nil, True, 'AGTA');
      if GetLastError = ERROR_ALREADY_EXISTS then
      begin
         ShowMessage('(: Another instance of this application is already running.' +#13#10+ '   Mayroon na po naka open na AGTA system.' +#13#10+ '   :) Pa check na lang sa Taskbar!');
         frmMain.WindowState := wsMinimized;
         doublebuffered:= true;
         Application.Terminate;
      end;







  //code for theme styler............
     for StyleName in TStyleManager.StyleNames do
     cbTheme.Items.Add(StyleName);
     cbTheme.ItemIndex := cbTheme.Items.IndexOf(TStyleManager.ActiveStyle.Name);
  //
  ControlStyle := ControlStyle + [csOpaque] - [csParentBackground];

  //cbTheme := TComboBox.Create(Self);
  cbTheme.Parent := Self;
  cbTheme.Top := 12; // Position 10 pixels from the top
  cbTheme.Left := Self.ClientWidth - cbTheme.Width - 10; // Position 10 pixels from the right
  cbTheme.Anchors := [akTop, akRight]; // Anchor to the top and right edges


  SystemStatus.Caption := 'System Status: Offline';
  Login.enabled := true;
  Logout.enabled := false;
  UsersCredentials.enabled:= false;
  ChangeUsernamePassword.enabled:= false;
  Signatories.enabled:= false;
  GeolocationSettings.enabled:= false;
  Others.Enabled := false;
  panelTop.Enabled := false;

end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
     if (frmMain.Width < 900) and (frmMain.Height < 755) then
     begin
        frmMain.ImgLogo.Proportional := true;
     end else
     frmMain.ImgLogo.Proportional := false;


end;

procedure TfrmMain.GeolocationSettingsClick(Sender: TObject);
begin
     frmOffice.ShowModal;
end;

procedure TfrmMain.LoginClick(Sender: TObject);
begin
     frmLogin.ShowModal;
end;

procedure TfrmMain.LogoutClick(Sender: TObject);
begin
    ShowMessage(' System Logout! See you again... ');
    SystemStatus.Caption := 'System Status: Offline';
    Login.enabled := true;
    Logout.enabled := false;
    UsersCredentials.enabled:= false;
    ChangeUsernamePassword.enabled:= false;
    Signatories.enabled:= false;
    GeolocationSettings.enabled:= false;
    Others.Enabled := false;
    panelTop.Enabled := false;
end;

procedure TfrmMain.OthersClick(Sender: TObject);
begin
  frmOthers.ShowModal;
end;

procedure TfrmMain.Refresh1Click(Sender: TObject);
begin
     ShowMessage(' System Refresh! ');
end;

end.
