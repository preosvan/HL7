unit DMUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DbxSqlite, Data.DB, Data.SqlExpr,
  Data.FMTBcd;

type
  TDM = class(TDataModule)
    SQLConnection: TSQLConnection;
    SQLQuery: TSQLQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses
  Vcl.Dialogs;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  SQLConnection.Params.Values['Database'] :=
    ExtractFilePath(ParamStr(0)) + 'HL7_DB.sqlite';
  SQLConnection.Open;
end;

end.
