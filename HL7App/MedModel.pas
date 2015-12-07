unit MedModel;

interface

uses
  System.Classes,
  MedModelConst;

type
  THL7Segment = class(Tobject)
  private
    FMsgText: TStrings;
    function GetHL7SegmentName: string;
  published
    constructor Create(AMsgText: string);
    destructor Destroy; override;
    function GetValue(AIdxElement: Integer): string;
    property MsgText: TStrings read FMsgText;
    property HL7SegmentName: string read GetHL7SegmentName;
  end;

  //Message Header
  TMSH = class(THL7Segment)

  end;

  //Patient Identification
  TPID = class(THL7Segment)
  private
    function GetDTBirth: TDateTime;
    function GetAddress: string;
    function GetCountyCode: string;
    function GetDriverLicNumb: string;
    function GetGender: string;
    function GetMaritalStatus: string;
    function GetMothMaidenName: string;
    function GetPatientID: Integer;
    function GetPatientIDAlt: Integer;
    function GetPatientIDExt: Integer;
    function GetPatientIDInt: Integer;
    function GetPatientName: string;
    function GetPhoneNumbBusiness: string;
    function GetPhoneNumbHome: string;
    function GetPrimaryLanguage: string;
    function GetRace: string;
    function GetReligion: string;
    function GetSSNNumb: string;
    function GetPatientAlias: string;
  public
    property PatientID: Integer read GetPatientID;
    property PatientIDExt: Integer read GetPatientIDExt;
    property PatientIDInt: Integer read GetPatientIDInt;
    property PatientIDAlt: Integer read GetPatientIDAlt;
    property PatientName: string read GetPatientName;
    property MothMaidenName: string read GetMothMaidenName;
    property DTBirth: TDateTime read GetDTBirth;
    property Gender: string read GetGender;
    property PatientAlias: string read GetPatientAlias;
    property Race: string read GetRace;
    property Address: string read GetAddress;
    property CountyCode: string read GetCountyCode;
    property PhoneNumbHome: string read GetPhoneNumbHome;
    property PhoneNumbBusiness: string read GetPhoneNumbBusiness;
    property PrimaryLanguage: string read GetPrimaryLanguage;
    property MaritalStatus: string read GetMaritalStatus;
    property Religion: string read GetReligion;
    property SSNNumb: string read GetSSNNumb;
    property DriverLicNumb: string read GetDriverLicNumb;
  end;

  TPatient = class(TPID)
  private
    function GetSurname: string;
    function GetFirstname: string;
    function GetInitials: string;
    function GetAddress1: string;
    function GetAddress2: string;
    function GetCity: string;
    function GetPostalCode: string;
    function GetProvinceCode: string;
    function GetSEERCountryGeocode: string;
  public
    //Name
    property Surname: string read GetSurname;
    property Firstname: string read GetFirstname;
    property Initials: string read GetInitials;
    //Address
    property Address1: string read GetAddress1;
    property Address2: string read GetAddress2;
    property City: string read GetCity;
    property ProvinceCode: string read GetProvinceCode;
    property PostalCode: string read GetPostalCode;
    property SEERCountryGeocode: string read GetSEERCountryGeocode;
  end;

  //Observation Report
  TOBR = class(THL7Segment)

  end;

  //
  TOBX = class(THL7Segment)

  end;

  THL7Message = class
  private
    FMSH: TMSH;
    FOBR: TOBR;
    FPID: TPID;
    FOBX: TOBX;
  public
    constructor Create(AMsg: TStringList);
    destructor Destroy; override;
    property MSH: TMSH read FMSH;
    property PID: TPID read FPID;
    property OBR: TOBR read FOBR;
    property OBX: TOBX read FOBX;
  end;

implementation

uses
  System.SysUtils, MedUtils;

{ TPatient }

function TPID.GetAddress: string;
begin
  Result := GetValue(Integer(pidePatientAddress));
end;

function TPID.GetCountyCode: string;
begin
  Result := GetValue(Integer(pideCountyCode));
end;

function TPID.GetDriverLicNumb: string;
begin
  Result := GetValue(Integer(pideDriverLicenseNumber));
end;

function TPID.GetDTBirth: TDateTime;
begin
  Result := MedDateStrToDate(GetValue(Integer(pideDateBirth)));
end;

function TPID.GetGender: string;
begin
  Result := GetValue(Integer(pideSex));
end;

function TPID.GetMaritalStatus: string;
begin
  Result := GetValue(Integer(pideMaritalStatus));
end;

function TPID.GetMothMaidenName: string;
begin
  Result := GetValue(Integer(pideMothMaidenName));
end;

function TPID.GetPatientAlias: string;
begin
  Result := GetValue(Integer(pidePatientAlias));
end;

function TPID.GetPatientID: Integer;
begin
  Result := StrToIntDef(GetValue(Integer(pidePatientID)), 0);
end;

function TPID.GetPatientIDAlt: Integer;
begin
  Result := StrToIntDef(GetValue(Integer(pidePatientIDAlt)), 0);
end;

function TPID.GetPatientIDExt: Integer;
begin
  Result := StrToIntDef(GetValue(Integer(pidePatientIDExt)), 0);
end;

function TPID.GetPatientIDInt: Integer;
begin
  Result := StrToIntDef(GetValue(Integer(pidePatientIDInt)), 0);
end;

function TPID.GetPatientName: string;
begin
  Result := GetValue(Integer(pidePatientName));
end;

function TPID.GetPhoneNumbBusiness: string;
begin
  Result := GetValue(Integer(pidePhoneNumberBusiness));
end;

function TPID.GetPhoneNumbHome: string;
begin
  Result := GetValue(Integer(pidePhoneNumberHome));
end;

function TPID.GetPrimaryLanguage: string;
begin
  Result := GetValue(Integer(pidePrimaryLanguage));
end;

function TPID.GetRace: string;
begin
  Result := GetValue(Integer(pideRace));
end;

function TPID.GetReligion: string;
begin
  Result := GetValue(Integer(pideReligion));
end;

function TPID.GetSSNNumb: string;
begin
  Result := GetValue(Integer(pideSSNNumber));
end;

{ TPatient }

function TPatient.GetAddress1: string;
begin
  Result := GetSubElement(Address, '^', Integer(psaAddress1));
end;

function TPatient.GetAddress2: string;
begin
  Result := GetSubElement(Address, '^', Integer(psaAddress2));
end;

function TPatient.GetCity: string;
begin
  Result := GetSubElement(Address, '^', Integer(psaCity));
end;

function TPatient.GetFirstname: string;
begin
  Result := GetSubElement(PatientName, '^', Integer(psnFirstName));
end;

function TPatient.GetInitials: string;
begin
  Result := GetSubElement(PatientName, '^', Integer(psnInitials));
end;

function TPatient.GetPostalCode: string;
begin
  Result := GetSubElement(Address, '^', Integer(psaPostalCode));
end;

function TPatient.GetProvinceCode: string;
begin
  Result := GetSubElement(Address, '^', Integer(psaProvinceCode));
end;

function TPatient.GetSEERCountryGeocode: string;
begin
  Result := GetSubElement(Address, '^', Integer(psaSEERCountryGeocode));
end;

function TPatient.GetSurname: string;
begin
  Result := GetSubElement(PatientName, '^', Integer(psnSurname));
end;

{ THL7Segment }

constructor THL7Segment.Create(AMsgText: string);
begin
  FMsgText := TStringList.Create;
  FMsgText.Delimiter := '|';
  FMsgText.DelimitedText := AMsgText;
end;

destructor THL7Segment.Destroy;
begin
  if Assigned(FMsgText) then
    FMsgText.Free;
  inherited;
end;

function THL7Segment.GetHL7SegmentName: string;
begin
  Result := GetValue(0);
end;

function THL7Segment.GetValue(AIdxElement: Integer): string;
begin
  Result := EmptyStr;
  if MsgText.Count > AIdxElement  then
    Result := MsgText[AIdxElement];
end;

{ THL7Message }

constructor THL7Message.Create(AMsg: TStringList);
begin
  if AMsg.Count > 3 then
  begin
    FMSH := TMSH.Create(AMsg[0]);
    FPID := TPID.Create(AMsg[1]);
    FOBR := TOBR.Create(AMsg[2]);
    FOBX := TOBX.Create(AMsg[3]);
  end;
end;

destructor THL7Message.Destroy;
begin
  if Assigned(FMSH) then
    FMSH.Free;
  if Assigned(FPID) then
    FPID.Free;
  if Assigned(FOBR) then
    FOBR.Free;
  if Assigned(FOBX) then
    FOBX.Free;
  inherited;
end;

end.
