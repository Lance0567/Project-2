unit signatoriesPas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmSigna = class(TForm)
    PanelTop: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSigna: TfrmSigna;

implementation

{$R *.dfm}

uses dmPas;

procedure TfrmSigna.Button1Click(Sender: TObject);
begin
//  // Start a transaction
//  frmDataMod.dbConn.StartTransaction;
//  frmDataMod.qSignatoryTbl.Edit;
//  try
//    // Post the changes to the dataset
//    frmDataMod.qSignatoryTbl.Post;
//    // Commit the transaction
//    frmDataMod.dbConn.Commit;
//    // Refresh the dataset to reflect the changes
//    frmDataMod.qSignatoryTbl.Refresh;
//  except
//    on E: Exception do
//    begin
//      // Rollback the transaction in case of an error
//      frmDataMod.dbConn.Rollback;
//      // Optionally, show an error message
//      ShowMessage('Failed to update the database: ' + E.Message);
//    end;
//  end;
end;




procedure TfrmSigna.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (key=27) then close;

end;

procedure TfrmSigna.FormShow(Sender: TObject);
begin
  dbGrid1.SelectedRows.Clear; // Clear any selected rows
  if not dbGrid1.DataSource.DataSet.IsEmpty then // Check if the dataset is not empty
    dbGrid1.DataSource.DataSet.First; // Move to the first record
end;

end.
