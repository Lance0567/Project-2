unit empPas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask,
  Data.DB, Vcl.ExtDlgs, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  IBX.IBFilterDialog, AdvCustomFilterPanel, AdvDBFilterPanel,
  DateUtils;
type
  TfrmEmp = class(TForm)
    PanelMain: TPanel;
    PanelMain2: TPanel;
    GroupBox1: TGroupBox;
    btUpload: TButton;
    btDelete: TButton;
    fldPhoto: TDBImage;
    btPicture: TButton;
    fullname: TGroupBox;
    fldFullname: TDBEdit;
    address: TGroupBox;
    fldAddress: TDBEdit;
    GroupBox2: TGroupBox;
    fldSex: TDBComboBox;
    GroupBox3: TGroupBox;
    fldMaritalStatus: TDBComboBox;
    GroupBox4: TGroupBox;
    dob: TDateTimePicker;
    GroupBox5: TGroupBox;
    fldAge: TDBEdit;
    GroupBox6: TGroupBox;
    fldLicense: TDBEdit;
    GroupBox7: TGroupBox;
    fldSSS: TDBEdit;
    GroupBox8: TGroupBox;
    fldPhilHealth: TDBEdit;
    GroupBox9: TGroupBox;
    fldPagibig: TDBEdit;
    GroupBox10: TGroupBox;
    fldCellphone: TDBEdit;
    GroupBox11: TGroupBox;
    fldEmpInfo: TDBRichEdit;
    GroupBox12: TGroupBox;
    fldEduc: TDBRichEdit;
    GroupBox13: TGroupBox;
    fldRemarks: TDBRichEdit;
    OpenPictureDialog: TOpenPictureDialog;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    btSave: TButton;
    DBNavigator1: TDBNavigator;
    DBCheckBox1: TDBCheckBox;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btPictureClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btUploadClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure dobChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmp: TfrmEmp;

implementation

{$R *.dfm}

uses dmPas, imageCapturePas, empMainPas;

procedure TfrmEmp.btPictureClick(Sender: TObject);
begin

    frmEmp.DBNavigator1.DataSource.DataSet.Edit;
    TBlobField(DBnavigator1.DataSource.DataSet.FieldByName('Photo')).AsVariant := null;
    fx_imageCapture(Sender, 'Employee');
end;

procedure TfrmEmp.btDeleteClick(Sender: TObject);
begin
     frmEmp.DBNavigator1.DataSource.DataSet.Edit;
     TBlobField(DBnavigator1.DataSource.DataSet.FieldByName('Photo')).AsVariant := null;
end;

procedure TfrmEmp.btUploadClick(Sender: TObject);
var
  BlobField_Photo: TBlobField;
  RelativePath: string;
begin
  // Set the initial directory to the relative path
  RelativePath := ExtractFilePath(Application.ExeName) + 'tempBg';
  OpenPictureDialog.InitialDir := RelativePath;
  // Check if the OpenPictureDialog executed successfully
  if OpenPictureDialog.Execute then
  begin
    // Check if a file was selected
    if OpenPictureDialog.FileName <> '' then
    begin
      try
        // Begin editing the dataset
        DBNavigator1.DataSource.DataSet.Edit;
        // Get the TBlobField from the dataset
        BlobField_Photo := TBlobField(DBNavigator1.DataSource.DataSet.FieldByName('Photo'));
        // Load the image file into the blob field
        BlobField_Photo.LoadFromFile(OpenPictureDialog.FileName);
        // Post the changes to the dataset
        DBNavigator1.DataSource.DataSet.Post;
        // Refresh the dataset to reflect the changes
        DBNavigator1.DataSource.DataSet.Refresh;
      except
        on E: Exception do
          // Show a message if an error occurs
          ShowMessage('An error occurred while uploading the file: ' + E.Message);
      end;
    end;
  end;
end;


procedure TfrmEmp.dobChange(Sender: TObject);
var
  Years, Months, Days: Word;
  Age: Integer;
begin
  DecodeDate(Date, Years, Months, Days); // Get the current date
  fldAge.Text := IntToStr(Years - YearOf(dob.Date)); // Calculate the age and convert it to string
end;


procedure TfrmEmp.FormClose(Sender: TObject; var Action: TCloseAction);
Var
FrameFilePath, Path : string;
begin
     // to delete captured image......
     FrameFilePath := Path + 'frame.bmp';
     if FileExists(FrameFilePath) then
        DeleteFile(FrameFilePath);
     //--------------------------------

     frmDataMod.qEmpTbl.Cancel;   /// dont add any alteration in the database...
     frmEmpMain.btRefresh.Click;
     frmEmpMain.dbGridEmp.SelectedIndex;
end;

procedure TfrmEmp.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=27) then close;
end;

procedure TfrmEmp.FormShow(Sender: TObject);
var  IsNewRecord: Boolean;
begin
    doubleBuffered := true;
    doubleBuffered := true;
end;




Procedure TfrmEmp.btSaveClick(Sender: TObject);
var
  DataSet: TDataSet;
  BlobField: TBlobField;
  Stream: TMemoryStream;
  FrameFilePath : string;
begin
  DataSet := frmEmp.DBNavigator1.DataSource.DataSet;
  DataSet.Edit;

  // Load the captured image
      if FileExists(FrameFilePath) then
        begin
          frmEmp.fldPhoto.Picture.LoadFromFile(FrameFilePath);
          frmEmp.fldPhoto.Repaint;
        end;

  // Check if the image component contains an image
  if frmEmp.fldPhoto.Picture.Graphic = nil then
  begin
    MessageBox(0, 'No image to save!', 'Error', MB_OK or MB_ICONERROR);
    Exit;
  end;
  // Get the blob field
  BlobField := DataSet.FieldByName('photo') as TBlobField;
  // Ensure the blob field is valid
  if BlobField = nil then
  begin
    MessageBox(0, 'Blob field "photo" not found!', 'Error', MB_OK or MB_ICONERROR);
    Exit;
  end;
  // Save the image to the blob field
  Stream := TMemoryStream.Create;
  try
    frmEmp.fldPhoto.Picture.Graphic.SaveToStream(Stream);
    Stream.Position := 0;
    BlobField.LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
  // Post the changes to the database

  DataSet.Post;
  //frmEmp.DBNavigator1.DataSource.DataSet.First;
  DataSet.Refresh;
  frmDataMod.qEmpTbl.Refresh;



  MessageBox(0, 'Record Saved!', 'Main Form', MB_OK);


  frmEmpMain.dbGridEmp.SelectedIndex;
  frmEmpMain.dbGridEmp.SetFocus;
  //frmEmp.Close;
  //frmEmpMain.dbGridEmp.setfocus;
end;



    // Resize and save the image to the database
  //////SaveResizedImageToDatabase(fMainFrm.DBImage1, 200, 200, BlobField); // Adjust NewWidth and NewHeight as needed

END.
