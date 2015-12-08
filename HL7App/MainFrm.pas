unit MainFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMainForm = class(TForm)
    meMsg: TMemo;
    meParse: TMemo;
    btnMSH: TButton;
    pnBottom: TPanel;
    btnPatient: TButton;
    btnOBR: TButton;
    btnOBX: TButton;
    procedure btnMSHClick(Sender: TObject);
    procedure btnPatientClick(Sender: TObject);
    procedure btnOBRClick(Sender: TObject);
    procedure btnOBXClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
  MedModel;

{$R *.dfm}

procedure TMainForm.btnMSHClick(Sender: TObject);
var
  MSH: TMSH;
begin
  MSH := TMSH.Create(meMsg.Lines[0]);
  try
    meParse.Clear;
    meParse.Lines.Add(MSH.ToString);
  finally
    MSH.Free;
  end;
end;

procedure TMainForm.btnOBRClick(Sender: TObject);
var
  OBR: TOBR;
begin
  OBR := TOBR.Create(meMsg.Lines[2]);
  try
    meParse.Clear;
    meParse.Lines.Add(OBR.ToString);
  finally
    OBR.Free;
  end;
end;

procedure TMainForm.btnOBXClick(Sender: TObject);
var
  OBX: TOBX;
begin
  OBX := TOBX.Create(meMsg.Lines[3]);
  try
    meParse.Clear;
    meParse.Lines.Add(OBX.ToString);
  finally
    OBX.Free;
  end;
end;

procedure TMainForm.btnPatientClick(Sender: TObject);
var
  Patient: TPatient;
begin
  Patient := TPatient.Create(meMsg.Lines[1]);
  try
    meParse.Lines.Clear;
    meParse.Lines.Add(Patient.ToString);
    meParse.Lines.Add('==============================');
    meParse.Lines.Add(Patient.HL7SegmentName);
    meParse.Lines.Add('==============================');
    meParse.Lines.Add(Patient.PatientID);
    meParse.Lines.Add(Patient.PatientIDExt);
    meParse.Lines.Add(Patient.PatientIDInt);
    meParse.Lines.Add(Patient.PatientIDAlt);
    meParse.Lines.Add('==============================');
    meParse.Lines.Add(Patient.PatientName);
    meParse.Lines.Add(Patient.Surname);
    meParse.Lines.Add(Patient.Firstname);
    meParse.Lines.Add(Patient.Initials);
    meParse.Lines.Add('==============================');
    meParse.Lines.Add(Patient.MothMaidenName);
    meParse.Lines.Add(DateTimeToStr(Patient.DTBirth));
    meParse.Lines.Add(Patient.Gender);
    meParse.Lines.Add(Patient.PatientAlias);
    meParse.Lines.Add(Patient.Race);
    meParse.Lines.Add('==============================');
    meParse.Lines.Add(Patient.Address);
    meParse.Lines.Add(Patient.Address1);
    meParse.Lines.Add(Patient.Address2);
    meParse.Lines.Add(Patient.City);
    meParse.Lines.Add(Patient.ProvinceCode);
    meParse.Lines.Add(Patient.PostalCode);
    meParse.Lines.Add(Patient.SEERCountryGeocode);
    meParse.Lines.Add('==============================');
    meParse.Lines.Add(Patient.PhoneNumbHome);
    meParse.Lines.Add(Patient.PhoneNumbBusiness);
    meParse.Lines.Add(Patient.PrimaryLanguage);
    meParse.Lines.Add(Patient.MaritalStatus);
    meParse.Lines.Add(Patient.Religion);
    meParse.Lines.Add(Patient.DriverLicNumb);
  finally
    Patient.Free;
  end;
end;

end.


