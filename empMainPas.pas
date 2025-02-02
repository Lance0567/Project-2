unit empMainPas;

interface

uses
  ShellAPI, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, AdvCustomFilterPanel, AdvDBFilterPanel, ADODB,
  advgridfilterpanel, Vcl.DBCGrids, AdvUtil, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, frxSmartMemo, frxClass, frCoreClasses, frxDBSet, frxRich;


type
  TfrmEmpMain = class(TForm)
    PanelLeft: TPanel;
    dbGridEmp: TDBGrid;
    PanelTop: TPanel;
    btAdd: TButton;
    btDele: TButton;
    btFind: TButton;
    GroupBox1: TGroupBox;
    fldPhoto: TDBImage;
    btRefresh: TButton;
    GroupBox2: TGroupBox;
    EditFullName: TEdit;
    include: TEdit;
    DBNavigator1: TDBNavigator;
    btExport: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxRichObject1: TfrxRichObject;

    procedure btAddClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbGridEmpDblClick(Sender: TObject);
    procedure btDeleClick(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure EditFullNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditFullNameClick(Sender: TObject);
    procedure includeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure includeClick(Sender: TObject);
    procedure btExportClick(Sender: TObject);
    procedure dbGridEmpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpMain: TfrmEmpMain;

implementation

{$R *.dfm}

uses empPas, dmPas;

procedure TfrmEmpMain.btAddClick(Sender: TObject);
var  IsNewRecord: Boolean;
begin
    frmEmpMain.DBNavigator1.DataSource.DataSet.First;
    frmEmpMain.DBNavigator1.DataSource.DataSet.Open;
    frmEmpMain.DBNavigator1.DataSource.DataSet.Insert;

    IsNewRecord := True;
    frmEmp.ShowModal;

    if IsNewRecord then
      frmEmpMain.DBNavigator1.DataSource.DataSet.First  // Move the record pointer to the last record if a new record was added
    else
    dbGridEmp.setfocus;
    //frmEmpMain.DBNavigator1.DataSource.DataSet.First;  // Otherwise, move the record pointer to the first record


end;



procedure TfrmEmpMain.btDeleClick(Sender: TObject);
var
  Response: Integer;
begin
  // Display a confirmation dialog
  Response := MessageDlg('Are you sure you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0);
  // Check the user's response
  if Response = mrYes then
  begin
    // Proceed with deletion if the user clicked Yes
    frmDataMod.qEmpTbl.Delete;
    // Move to the next available row, if there are remaining rows
    if not frmDataMod.qEmpTbl.EOF then
      frmDataMod.qEmpTbl.first
    else if not frmDataMod.qEmpTbl.BOF then
      frmDataMod.qEmpTbl.Last;

    // Optionally, display a message confirming deletion
    MessageBox(0, 'Record deleted.', 'Main Form', MB_OK);
  end
  else
  begin
    // Optionally, display a message if the user clicked No
    MessageBox(0, 'Deletion cancelled.', 'Main Form', MB_OK);
  end;
end;



procedure TfrmEmpMain.btExportClick(Sender: TObject);
begin
      frxReport1.ShowReport(true);

end;



procedure TfrmEmpMain.btFindClick(Sender: TObject);
var
  fullName: string;
  inc: string;
begin
  // Get the values from the TEdit components
  fullName := EditFullName.Text;
  inc := include.Text; // Assuming you have a TEdit component named EditInc
  // Set up the SQL query with parameters
  frmDataMod.qEmpTbl.SQL.Text := 'SELECT * FROM empTbl WHERE fullname LIKE :FullName AND inc LIKE :Inc ORDER BY id DESC';
  // Set the parameter values
  frmDataMod.qEmpTbl.ParamByName('FullName').AsString := '%' + fullName + '%';
  frmDataMod.qEmpTbl.ParamByName('Inc').AsString := '%' + inc + '%';
  // Execute the query
  frmDataMod.qEmpTbl.Open;
  // Check if any records are found
  if frmDataMod.qEmpTbl.RecordCount = 0 then
  begin
    ShowMessage('No records found.');
  end;
end;











procedure TfrmEmpMain.btRefreshClick(Sender: TObject);
begin
     EditFullName.Clear;
     Include.Clear;
     frmDataMod.qEmpTbl.Refresh;
     dbGridEmp.Refresh;
     frmEmpMain.dbGridEmp.SelectedIndex;
     //frmEmpMain.dbGridEmp.setfocus;

end;

procedure TfrmEmpMain.dbGridEmpDblClick(Sender: TObject);
begin
     frmEmp.ShowModal;
end;

procedure TfrmEmpMain.dbGridEmpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (key = 13)  then
     Begin
          frmEmp.ShowModal;
     End;
     if (key = 27)  then
     Begin
          close;
     End;

end;

procedure TfrmEmpMain.EditFullNameClick(Sender: TObject);
begin
     EditFullName.Clear;
end;

procedure TfrmEmpMain.EditFullNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (key=13) then
     Begin
          btFind.Click;
     End;
end;

procedure TfrmEmpMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//     if (key=27) then
//     begin
//        close;
//     end;

if (key=116) then
     begin
         showMessage(' system refresh...');
         frmEmpMain.btRefresh.Click;
     end;
end;

procedure TfrmEmpMain.includeClick(Sender: TObject);
begin
     include.Clear;
end;

procedure TfrmEmpMain.includeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (key=13) then
     Begin
          btFind.Click;
     End;
end;

end.
