unit dmPas;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList,
  Vcl.VirtualImageList, Vcl.BaseImageCollection, Vcl.ImageCollection,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmDataMod = class(TDataModule)
    ImageCollection1: TImageCollection;
    VirtualImageList24: TVirtualImageList;
    VirtualImageList36: TVirtualImageList;
    dbConn: TFDConnection;
    qSignatoryTbl: TFDQuery;
    dSignatoryTbl: TDataSource;
    qSignatoryTblId: TIntegerField;
    qSignatoryTblSignatoryName: TWideStringField;
    qSignatoryTblPosition: TWideStringField;
    qAddressTbl: TFDQuery;
    dAddressTbl: TDataSource;
    qAddressTblid: TIntegerField;
    qAddressTblAddress: TWideMemoField;
    qEmpTbl: TFDQuery;
    dEmpTbl: TDataSource;
    qEmpTblid: TIntegerField;
    qEmpTblphoto: TBlobField;
    qEmpTblFullname: TWideStringField;
    qEmpTblAddress: TWideStringField;
    qEmpTblSex: TWideStringField;
    qEmpTblMaritalStatus: TWideStringField;
    qEmpTblDOB: TDateField;
    qEmpTblAge: TIntegerField;
    qEmpTblLicensed_no: TWideStringField;
    qEmpTblSSS_no: TWideStringField;
    qEmpTblPhilhealth_no: TWideStringField;
    qEmpTblPagIbig_no: TWideStringField;
    qEmpTblcellphone_no: TWideStringField;
    qEmpTblempInfo: TWideMemoField;
    qEmpTbleduc_attain: TWideMemoField;
    qEmpTblremarks: TWideMemoField;
    qEmpTblinc: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataMod: TfrmDataMod;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses signatoriesPas;

{$R *.dfm}

procedure TfrmDataMod.DataModuleCreate(Sender: TObject);
var
  DBPath: string;
begin

  {
  // Get the directory of the executable
  DBPath := ExtractFilePath(ParamStr(0)) + 'database\sqlite.db';
  // Set the connection parameters
  dbConn.Params.Values['DriverID'] := 'SQLite';
  dbconn.Params.Values['Database'] := DBPath;
  // Open the connection
  dbConn.Connected := True;

  qSignatoryTbl.Active := True;   //table query
  }


end;

end.
