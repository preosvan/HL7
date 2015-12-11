unit DMUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DbxSqlite, Data.DB, Data.SqlExpr,
  Data.FMTBcd, IdHL7;

type
  TDM = class(TDataModule)
    SQLConnection: TSQLConnection;
    SQLQuery: TSQLQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FHL7Client: TIdHL7;
    procedure HL7ClientInit;
  public
    property HL7Client: TIdHL7 read FHL7Client;
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
  HL7ClientInit;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  if Assigned(FHL7Client) then
    FHL7Client.Free;
end;

procedure TDM.HL7ClientInit;
begin
  FHL7Client := TIdHL7.Create(Self);
  FHL7Client.CommunicationMode := cmSingleThread;
  FHL7Client.ReceiveTimeout := 4000;
  FHL7Client.TimeOut := 4000;
  FHL7Client.ReconnectDelay := 2000;
  FHL7Client.Address := '';
  FHL7Client.Port := 21;
  FHL7Client.Start;
end;

end.
