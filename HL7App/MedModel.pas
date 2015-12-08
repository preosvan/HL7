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
  private
    function GetAssistantResultInterpreter: string;
    function GetChargeToPractice: string;
    function GetCollectionVolume: string;
    function GetCollectorIdentifier: string;
    function GetCollectorsComment: string;
    function GetDangerCode: string;
    function GetDiagnosticServSectID: string;
    function GetEscortRequired: string;
    function GetFillerField1: string;
    function GetFillerField2: string;
    function GetFillerOrderNumber: string;
    function GetNumberOfSampleContainers: string;
    function GetObservationDateTime: string;
    function GetObservationEndDateTime: string;
    function GetOrderCallbackPhoneNumber: string;
    function GetOrderingProvider: string;
    function GetParent: string;
    function GetParentResult: string;
    function GetPlacerField1: string;
    function GetPlacerField2: string;
    function GetPlacerOrderNumber: string;
    function GetPlannedPatientTransportComment: string;
    function GetPrincipalResultInterpreter: string;
    function GetPriority: string;
    function GetQuantityOrTiming: string;
    function GetReasonForStudy: string;
    function GetRelevantClinicalInfo: string;
    function GetRequestedDateTime: string;
    function GetResultCopiesTo: string;
    function GetResultsRptStatusChngDateTime: string;
    function GetResultStatus: string;
    function GetScheduledDateTime: string;
    function GetSpecimenActionCode: string;
    function GetSpecimenReceivedDateTime: string;
    function GetSpecimenSource: string;
    function GetTechnician: string;
    function GetTranscriptionist: string;
    function GetTransportArranged: string;
    function GetTransportArrangementResponsibility: string;
    function GetTransportationMode: string;
    function GetTransportLogisticsOfCollectedSample: string;
    function GetUniversalServiceID: string;
  public
    function ToString: string; override;
    property PlacerOrderNumber: string read GetPlacerOrderNumber;
    property FillerOrderNumber: string read GetFillerOrderNumber;
    property UniversalServiceID: string read GetUniversalServiceID;
    property Priority: string read GetPriority;
    property RequestedDateTime: string read GetRequestedDateTime;
    property ObservationDateTime: string read GetObservationDateTime;
    property ObservationEndDateTime: string read GetObservationEndDateTime;
    property CollectionVolume: string read GetCollectionVolume;
    property CollectorIdentifier: string read GetCollectorIdentifier;
    property SpecimenActionCode: string read GetSpecimenActionCode;
    property DangerCode: string read GetDangerCode;
    property RelevantClinicalInfo: string read GetRelevantClinicalInfo;
    property SpecimenReceivedDateTime: string read GetSpecimenReceivedDateTime;
    property SpecimenSource: string read GetSpecimenSource;
    property OrderingProvider: string read GetOrderingProvider;
    property OrderCallbackPhoneNumber: string read GetOrderCallbackPhoneNumber;
    property PlacerField1: string read GetPlacerField1;
    property PlacerField2: string read GetPlacerField2;
    property FillerField1: string read GetFillerField1;
    property FillerField2: string read GetFillerField2;
    property ResultsRptStatusChngDateTime: string read GetResultsRptStatusChngDateTime;
    property ChargeToPractice: string read GetChargeToPractice;
    property DiagnosticServSectID: string read GetDiagnosticServSectID;
    property ResultStatus: string read GetResultStatus;
    property ParentResult: string read GetParentResult;
    property QuantityOrTiming: string read GetQuantityOrTiming;
    property ResultCopiesTo: string read GetResultCopiesTo;
    property Parent: string read GetParent;
    property TransportationMode: string read GetTransportationMode;
    property ReasonForStudy: string read GetReasonForStudy;
    property PrincipalResultInterpreter: string read GetPrincipalResultInterpreter;
    property AssistantResultInterpreter: string read GetAssistantResultInterpreter;
    property Technician: string read GetTechnician;
    property Transcriptionist: string read GetTranscriptionist;
    property ScheduledDateTime: string read GetScheduledDateTime;
    property NumberOfSampleContainers: string read GetNumberOfSampleContainers;
    property TransportLogisticsOfCollectedSample: string read GetTransportLogisticsOfCollectedSample;
    property CollectorsComment: string read GetCollectorsComment;
    property TransportArrangementResponsibility: string read GetTransportArrangementResponsibility;
    property TransportArranged: string read GetTransportArranged;
    property EscortRequired: string read GetEscortRequired;
    property PlannedPatientTransportComment: string read GetPlannedPatientTransportComment;
  end;

  //
  TOBX = class(THL7Segment)
  private
    function GetAbnormalFlags: string;
    function GetDateLastObsNormalValues: string;
    function GetDateTimeOfObservation: string;
    function GetNatureOfAbnormalTest: string;
    function GetObservationIdentifier: string;
    function GetObservationMethod: string;
    function GetObservationSubID: string;
    function GetObservationValue: string;
    function GetObservResultStatus: string;
    function GetProbability: string;
    function GetProducersID: string;
    function GetReferencesRange: string;
    function GetResponsibleObserver: string;
    function GetUnits: string;
    function GetUserDefinedAccessChecks: string;
    function GetValueType: string;
  public
    function ToString: string; override;
    property ValueType: string read GetValueType;
    property ObservationIdentifier: string read GetObservationIdentifier;
    property ObservationSubID: string read GetObservationSubID;
    property ObservationValue: string read GetObservationValue;
    property Units: string read GetUnits;
    property ReferencesRange: string read GetReferencesRange;
    property AbnormalFlags: string read GetAbnormalFlags;
    property Probability: string read GetProbability;
    property NatureOfAbnormalTest: string read GetNatureOfAbnormalTest;
    property ObservResultStatus: string read GetObservResultStatus;
    property DateLastObsNormalValues: string read GetDateLastObsNormalValues;
    property UserDefinedAccessChecks: string read GetUserDefinedAccessChecks;
    property DateTimeOfObservation: string read GetDateTimeOfObservation;
    property ProducersID: string read GetProducersID;
    property ResponsibleObserver: string read GetResponsibleObserver;
    property ObservationMethod: string read GetObservationMethod;
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
begin
  Result := inherited;
  Result := Result + HL7_SEPARATOR +
            PatientID + HL7_SEPARATOR +
            PatientIDExt + HL7_SEPARATOR +
            PatientIDInt + HL7_SEPARATOR +
            PatientIDAlt + HL7_SEPARATOR +
            PatientName + HL7_SEPARATOR +
            MothMaidenName + HL7_SEPARATOR +
            DateToMedDateStr(DTBirth) + HL7_SEPARATOR +
            Gender + HL7_SEPARATOR +
            PatientAlias + HL7_SEPARATOR +
            Race + HL7_SEPARATOR +
            Address + HL7_SEPARATOR +
            CountyCode + HL7_SEPARATOR +
            PhoneNumbHome + HL7_SEPARATOR +
            PhoneNumbBusiness + HL7_SEPARATOR +
            PrimaryLanguage + HL7_SEPARATOR +
            MaritalStatus + HL7_SEPARATOR +
            Religion + HL7_SEPARATOR +
            PatientAccountNumber + HL7_SEPARATOR +
            SSNNumb + HL7_SEPARATOR +
            DriverLicNumb + HL7_SEPARATOR +
            MothersIdentifie + HL7_SEPARATOR +
            EthnicGroup + HL7_SEPARATOR +
            BirthPlace + HL7_SEPARATOR +
            MultipleBirthIndicator + HL7_SEPARATOR +
            BirthOrder + HL7_SEPARATOR +
            Citizenship + HL7_SEPARATOR +
            VeteransMilitaryStatus + HL7_SEPARATOR +
            Nationality + HL7_SEPARATOR +
            PatientDeathDateTime + HL7_SEPARATOR +
            PatientDeathIndicator;
end;

{ TPatient }

function TPatient.GetAddress1: string;
begin
  Result := GetSubElement(Address, HL7_SEPARATOR_COMPONENT, Integer(psaAddress1));
end;

function TPatient.GetAddress2: string;
begin
  Result := GetSubElement(Address, HL7_SEPARATOR_COMPONENT, Integer(psaAddress2));
end;

function TPatient.GetCity: string;
begin
  Result := GetSubElement(Address, HL7_SEPARATOR_COMPONENT, Integer(psaCity));
end;

function TPatient.GetFirstname: string;
begin
  Result := GetSubElement(PatientName, HL7_SEPARATOR_COMPONENT, Integer(psnFirstName));
end;

function TPatient.GetInitials: string;
begin
  Result := GetSubElement(PatientName, HL7_SEPARATOR_COMPONENT, Integer(psnInitials));
end;

function TPatient.GetPostalCode: string;
begin
  Result := GetSubElement(Address, HL7_SEPARATOR_COMPONENT, Integer(psaPostalCode));
end;

function TPatient.GetProvinceCode: string;
begin
  Result := GetSubElement(Address, HL7_SEPARATOR_COMPONENT, Integer(psaProvinceCode));
end;

function TPatient.GetSEERCountryGeocode: string;
begin
  Result := GetSubElement(Address, HL7_SEPARATOR_COMPONENT, Integer(psaSEERCountryGeocode));
end;

function TPatient.GetSurname: string;
begin
  Result := GetSubElement(PatientName, HL7_SEPARATOR_COMPONENT, Integer(psnSurname));
end;

{ THL7Segment }

constructor THL7Segment.Create(AMsgText: string);
begin
  FMsgText := TStringList.Create;
  FMsgText.Delimiter := HL7_SEPARATOR;
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
begin
  Result := inherited;
  Result := Result + HL7_SEPARATOR +
            EncodingCharacters + HL7_SEPARATOR +
            SendingApp + HL7_SEPARATOR +
            SendingFacility + HL7_SEPARATOR +
            ReceivingApp + HL7_SEPARATOR +
            ReceivingFacility + HL7_SEPARATOR +
            DateTimeToMedDateTimeStr(DateTimeMsg) + HL7_SEPARATOR +
            Security + HL7_SEPARATOR +
            MessageType + HL7_SEPARATOR +
            MessageControlID + HL7_SEPARATOR +
            ProcessingID + HL7_SEPARATOR +
            VersionID + HL7_SEPARATOR +
            SequenceNumber + HL7_SEPARATOR +
            ContinuationPointer + HL7_SEPARATOR +
            AcceptAcknowledgmentType + HL7_SEPARATOR +
            ApplicationAcknowledgmentType + HL7_SEPARATOR +
            CountryCode + HL7_SEPARATOR +
            CharacterSet + HL7_SEPARATOR +
            PrincipalLangMsg + HL7_SEPARATOR;
end;

{ TOBR }

function TOBR.GetAssistantResultInterpreter: string;
begin
  Result := GetValue(Integer(obreAssistantResultInterpreter));
end;

function TOBR.GetChargeToPractice: string;
begin
  Result := GetValue(Integer(obreChargeToPractice));
end;

function TOBR.GetCollectionVolume: string;
begin
  Result := GetValue(Integer(obreCollectionVolume));
end;

function TOBR.GetCollectorIdentifier: string;
begin
  Result := GetValue(Integer(obreCollectorIdentifier));
end;

function TOBR.GetCollectorsComment: string;
begin
  Result := GetValue(Integer(obreCollectorsComment));
end;

function TOBR.GetDangerCode: string;
begin
  Result := GetValue(Integer(obreDangerCode));
end;

function TOBR.GetDiagnosticServSectID: string;
begin
  Result := GetValue(Integer(obreDiagnosticServSectID));
end;

function TOBR.GetEscortRequired: string;
begin
  Result := GetValue(Integer(obreEscortRequired));
end;

function TOBR.GetFillerField1: string;
begin
  Result := GetValue(Integer(obreFillerField1));
end;

function TOBR.GetFillerField2: string;
begin
  Result := GetValue(Integer(obreFillerField2));
end;

function TOBR.GetFillerOrderNumber: string;
begin
  Result := GetValue(Integer(obreFillerOrderNumber));
end;

function TOBR.GetNumberOfSampleContainers: string;
begin
  Result := GetValue(Integer(obreNumberOfSampleContainers));
end;

function TOBR.GetObservationDateTime: string;
begin
  Result := GetValue(Integer(obreObservationDateTime));
end;

function TOBR.GetObservationEndDateTime: string;
begin
  Result := GetValue(Integer(obreObservationEndDateTime));
end;

function TOBR.GetOrderCallbackPhoneNumber: string;
begin
  Result := GetValue(Integer(obreOrderCallbackPhoneNumber));
end;

function TOBR.GetOrderingProvider: string;
begin
  Result := GetValue(Integer(obreOrderingProvider));
end;

function TOBR.GetParent: string;
begin
  Result := GetValue(Integer(obreParent));
end;

function TOBR.GetParentResult: string;
begin
  Result := GetValue(Integer(obreParentResult));
end;

function TOBR.GetPlacerField1: string;
begin
  Result := GetValue(Integer(obrePlacerField1));
end;

function TOBR.GetPlacerField2: string;
begin
  Result := GetValue(Integer(obrePlacerField2));
end;

function TOBR.GetPlacerOrderNumber: string;
begin
  Result := GetValue(Integer(obrePlacerOrderNumber));
end;

function TOBR.GetPlannedPatientTransportComment: string;
begin
  Result := GetValue(Integer(obrePlannedPatientTransportComment));
end;

function TOBR.GetPrincipalResultInterpreter: string;
begin
  Result := GetValue(Integer(obrePrincipalResultInterpreter));
end;

function TOBR.GetPriority: string;
begin
  Result := GetValue(Integer(obrePriority));
end;

function TOBR.GetQuantityOrTiming: string;
begin
  Result := GetValue(Integer(obreQuantityOrTiming));
end;

function TOBR.GetReasonForStudy: string;
begin
  Result := GetValue(Integer(obreReasonForStudy));
end;

function TOBR.GetRelevantClinicalInfo: string;
begin
  Result := GetValue(Integer(obreRelevantClinicalInfo));
end;

function TOBR.GetRequestedDateTime: string;
begin
  Result := GetValue(Integer(obreRequestedDateTime));
end;

function TOBR.GetResultCopiesTo: string;
begin
  Result := GetValue(Integer(obreResultCopiesTo));
end;

function TOBR.GetResultsRptStatusChngDateTime: string;
begin
  Result := GetValue(Integer(obreResultsRptStatusChngDateTime));
end;

function TOBR.GetResultStatus: string;
begin
  Result := GetValue(Integer(obreResultStatus));
end;

function TOBR.GetScheduledDateTime: string;
begin
  Result := GetValue(Integer(obreScheduledDateTime));
end;

function TOBR.GetSpecimenActionCode: string;
begin
  Result := GetValue(Integer(obreSpecimenActionCode));
end;

function TOBR.GetSpecimenReceivedDateTime: string;
begin
  Result := GetValue(Integer(obreSpecimenReceivedDateTime));
end;

function TOBR.GetSpecimenSource: string;
begin
  Result := GetValue(Integer(obreSpecimenSource));
end;

function TOBR.GetTechnician: string;
begin
  Result := GetValue(Integer(obreTechnician));
end;

function TOBR.GetTranscriptionist: string;
begin
  Result := GetValue(Integer(obreTranscriptionist));
end;

function TOBR.GetTransportArranged: string;
begin
  Result := GetValue(Integer(obreTransportArranged));
end;

function TOBR.GetTransportArrangementResponsibility: string;
begin
  Result := GetValue(Integer(obreTransportArrangementResponsibility));
end;

function TOBR.GetTransportationMode: string;
begin
  Result := GetValue(Integer(obreTransportationMode));
end;

function TOBR.GetTransportLogisticsOfCollectedSample: string;
begin
  Result := GetValue(Integer(obreTransportLogisticsOfCollectedSample));
end;

function TOBR.GetUniversalServiceID: string;
begin
  Result := GetValue(Integer(obreUniversalServiceID));
end;

function TOBR.ToString: string;
begin
  Result := inherited;
  Result := Result + HL7_SEPARATOR +
            PlacerOrderNumber + HL7_SEPARATOR +
            FillerOrderNumber + HL7_SEPARATOR +
            UniversalServiceID + HL7_SEPARATOR +
            Priority + HL7_SEPARATOR +
            RequestedDateTime + HL7_SEPARATOR +
            ObservationDateTime + HL7_SEPARATOR +
            ObservationEndDateTime + HL7_SEPARATOR +
            CollectionVolume + HL7_SEPARATOR +
            CollectorIdentifier + HL7_SEPARATOR +
            SpecimenActionCode + HL7_SEPARATOR +
            DangerCode + HL7_SEPARATOR +
            RelevantClinicalInfo + HL7_SEPARATOR +
            SpecimenReceivedDateTime + HL7_SEPARATOR +
            SpecimenSource + HL7_SEPARATOR +
            OrderingProvider + HL7_SEPARATOR +
            OrderCallbackPhoneNumber + HL7_SEPARATOR +
            PlacerField1 + HL7_SEPARATOR +
            PlacerField2 + HL7_SEPARATOR +
            FillerField1 + HL7_SEPARATOR +
            FillerField2 + HL7_SEPARATOR +
            ResultsRptStatusChngDateTime + HL7_SEPARATOR +
            ChargeToPractice + HL7_SEPARATOR +
            DiagnosticServSectID + HL7_SEPARATOR +
            ResultStatus + HL7_SEPARATOR +
            ParentResult + HL7_SEPARATOR +
            QuantityOrTiming + HL7_SEPARATOR +
            ResultCopiesTo + HL7_SEPARATOR +
            Parent + HL7_SEPARATOR +
            TransportationMode + HL7_SEPARATOR +
            ReasonForStudy + HL7_SEPARATOR +
            PrincipalResultInterpreter + HL7_SEPARATOR +
            AssistantResultInterpreter + HL7_SEPARATOR +
            Technician + HL7_SEPARATOR +
            Transcriptionist + HL7_SEPARATOR +
            ScheduledDateTime + HL7_SEPARATOR +
            NumberOfSampleContainers + HL7_SEPARATOR +
            TransportLogisticsOfCollectedSample + HL7_SEPARATOR +
            CollectorsComment + HL7_SEPARATOR +
            TransportArrangementResponsibility + HL7_SEPARATOR +
            TransportArranged + HL7_SEPARATOR +
            EscortRequired + HL7_SEPARATOR +
            PlannedPatientTransportComment + HL7_SEPARATOR;
end;


{ TOBX }

function TOBX.GetAbnormalFlags: string;
begin
  Result := GetValue(Integer(obxeAbnormalFlags));
end;

function TOBX.GetDateLastObsNormalValues: string;
begin
  Result := GetValue(Integer(obxeDateLastObsNormalValues));
end;

function TOBX.GetDateTimeOfObservation: string;
begin
  Result := GetValue(Integer(obxeDateTimeOfObservation));
end;

function TOBX.GetNatureOfAbnormalTest: string;
begin
  Result := GetValue(Integer(obxeNatureOfAbnormalTest));
end;

function TOBX.GetObservationIdentifier: string;
begin
  Result := GetValue(Integer(obxeObservationIdentifier));
end;

function TOBX.GetObservationMethod: string;
begin
  Result := GetValue(Integer(obxeObservationMethod));
end;

function TOBX.GetObservationSubID: string;
begin
  Result := GetValue(Integer(obxeObservationSubID));
end;

function TOBX.GetObservationValue: string;
begin
  Result := GetValue(Integer(obxeObservationValue));
end;

function TOBX.GetObservResultStatus: string;
begin
  Result := GetValue(Integer(obxeObservResultStatus));
end;

function TOBX.GetProbability: string;
begin
  Result := GetValue(Integer(obxeProbability));
end;

function TOBX.GetProducersID: string;
begin
  Result := GetValue(Integer(obxeProducersID));
end;

function TOBX.GetReferencesRange: string;
begin
  Result := GetValue(Integer(obxeReferencesRange));
end;

function TOBX.GetResponsibleObserver: string;
begin
  Result := GetValue(Integer(obxeResponsibleObserver));
end;

function TOBX.GetUnits: string;
begin
  Result := GetValue(Integer(obxeUnits));
end;

function TOBX.GetUserDefinedAccessChecks: string;
begin
  Result := GetValue(Integer(obxeUserDefinedAccessChecks));
end;

function TOBX.GetValueType: string;
begin
  Result := GetValue(Integer(obxeValueType));
end;

function TOBX.ToString: string;
begin
  Result := inherited;
  Result := Result + HL7_SEPARATOR +
            ValueType + HL7_SEPARATOR +
            ObservationIdentifier + HL7_SEPARATOR +
            ObservationSubID + HL7_SEPARATOR +
            ObservationValue + HL7_SEPARATOR +
            Units + HL7_SEPARATOR +
            ReferencesRange + HL7_SEPARATOR +
            AbnormalFlags + HL7_SEPARATOR +
            Probability + HL7_SEPARATOR +
            NatureOfAbnormalTest + HL7_SEPARATOR +
            ObservResultStatus + HL7_SEPARATOR +
            DateLastObsNormalValues + HL7_SEPARATOR +
            UserDefinedAccessChecks + HL7_SEPARATOR +
            DateTimeOfObservation + HL7_SEPARATOR +
            ProducersID + HL7_SEPARATOR +
            ResponsibleObserver + HL7_SEPARATOR +
            ObservationMethod + HL7_SEPARATOR;
end;

end.

