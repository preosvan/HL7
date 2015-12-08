program HL7App;

uses
  Vcl.Forms,
  MainFrm in 'MainFrm.pas' {MainForm},
  DMUnit in 'DMUnit.pas' {DM: TDataModule},
  MedModel in 'MedModel.pas',
  MedUtils in 'MedUtils.pas',
  MedModelConst in 'MedModelConst.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
