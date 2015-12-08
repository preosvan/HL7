unit MedModel;

interface

uses
  System.Classes,
  MedModelConst;

type
  THL7Segment = class
  private
    FMsgText: TStrings;
    function GetHL7SegmentName: string;
  published
    constructor Create(AMsgText: string);
    destructor Destroy; override;
    function GetValue(AIdxElement: Integer): string;
    function ToString: string; override;
    property MsgText: TStrings read FMsgText;
    property HL7SegmentName: string read GetHL7SegmentName;
  end;

  //Message Header
  TMSH = class(THL7Segment)
  private
    function GetAcceptAcknowledgmentType: string;
    function GetApplicationAcknowledgmentType: string;
    function GetCharacterSet: string;
    function GetContinuationPointer: string;
    function GetCountryCode: string;
    function GetDateTimeMsg: TDateTime;
    function GetEncodingCharacters: string;
    function GetMessageControlID: string;
    function GetMessageType: string;
    function GetPrincipalLangMsg: string;
    function GetProcessingID: string;
    function GetReceivingApp: string;
    function GetReceivingFacility: string;
    function GetSecurity: string;
    function GetSendingApp: string;
    function GetSendingFacility: string;
    function GetSequenceNumber: string;
    function GetVersionID: string;
  public
    function ToString: string; override;
    property EncodingCharacters: string read GetEncodingCharacters;
    property SendingApp: string read GetSendingApp;
    property SendingFacility: string read GetSendingFacility;
    property ReceivingApp: string read GetReceivingApp;
    property ReceivingFacility: string read GetReceivingFacility;
    property DateTimeMsg: TDateTime read GetDateTimeMsg;
    property Security: string read GetSecurity;
    property MessageType: string read GetMessageType;
    property MessageControlID: string read GetMessageControlID;
    property ProcessingID: string read GetProcessingID;
    property VersionID: string read GetVersionID;
    property SequenceNumber: string read GetSequenceNumber;
    property ContinuationPointer: string read GetContinuationPointer;
    property AcceptAcknowledgmentType: string read GetAcceptAcknowledgmentType;
    property ApplicationAcknowledgmentType: string read GetApplicationAcknowledgmentType;
    property CountryCode: string read GetCountryCode;
    property CharacterSet: string read GetCharacterSet;
    property PrincipalLangMsg: string read GetPrincipalLangMsg;
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
    function GetPatientID: string;
    function GetPatientIDAlt: string;
    function GetPatientIDExt: string;
    function GetPatientIDInt: string;
    function GetPatientName: string;
    function GetPhoneNumbBusiness: string;
    function GetPhoneNumbHome: string;
    function GetPrimaryLanguage: string;
    function GetRace: string;
    function GetReligion: string;
    function GetSSNNumb: string;
    function GetPatientAlias: string;
    function GetPatientAccountNumber: string;
    function GetBirthOrder: string;
    function GetBirthPlace: string;
    function GetCitizenship: string;
    function GetEthnicGroup: string;
    function GetMothersIdentifie: string;
    function GetMultipleBirthIndicator: string;
    function GetNationality: string;
    function GetPatientDeathDateTime: string;
    function GetPatientDeathIndicator: string;
    function GetVeteransMilitaryStatus: string;
  public
    function ToString: string; override;
    property PatientID: string read GetPatientID;
    property PatientIDExt: string read GetPatientIDExt;
    property PatientIDInt: string read GetPatientIDInt;
    property PatientIDAlt: string read GetPatientIDAlt;
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
    property PatientAccountNumber: string read GetPatientAccountNumber;
    property SSNNumb: string read GetSSNNumb;
    property DriverLicNumb: string read GetDriverLicNumb;
    property MothersIdentifie: string read GetMothersIdentifie;
    property EthnicGroup: string read GetEthnicGroup;
    property BirthPlace: string read GetBirthPlace;
    property MultipleBirthIndicator: string read GetMultipleBirthIndicator;
    property BirthOrder: string read GetBirthOrder;
    property Citizenship: string read GetCitizenship;
    property VeteransMilitaryStatus: string read GetVeteransMilitaryStatus;
    property Nationality: string read GetNationality;
    property PatientDeathDateTime: string read GetPatientDeathDateTime;
    property PatientDeathIndicator: string read GetPatientDeathIndicator;
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

function TPID.GetBirthOrder: string;
begin
  Result := GetValue(Integer(pideBirthOrder));
end;

function TPID.GetBirthPlace: string;
begin
  Result := GetValue(Integer(pideBirthPlace));
end;

function TPID.GetCitizenship: string;
begin
  Result := GetValue(Integer(pideCitizenship));
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

function TPID.GetEthnicGroup: string;
begin
  Result := GetValue(Integer(pideEthnicGroup));
end;

function TPID.GetGender: string;
begin
  Result := GetValue(Integer(pideSex));
end;

function TPID.GetMaritalStatus: string;
begin
  Result := GetValue(Integer(pideMaritalStatus));
end;

function TPID.GetMothersIdentifie: string;
begin
  Result := GetValue(Integer(pideMothersIdentifie));
end;

function TPID.GetMothMaidenName: string;
begin
  Result := GetValue(Integer(pideMothMaidenName));
end;

function TPID.GetMultipleBirthIndicator: string;
begin
  Result := GetValue(Integer(pideMultipleBirthIndicator));
end;

function TPID.GetNationality: string;
begin
  Result := GetValue(Integer(pideNationality));
end;

function TPID.GetPatientAccountNumber: string;
begin
  Result := GetValue(Integer(pidePatientAccountNumber));
end;

function TPID.GetPatientAlias: string;
begin
  Result := GetValue(Integer(pidePatientAlias));
end;

function TPID.GetPatientDeathDateTime: string;
begin
  Result := GetValue(Integer(pidePatientDeathDateTime));
end;

function TPID.GetPatientDeathIndicator: string;
begin
  Result := GetValue(Integer(pidePatientDeathIndicator));
end;

function TPID.GetPatientID: string;
begin
  Result := GetValue(Integer(pidePatientID));
end;

function TPID.GetPatientIDAlt: string;
begin
  Result := GetValue(Integer(pidePatientIDAlt));
end;

function TPID.GetPatientIDExt: string;
begin
  Result := GetValue(Integer(pidePatientIDExt));
end;

function TPID.GetPatientIDInt: string;
begin
  Result := GetValue(Integer(pidePatientIDInt));
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

function TPID.GetVeteransMilitaryStatus: string;
begin
  Result := GetValue(Integer(pideVeteransMilitaryStatus));
end;

function TPID.ToString: string;
const
  DELIM = '|';
begin
  Result := inherited;
  Result := Result + DELIM +
            PatientID + DELIM +
            PatientIDExt + DELIM +
            PatientIDInt + DELIM +
            PatientIDAlt + DELIM +
            PatientName + DELIM +
            MothMaidenName + DELIM +
            DateToMedDateStr(DTBirth) + DELIM +
            Gender + DELIM +
            PatientAlias + DELIM +
            Race + DELIM +
            Address + DELIM +
            CountyCode + DELIM +
            PhoneNumbHome + DELIM +
            PhoneNumbBusiness + DELIM +
            PrimaryLanguage + DELIM +
            MaritalStatus + DELIM +
            Religion + DELIM +
            PatientAccountNumber + DELIM +
            SSNNumb + DELIM +
            DriverLicNumb + DELIM +
            MothersIdentifie + DELIM +
            EthnicGroup + DELIM +
            BirthPlace + DELIM +
            MultipleBirthIndicator + DELIM +
            BirthOrder + DELIM +
            Citizenship + DELIM +
            VeteransMilitaryStatus + DELIM +
            Nationality + DELIM +
            PatientDeathDateTime + DELIM +
            PatientDeathIndicator;
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

function THL7Segment.ToString: string;
begin
  Result := HL7SegmentName;
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

{ TMSH }

function TMSH.GetAcceptAcknowledgmentType: string;
begin
  Result := GetValue(Integer(msheAcceptAcknowledgmentType));
end;

function TMSH.GetApplicationAcknowledgmentType: string;
begin
  Result := GetValue(Integer(msheAcceptAcknowledgmentType));
end;

function TMSH.GetCharacterSet: string;
begin
  Result := GetValue(Integer(msheCharacterSet));
end;

function TMSH.GetContinuationPointer: string;
begin
  Result := GetValue(Integer(msheContinuationPointer));
end;

function TMSH.GetCountryCode: string;
begin
  Result := GetValue(Integer(msheCountryCode));
end;

function TMSH.GetDateTimeMsg: TDateTime;
begin
  Result := MedDateTimeStrToDateTime(GetValue(Integer(msheDateTimeMsg)));
end;

function TMSH.GetEncodingCharacters: string;
begin
  Result := GetValue(Integer(msheEncodingCharacters));
end;

function TMSH.GetMessageControlID: string;
begin
  Result := GetValue(Integer(msheMessageControlID));
end;

function TMSH.GetMessageType: string;
begin
  Result := GetValue(Integer(msheMessageType));
end;

function TMSH.GetPrincipalLangMsg: string;
begin
  Result := GetValue(Integer(mshePrincipalLangMsg));
end;

function TMSH.GetProcessingID: string;
begin
  Result := GetValue(Integer(msheProcessingID));
end;

function TMSH.GetReceivingApp: string;
begin
  Result := GetValue(Integer(msheReceivingApp));
end;

function TMSH.GetReceivingFacility: string;
begin
  Result := GetValue(Integer(msheReceivingFacility));
end;

function TMSH.GetSecurity: string;
begin
  Result := GetValue(Integer(msheSecurity));
end;

function TMSH.GetSendingApp: string;
begin
  Result := GetValue(Integer(msheSendingApp));
end;

function TMSH.GetSendingFacility: string;
begin
  Result := GetValue(Integer(msheSendingFacility));
end;

function TMSH.GetSequenceNumber: string;
begin
  Result := GetValue(Integer(msheSequenceNumber));
end;

function TMSH.GetVersionID: string;
begin
  Result := GetValue(Integer(msheVersionID));
end;

function TMSH.ToString: string;
const
  DELIM = '|';
begin
  Result := inherited;
  Result := Result + DELIM +
            EncodingCharacters + DELIM +
            SendingApp + DELIM +
            SendingFacility + DELIM +
            ReceivingApp + DELIM +
            ReceivingFacility + DELIM +
            DateTimeToMedDateTimeStr(DateTimeMsg) + DELIM +
            Security + DELIM +
            MessageType + DELIM +
            MessageControlID + DELIM +
            ProcessingID + DELIM +
            VersionID + DELIM +
            SequenceNumber + DELIM +
            ContinuationPointer + DELIM +
            AcceptAcknowledgmentType + DELIM +
            ApplicationAcknowledgmentType + DELIM +
            CountryCode + DELIM +
            CharacterSet + DELIM +
            PrincipalLangMsg + DELIM;
end;

end.
