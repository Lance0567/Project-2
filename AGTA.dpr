program AGTA;

uses
  Vcl.Forms,
  MainPas in 'MainPas.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles,
  aboutPas in 'aboutPas.pas' {frmAbout},
  dbSettingsPas in 'dbSettingsPas.pas' {frmDatabase},
  dmPas in 'dmPas.pas' {frmDataMod: TDataModule},
  signatoriesPas in 'signatoriesPas.pas' {frmSigna},
  empPas in 'empPas.pas' {frmEmp},
  loginPas in 'loginPas.pas' {frmLogin},
  OthersPas in 'OthersPas.pas' {frmOthers},
  ddoPas in 'ddoPas.pas' {frmDDO},
  prePayrollPas in 'prePayrollPas.pas' {frmPrePayroll},
  OfficialPayrollPas in 'OfficialPayrollPas.pas' {frmOfficialPayroll},
  clientsPas in 'clientsPas.pas' {frmClients},
  dispositionPas in 'dispositionPas.pas' {frmDisposition},
  officeAddressPas in 'officeAddressPas.pas' {frmOffice},
  usersInfoPas in 'usersInfoPas.pas' {frmUsers},
  changeUsersInfoPas in 'changeUsersInfoPas.pas' {frmChangeInfo},
  imageCapturePas in 'imageCapturePas.pas',
  empMainPas in 'empMainPas.pas' {frmEmpMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmEmpMain, frmEmpMain);
  Application.CreateForm(TfrmEmp, frmEmp);
  Application.CreateForm(TfrmOffice, frmOffice);
  Application.CreateForm(TfrmSigna, frmSigna);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmDatabase, frmDatabase);
  Application.CreateForm(TfrmDataMod, frmDataMod);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmOthers, frmOthers);
  Application.CreateForm(TfrmDDO, frmDDO);
  Application.CreateForm(TfrmPrePayroll, frmPrePayroll);
  Application.CreateForm(TfrmOfficialPayroll, frmOfficialPayroll);
  Application.CreateForm(TfrmClients, frmClients);
  Application.CreateForm(TfrmDisposition, frmDisposition);
  Application.CreateForm(TfrmUsers, frmUsers);
  Application.CreateForm(TfrmChangeInfo, frmChangeInfo);
  Application.Run;
end.
