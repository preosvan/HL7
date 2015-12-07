program HL7App;

uses
  Vcl.Forms,
  MainFrm in 'MainFrm.pas' {Form1},
  DMUnit in 'DMUnit.pas' {DM: TDataModule},
  MedModel in 'MedModel.pas',
  MedUtils in 'MedUtils.pas',
  MedModelConst in 'MedModelConst.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
