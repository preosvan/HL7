unit DMUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DbxSqlite, Data.DB, Data.SqlExpr,
  Data.FMTBcd, IdHL7, IdTCPConnection;

type
  TDM = class(TDataModule)
    SQLConnection: TSQLConnection;
    SQLQuery: TSQLQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FHL7Client: TIdHL7;
    FHL7Server: TIdHL7;
    FSentMsg: string;
    procedure OnReceiveMessage(ASender: TObject; AConnection: TIdTCPConnection;
      AMsg: string; var VHandled: Boolean; var VReply: string);
    procedure HL7ServerInit;
    procedure HL7ClientInit;
  public
    property HL7Client: TIdHL7 read FHL7Client;
    property HL7Server: TIdHL7 read FHL7Server;
    property SentMsg: string read FSentMsg write FSentMsg;
  end;

var
  DM: TDM;

implementation

uses
  Vcl.Dialogs, MedModelConst, MedModel;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  SQLConnection.Params.Values['Database'] :=
    ExtractFilePath(ParamStr(0)) + 'HL7_DB.sqlite';
  SQLConnection.Open;
  HL7ServerInit;
  HL7ClientInit;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  if Assigned(FHL7Server) then
  begin
    if FHL7Server.Going then
      FHL7Server.Stop;
    FHL7Server.Free;
  end;
  if Assigned(FHL7Client) then
  begin
    if FHL7Client.Going then
      FHL7Client.Stop;
    FHL7Client.Free;
  end;
end;

procedure TDM.HL7ClientInit;
begin
  FHL7Client := TIdHL7.Create(Self);
  FHL7Client.CommunicationMode := cmSynchronous;
  FHL7Client.ReceiveTimeout := 4000;
  FHL7Client.TimeOut := 4000;
  FHL7Client.ReconnectDelay := 2000;
  FHL7Client.Address := HL7_SRV_ADDRESS;
  FHL7Client.Port := HL7_PORT;
  FHL7Client.IsListener := False;
  FHL7Client.Start;
end;

procedure TDM.HL7ServerInit;
begin
  FHL7Server := TIdHL7.Create(Self);
  FHL7Server.OnReceiveMessage := OnReceiveMessage;
  FHL7Server.CommunicationMode := cmSynchronous;
  FHL7Server.ReceiveTimeout := 4000;
  FHL7Server.TimeOut := 4000;
  FHL7Server.ReconnectDelay := 2000;
  FHL7Server.Address := '';
  FHL7Server.Port := HL7_PORT;
  FHL7Server.IsListener := True;
  FHL7Server.Start;
end;

procedure TDM.OnReceiveMessage(ASender: TObject; AConnection: TIdTCPConnection;
  AMsg: string; var VHandled: Boolean; var VReply: string);
var
  HL7Message: THL7Message;
begin
  // can't use the memo's directly - in the wrong thread
  FSentMsg := AMsg;
  VHandled := True;

  HL7Message := THL7Message.Create(Trim(SentMsg));
  try
    HL7Message.SaveToDB(DM.SQLQuery);
  finally
    HL7Message.Free;
  end;

  VReply := 'Message is received. Saved to DB';
end;

end.
