unit MedModel;

interface

uses
  System.Classes,
  MedModelConst, Data.SqlExpr;

type
  THL7Segment = class
  private
    FMsgText: TStrings;
    function GetHL7SegmentName: string;
  published
    constructor Create(AMsgText: string); overload;
    destructor Destroy; override;
    class function IsExistSegment(AMsgText: TStrings;
      ASegmentType: THL7SegmentType): Boolean;
    class function CheckMSG(AMsgText: TStrings): Boolean;
    class procedure GetSegmentMsgText(AMsgText: TStrings;
      ASegmentType: THL7SegmentType; var AOutStrings: TStrings);
    class function GetSegmentMsgTextStr(AMsgText: TStrings;
      ASegmentType: THL7SegmentType): string;
    class function GetSegmentNameValue(ASegmentType: THL7SegmentType): string;
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
    function GetAltCharacterSetHandlingScheme: string;
    function GetMsgProfileId: string;
    function GetReceivNetworkAddress: string;
    function GetReceivResponsibleOrg: string;
    function GetSendNetworkAddress: string;
    function GetSendResponsibleOrg: string;
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
    property AltCharacterSetHandlingScheme: string read GetAltCharacterSetHandlingScheme;
    property MsgProfileId: string read GetMsgProfileId;
    property SendResponsibleOrg: string read GetSendResponsibleOrg;
    property ReceivResponsibleOrg: string read GetReceivResponsibleOrg;
    property SendNetworkAddress: string read GetSendNetworkAddress;
    property ReceivNetworkAddress: string read GetReceivNetworkAddress;
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
    function GetBreedCode: string;
    function GetIdentityReliabilityCode: string;
    function GetIdentityUnknownIndicator: string;
    function GetLastUpdateDateTime: string;
    function GetLastUpdateFacility: string;
    function GetProductionClassCode: string;
    function GetSpeciesCode: string;
    function GetStrain: string;
    function GetTribalCitizenshi: string;
  public
    function ToString: string; override;
    property PatientID: Integer read GetPatientID;
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
    property IdentityUnknownIndicator: string read GetIdentityUnknownIndicator;
    property IdentityReliabilityCode: string read GetIdentityReliabilityCode;
    property LastUpdateDateTime: string read GetLastUpdateDateTime;
    property LastUpdateFacility: string read GetLastUpdateFacility;
    property SpeciesCode: string read GetSpeciesCode;
    property BreedCode: string read GetBreedCode;
    property Strain: string read GetStrain;
    property ProductionClassCode: string read GetProductionClassCode;
    property TribalCitizenshi: string read GetTribalCitizenshi;
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
    function GetFullName: string;
  public
    //Name
    property Surname: string read GetSurname;
    property Firstname: string read GetFirstname;
    property Initials: string read GetInitials;
    property FullName: string read GetFullName;
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
    function GetNumberOfSampleContainers: Integer;
    function GetObservationDateTime: TDateTime;
    function GetObservationEndDateTime: TDateTime;
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
    property ObservationDateTime: TDateTime read GetObservationDateTime;
    property ObservationEndDateTime: TDateTime read GetObservationEndDateTime;
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
    property NumberOfSampleContainers: Integer read GetNumberOfSampleContainers;
    property TransportLogisticsOfCollectedSample: string read GetTransportLogisticsOfCollectedSample;
    property CollectorsComment: string read GetCollectorsComment;
    property TransportArrangementResponsibility: string read GetTransportArrangementResponsibility;
    property TransportArranged: string read GetTransportArranged;
    property EscortRequired: string read GetEscortRequired;
    property PlannedPatientTransportComment: string read GetPlannedPatientTransportComment;
  end;

  //
  TAccessionSpec = class(TOBR)
  private
    function GetAccessionNumber: string;
    function GetNamespaceId: string;
    function GetSpecimenLabel: string;
    function GetSurgicalProcedure: string;
    function GetPriorityId: string;
  public
    property AccessionNumber: string read GetAccessionNumber;
    property NamespaceId: string read GetNamespaceId;
    property SpecimenLabel: string read GetSpecimenLabel;
    property SurgicalProcedure: string read GetSurgicalProcedure;
    property PriorityId: string read GetPriorityId;
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
    function GetOBXNumber: string;
  public
    function ToString: string; override;
    property OBXNumber: string read GetOBXNumber;
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

  TOBXSpec = class(TOBX)
  private
    function GetIdentifier: string;
    function GetTextST: string;
    function GetComment: string;
    function GetDiagnosis: string;
    function GetGrossDescription: string;
    function GetMicroscopicObserv: string;
    function GetSpecimenLabel: string;
  public
    property Identifier: string read GetIdentifier;
    property TextST: string read GetTextST;
    property MicroscopicObserv: string read GetMicroscopicObserv;
    property Diagnosis: string read GetDiagnosis;
    property Comment: string read GetComment;
    property GrossDescription: string read GetGrossDescription;
    property SpecimenLabel: string read GetSpecimenLabel;
  end;

  TSpeciman = class
  private
    FGrossDescription: string;
    FMicroscopicObserv: string;
    FDiagnosis: string;
    FId: string;
    FSpecimenLabel: string;
  public
    constructor Create(AId: string); overload;
    constructor Create(AId, AMicroscopicObserv, ADiagnosis, AGrossDescription,
      ASpecimenLabel: string); overload;
    function ToString: string; override;
    property Id: string read FId write FId;
    property MicroscopicObserv: string read FMicroscopicObserv write FMicroscopicObserv;
    property Diagnosis: string read FDiagnosis write FDiagnosis;
    property GrossDescription: string read FGrossDescription write FGrossDescription;
    property SpecimenLabel: string read FSpecimenLabel write FSpecimenLabel;
  end;

  TPIDList = class(TList);

  TOBRList = class(TList);

  TOBXList = class(TList)
  private
    function GetTextSTByTypeAndId(AValueType, AIdentifier: string): string;
  public

  end;

  TSpecimanList = class(TList)
  public
    function AddSpeciman(AId: string): TSpeciman;
    function IsExist(AId: string): Boolean;
    function GetSpecimanById(AId: string): TSpeciman;
    procedure SaveToDB(ASQLQuery: TSQLQuery; AAccessionNumber: string);
    procedure Load(var ASQLQuery: TSQLQuery);
  end;

  THL7Message = class
  private
    FMSH: TMSH;
    FOBR: TOBR;
    FPID: TPID;
    FOBXList: TOBXList;
    FSpecimanList: TSpecimanList;
    FPIDList: TPIDList;
    FOBRList: TOBRList;
    procedure InitSpecimanList;
    class function LoadMSHById(ASQLQuery: TSQLQuery): string;
    class function LoadPIDById(var ASQLQuery: TSQLQuery; AId: Integer): string;
    class function LoadOBRById(var ASQLQuery: TSQLQuery; AId: Integer): string;

    function LoadPID(var ASQLQuery: TSQLQuery;
      var APIDStrings: TStrings): TStrings;
    procedure LoadOBR(var ASQLQuery: TSQLQuery;
      var AOBRStrings: TStrings);
    procedure LoadOBX(var ASQLQuery: TSQLQuery;
      var AOBXStrings: TStrings);
    procedure SaveAccession(ASQLQuery: TSQLQuery);
    procedure SavePatient(ASQLQuery: TSQLQuery);
    procedure SaveSpecimen(ASQLQuery: TSQLQuery);
  public
    constructor Create(AMsg: TStrings); overload;
    constructor Create(AMsg: string); overload;
    destructor Destroy; override;
    function CheckMessage: Boolean;
    procedure InitMSG(AMsg: TStrings);
    function ToString: string; override;
    class function Load(var ASQLQuery: TSQLQuery): THL7Message;
    procedure SaveToDB(ASQLQuery: TSQLQuery);
    property MSH: TMSH read FMSH;
    property PID: TPID read FPID;
    property OBR: TOBR read FOBR;
    property PIDList: TPIDList read FPIDList;
    property OBRList: TOBRList read FOBRList;
    property OBXList: TOBXList read FOBXList;
    property SpecimanList: TSpecimanList read FSpecimanList;
  end;

implementation

uses
  System.SysUtils,
  DateUtils,
  MedUtils, Data.SqlTimSt;

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

function TPID.GetBreedCode: string;
begin
  Result := GetValue(Integer(pideBreedCode));
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

function TPID.GetIdentityReliabilityCode: string;
begin
  Result := GetValue(Integer(pideIdentityReliabilityCode));
end;

function TPID.GetIdentityUnknownIndicator: string;
begin
  Result := GetValue(Integer(pideIdentityUnknownIndicator));
end;

function TPID.GetLastUpdateDateTime: string;
begin
  Result := GetValue(Integer(pideLastUpdateDateTime));
end;

function TPID.GetLastUpdateFacility: string;
begin
  Result := GetValue(Integer(pideLastUpdateFacility));
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

function TPID.GetPatientID: Integer;
begin
  Result := StrToIntDef(GetValue(Integer(pidePatientID)), 0);
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

function TPID.GetProductionClassCode: string;
begin
  Result := GetValue(Integer(pideProductionClassCode));
end;

function TPID.GetRace: string;
begin
  Result := GetValue(Integer(pideRace));
end;

function TPID.GetReligion: string;
begin
  Result := GetValue(Integer(pideReligion));
end;

function TPID.GetSpeciesCode: string;
begin
  Result := GetValue(Integer(pideSpeciesCode));
end;

function TPID.GetSSNNumb: string;
begin
  Result := GetValue(Integer(pideSSNNumber));
end;

function TPID.GetStrain: string;
begin
  Result := GetValue(Integer(pideStrain));
end;

function TPID.GetTribalCitizenshi: string;
begin
  Result := GetValue(Integer(pideTribalCitizenshi));
end;

function TPID.GetVeteransMilitaryStatus: string;
begin
  Result := GetValue(Integer(pideVeteransMilitaryStatus));
end;

function TPID.ToString: string;
begin
  Result := inherited;
  Result := Result + HL7_SEPARATOR +
            PatientID.ToString + HL7_SEPARATOR +
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
            PatientDeathIndicator + HL7_SEPARATOR +
            IdentityUnknownIndicator + HL7_SEPARATOR +
            IdentityReliabilityCode + HL7_SEPARATOR +
            LastUpdateDateTime + HL7_SEPARATOR +
            LastUpdateFacility + HL7_SEPARATOR +
            SpeciesCode + HL7_SEPARATOR +
            BreedCode + HL7_SEPARATOR +
            Strain + HL7_SEPARATOR +
            ProductionClassCode + HL7_SEPARATOR +
            TribalCitizenshi;
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

function TPatient.GetFullName: string;
begin
  Result := Trim(Surname + ' ' + Firstname + ' ' + Initials);
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

class function THL7Segment.CheckMSG(AMsgText: TStrings): Boolean;
begin
  Result := IsExistSegment(AMsgText, hlsMSH) and
            IsExistSegment(AMsgText, hlsPID) and
            IsExistSegment(AMsgText, hlsOBR) and
            IsExistSegment(AMsgText, hlsOBX);
end;

constructor THL7Segment.Create(AMsgText: string);
begin
  FMsgText := TStringList.Create;
  FMsgText.StrictDelimiter := True;
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

class function THL7Segment.GetSegmentMsgTextStr(AMsgText: TStrings;
  ASegmentType: THL7SegmentType): string;
var
  I: Integer;
begin
  for I := 0 to AMsgText.Count - 1 do
  if GetSegmentNameValue(ASegmentType) = AMsgText[I].Substring(0, 3) then
  begin
    Result := AMsgText[I];
    Break;
  end;
end;

class function THL7Segment.GetSegmentNameValue(
  ASegmentType: THL7SegmentType): string;
begin
  Result := '';
  case ASegmentType of
    hlsNone:
      Result := HL7_SGM_NONE;
    hlsMSH:
      Result := HL7_SGM_MSH;
    hlsPID:
      Result := HL7_SGM_PID;
    hlsOBR:
      Result := HL7_SGM_OBR;
    hlsOBX:
      Result := HL7_SGM_OBX;
  end;
end;

class procedure THL7Segment.GetSegmentMsgText(AMsgText: TStrings;
  ASegmentType: THL7SegmentType; var AOutStrings: TStrings);
var
  I: Integer;
begin
  if Assigned(AMsgText) and Assigned(AOutStrings) then
  begin
    for I := 0 to AMsgText.Count - 1 do
    if GetSegmentNameValue(ASegmentType) = AMsgText[I].Substring(0, 3) then
        AOutStrings.Add(AMsgText[I]);
  end;
end;

function THL7Segment.GetValue(AIdxElement: Integer): string;
begin
  Result := EmptyStr;
  if MsgText.Count > AIdxElement  then
    Result := MsgText[AIdxElement];
end;

class function THL7Segment.IsExistSegment(AMsgText: TStrings;
  ASegmentType: THL7SegmentType): Boolean;
var
  I: Integer;
begin
  Result := False;
  if Assigned(AMsgText) then
  begin
    for I := 0 to AMsgText.Count - 1 do
    if GetSegmentNameValue(ASegmentType) = AMsgText[I].Substring(0, 3) then
    begin
      Result := True;
      Break;
    end;
  end;
end;

function THL7Segment.ToString: string;
begin
  Result := HL7SegmentName;
end;

{ THL7Message }

constructor THL7Message.Create(AMsg: TStrings);
begin
  InitMSG(AMsg);
end;

function THL7Message.CheckMessage: Boolean;
begin
  Result := (PID.PatientID > 0) and
            (PID.PatientIDInt <> EmptyStr);// and
//            (OBR.FillerOrderNumber <> EmptyStr);
end;

constructor THL7Message.Create(AMsg: string);
var
  StringList: TStrings;
begin
  StringList := TStringList.Create;
  try
    StringList.Text := AMsg;
    Create(StringList);
  finally
    StringList.Free;
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

  if Assigned(FPIDList) then
    FPIDList.Free;
  if Assigned(FOBRList) then
    FOBRList.Free;
  if Assigned(FOBXList) then
    FOBXList.Free;
  if Assigned(FSpecimanList) then
    FSpecimanList.Free;
  inherited;
end;

procedure THL7Message.InitMSG(AMsg: TStrings);
var
  I: Integer;
  TmpStringList: TStrings;
begin
  FMSH := TMSH.Create(THL7Segment.GetSegmentMsgTextStr(AMsg, hlsMSH));
  FPID := TPID.Create(THL7Segment.GetSegmentMsgTextStr(AMsg, hlsPID));
  FOBR := TOBR.Create(THL7Segment.GetSegmentMsgTextStr(AMsg, hlsOBR));

  FPIDList := TPIDList.Create;
  FOBRList := TOBRList.Create;

  FOBXList := TOBXList.Create;
  TmpStringList := TStringList.Create;
  try
    //PID
    TmpStringList.Clear;
    THL7Segment.GetSegmentMsgText(AMsg, hlsPID, TmpStringList);
    for I := 0 to TmpStringList.Count - 1 do
      FPIDList.Add(TPID.Create(TmpStringList[I]));
    //OBR
    TmpStringList.Clear;
    THL7Segment.GetSegmentMsgText(AMsg, hlsOBR, TmpStringList);
    for I := 0 to TmpStringList.Count - 1 do
      FOBRList.Add(TOBR.Create(TmpStringList[I]));
    //OBX
    TmpStringList.Clear;
    THL7Segment.GetSegmentMsgText(AMsg, hlsOBX, TmpStringList);
    for I := 0 to TmpStringList.Count - 1 do
      FOBXList.Add(TOBX.Create(TmpStringList[I]));
  finally
    TmpStringList.Free;
  end;

  FSpecimanList := TSpecimanList.Create;
  InitSpecimanList;
end;

procedure THL7Message.InitSpecimanList;
var
  Speciman: TSpeciman;
  OBX: TOBXSpec;
  I: Integer;
  J: Integer;
begin
  SpecimanList.Clear;
  for I := 0 to OBXList.Count - 1 do
  begin
    if TOBXSpec(OBXList[I]).ObservationSubID <> EmptyStr then
    begin
      if not SpecimanList.IsExist(TOBXSpec(OBXList[I]).ObservationSubID) then
        Speciman := SpecimanList.AddSpeciman(TOBXSpec(OBXList[I]).ObservationSubID)
      else
        Speciman := SpecimanList.GetSpecimanById(TOBXSpec(OBXList[I]).ObservationSubID);

      //SpecimenLabel
      for J := 0 to OBXList.Count - 1 do
      begin
        OBX := TOBXSpec(OBXList[J]);
        if (OBX.ObservationSubID = TOBXSpec(OBXList[I]).ObservationSubID) and
           (OBX.SpecimenLabel <> EmptyStr) then
        begin
          Speciman.SpecimenLabel := OBX.SpecimenLabel;
          Break;
        end;
      end;
      //GrossDescription
      for J := 0 to OBXList.Count - 1 do
      begin
        OBX := TOBXSpec(OBXList[J]);
        if (OBX.ObservationSubID = TOBXSpec(OBXList[I]).ObservationSubID) and
           (OBX.GrossDescription <> EmptyStr) then
        begin
          Speciman.GrossDescription := OBX.GrossDescription;
          Break;
        end;
      end;
      //MicroscopicDesc
      for J := 0 to OBXList.Count - 1 do
      begin
        OBX := TOBXSpec(OBXList[J]);
        if (OBX.ObservationSubID = TOBXSpec(OBXList[I]).ObservationSubID) and
           (OBX.MicroscopicObserv <> EmptyStr) then
        begin
          Speciman.MicroscopicObserv := OBX.MicroscopicObserv;
          Break;
        end;
      end;
      //Diagnosis
      for J := 0 to OBXList.Count - 1 do
      begin
        OBX := TOBXSpec(OBXList[J]);
        if (OBX.ObservationSubID = TOBXSpec(OBXList[I]).ObservationSubID) and
           (OBX.Diagnosis <> EmptyStr) then
        begin
          Speciman.Diagnosis := OBX.Diagnosis;
          Break;
        end;
      end;
    end;
  end;
end;

class function THL7Message.Load(var ASQLQuery: TSQLQuery): THL7Message;
var
  StringList: TStrings;
  I: Integer;
begin
  Result := THL7Message.Create;
  StringList := TStringList.Create;
  try
    //MSH
    StringList.Add(LoadMSHById(ASQLQuery));

    Result.InitMSG(StringList);
    //PID
    Result.LoadPID(ASQLQuery, StringList);
    //OBR
    Result.LoadOBR(ASQLQuery, StringList);
    //OBX
    Result.LoadOBX(ASQLQuery, StringList);

    Result.InitMSG(StringList);
  finally
    StringList.Free;
  end;
end;

class function THL7Message.LoadMSHById(ASQLQuery: TSQLQuery): string;
begin
  //SegnentName
  Result := 'MSH';
  //EncodingCharacters
  Result := Result + HL7_SEPARATOR + '^~\&';
  //SendingApp
  Result := Result + HL7_SEPARATOR + '';
  //SendingFacility
  Result := Result + HL7_SEPARATOR + 'INDEPENDENT LAB SERVICES^33D1234567^CLIA';
  //ReceivingApp
  Result := Result + HL7_SEPARATOR + '';
  //ReceivingFacility
  Result := Result + HL7_SEPARATOR + '';
  //DateTimeMsg
  Result := Result + HL7_SEPARATOR + DateTimeToMedDateTimeStr(Now);
  //Security
  Result := Result + HL7_SEPARATOR + '';
  //MessageType
  Result := Result + HL7_SEPARATOR + 'ORU^R01^ORU_R01';
  //MessageControlID
  Result := Result + HL7_SEPARATOR + '2004072813390045';
  //ProcessingID
  Result := Result + HL7_SEPARATOR + 'P';
  //VersionID
  Result := Result + HL7_SEPARATOR + '2.5.1';
  //SequenceNumber
  Result := Result + HL7_SEPARATOR + '';
  //ContinuationPointer
  Result := Result + HL7_SEPARATOR + '';
  //AcceptAcknowledgmentType
  Result := Result + HL7_SEPARATOR + '';
  //ApplicationAcknowledgmentType
  Result := Result + HL7_SEPARATOR + '';
  //CountryCode
  Result := Result + HL7_SEPARATOR + '';
  //CharacterSet
  Result := Result + HL7_SEPARATOR + '';
  //PrincipalLangMsg
  Result := Result + HL7_SEPARATOR + '';
  //AltCharacterSetHandlingScheme
  Result := Result + HL7_SEPARATOR + '';
  //MsgProfileId
  Result := Result + HL7_SEPARATOR + 'VOL_V_30_ORU_R01^NAACCR_CP^2.16.840.1.113883.9.8^ISO';
  //SendResponsibleOrg
  Result := Result + HL7_SEPARATOR + '';
  //ReceivResponsibleOrg
  Result := Result + HL7_SEPARATOR + '';
  //SendNetworkAddress
  Result := Result + HL7_SEPARATOR + '';
  //ReceivNetworkAddress
  Result := Result + HL7_SEPARATOR + '';
end;

class function THL7Message.LoadOBRById(var ASQLQuery: TSQLQuery; AId: Integer): string;
begin
  //SegnentName
  Result := 'OBR';

  ASQLQuery.SQL.Text :=
    'select * from accession a where a.accession_id = ' + IntToStr(AId);
  try
    ASQLQuery.Open;
    if not ASQLQuery.Eof then
    with ASQLQuery do
    begin
      //PlacerOrderNumber
      Result := Result + HL7_SEPARATOR + '1';
      //FillerOrderNumber
      Result := Result + HL7_SEPARATOR + '';
      //UniversalServiceID
      Result := Result + HL7_SEPARATOR + FieldByName('accession_number').AsString;
      //Priority
      Result := Result + HL7_SEPARATOR + '';
      //RequestedDateTime
      Result := Result + HL7_SEPARATOR + '';
      //ObservationDateTime
      Result := Result + HL7_SEPARATOR + '';
      //ObservationEndDateTime
      Result := Result + HL7_SEPARATOR + '';
      //CollectionVolume
      Result := Result + HL7_SEPARATOR + '';
      //CollectorIdentifier
      Result := Result + HL7_SEPARATOR + '';
      //SpecimenActionCode
      Result := Result + HL7_SEPARATOR + '';
      //DangerCode
      Result := Result + HL7_SEPARATOR + '';
      //RelevantClinicalInfo
      Result := Result + HL7_SEPARATOR + '';
      //SpecimenReceivedDateTime
      Result := Result + HL7_SEPARATOR + '';
      //SpecimenSource
      Result := Result + HL7_SEPARATOR + '';
      //OrderingProvider
      Result := Result + HL7_SEPARATOR + '';
      //OrderCallbackPhoneNumber
      Result := Result + HL7_SEPARATOR + '';
      //PlacerField1
      Result := Result + HL7_SEPARATOR + '';
      //PlacerField2
      Result := Result + HL7_SEPARATOR + '';
      //FillerField1
      Result := Result + HL7_SEPARATOR + '';
      //FillerField2
      Result := Result + HL7_SEPARATOR + '';
      //ResultsRptStatusChngDateTime
      Result := Result + HL7_SEPARATOR + '';
      //ChargeToPractice
      Result := Result + HL7_SEPARATOR + '';
      //DiagnosticServSectID
      Result := Result + HL7_SEPARATOR + '';
      //ResultStatus
      Result := Result + HL7_SEPARATOR + '';
      //ParentResult
      Result := Result + HL7_SEPARATOR + '';
      //QuantityOrTiming
      Result := Result + HL7_SEPARATOR + '';
      //ResultCopiesTo
      Result := Result + HL7_SEPARATOR + '';
      //Parent
      Result := Result + HL7_SEPARATOR + '';
      //TransportationMode
      Result := Result + HL7_SEPARATOR + '';
      //ReasonForStudy
      Result := Result + HL7_SEPARATOR + '';
      //PrincipalResultInterpreter
      Result := Result + HL7_SEPARATOR + '';
      //AssistantResultInterpreter
      Result := Result + HL7_SEPARATOR + '';
      //Technician
      Result := Result + HL7_SEPARATOR + '';
      //Transcriptionist
      Result := Result + HL7_SEPARATOR + '';
      //ScheduledDateTime
      Result := Result + HL7_SEPARATOR + '';
      //NumberOfSampleContainers
      Result := Result + HL7_SEPARATOR + '';
      //TransportLogisticsOfCollectedSample
      Result := Result + HL7_SEPARATOR + '';
      //CollectorsComment
      Result := Result + HL7_SEPARATOR + '';
      //TransportArrangementResponsibility
      Result := Result + HL7_SEPARATOR + '';
      //TransportArranged
      Result := Result + HL7_SEPARATOR + '';
      //EscortRequired
      Result := Result + HL7_SEPARATOR + '';
      //PlannedPatientTransportComment
      Result := Result + HL7_SEPARATOR + '';
    end;
  except

  end;
end;

procedure THL7Message.LoadOBR(var ASQLQuery: TSQLQuery;
  var AOBRStrings: TStrings);
var
  OBRStr: string;
begin
  ASQLQuery.SQL.Text :=
    'select * from accession a ' +
    'order by a.accession_id';
  try
    ASQLQuery.Open;
    while not ASQLQuery.Eof do
    with ASQLQuery do
    begin
      //SegnentName
      OBRStr := 'OBR';
      //PlacerOrderNumber
      OBRStr := OBRStr + HL7_SEPARATOR + '1';
      //FillerOrderNumber
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //UniversalServiceID
      OBRStr := OBRStr + HL7_SEPARATOR + FieldByName('accession_number').AsString;
      //Priority
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //RequestedDateTime
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //ObservationDateTime
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //ObservationEndDateTime
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //CollectionVolume
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //CollectorIdentifier
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //SpecimenActionCode
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //DangerCode
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //RelevantClinicalInfo
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //SpecimenReceivedDateTime
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //SpecimenSource
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //OrderingProvider
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //OrderCallbackPhoneNumber
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //PlacerField1
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //PlacerField2
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //FillerField1
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //FillerField2
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //ResultsRptStatusChngDateTime
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //ChargeToPractice
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //DiagnosticServSectID
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //ResultStatus
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //ParentResult
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //QuantityOrTiming
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //ResultCopiesTo
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //Parent
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //TransportationMode
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //ReasonForStudy
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //PrincipalResultInterpreter
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //AssistantResultInterpreter
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //Technician
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //Transcriptionist
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //ScheduledDateTime
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //NumberOfSampleContainers
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //TransportLogisticsOfCollectedSample
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //CollectorsComment
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //TransportArrangementResponsibility
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //TransportArranged
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //EscortRequired
      OBRStr := OBRStr + HL7_SEPARATOR + '';
      //PlannedPatientTransportComment
      OBRStr := OBRStr + HL7_SEPARATOR + '';

      AOBRStrings.Add(OBRStr);
      Next;
    end;
  except

  end;
end;

procedure THL7Message.LoadOBX(var ASQLQuery: TSQLQuery;
  var AOBXStrings: TStrings);
var
  I: Integer;
  Speciman: TSpeciman;
begin
  if Assigned(SpecimanList) then
    SpecimanList.Load(ASQLQuery);

  //SpecimenLabel
  for I := 0 to SpecimanList.Count - 1 do
  begin
    Speciman := TSpeciman(SpecimanList[I]);
    if Assigned(Speciman) then
      if Speciman.SpecimenLabel <> EmptyStr then
        AOBXStrings.Add(HL7_SGM_OBX + HL7_SEPARATOR +
                   IntToStr(AOBXStrings.Count + 1) + HL7_SEPARATOR +
                   'TX' + HL7_SEPARATOR +

                   '00000-0' + HL7_SEPARATOR_COMPONENT + OBX_TEXT_ST_SPEC_LABEL +
                   HL7_SEPARATOR_COMPONENT + 'LN' + HL7_SEPARATOR +
                   Speciman.Id + HL7_SEPARATOR +
                   Speciman.SpecimenLabel + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   'F'
                   );
  end;

  //GrossDescription
  for I := 0 to SpecimanList.Count - 1 do
  begin
    Speciman := TSpeciman(SpecimanList[I]);
    if Assigned(Speciman) then
      if Speciman.GrossDescription <> EmptyStr then
        AOBXStrings.Add(HL7_SGM_OBX + HL7_SEPARATOR +
                   IntToStr(AOBXStrings.Count + 1) + HL7_SEPARATOR +
                   'TX' + HL7_SEPARATOR +

                   '00000-0' + HL7_SEPARATOR_COMPONENT + OBX_TEXT_ST_GROSS_DESC +
                   HL7_SEPARATOR_COMPONENT + 'LN' + HL7_SEPARATOR +
                   Speciman.Id + HL7_SEPARATOR +
                   Speciman.GrossDescription + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   'F'
                   );
  end;

  //MicroscopicObserv
  for I := 0 to SpecimanList.Count - 1 do
  begin
    Speciman := TSpeciman(SpecimanList[I]);
    if Assigned(Speciman) then
      if Speciman.MicroscopicObserv <> EmptyStr then
        AOBXStrings.Add(HL7_SGM_OBX + HL7_SEPARATOR +
                   IntToStr(AOBXStrings.Count + 1) + HL7_SEPARATOR +
                   'TX' + HL7_SEPARATOR +

                   '00000-0' + HL7_SEPARATOR_COMPONENT + OBX_TEXT_ST_MICROSCOPIC_OBSERV +
                   HL7_SEPARATOR_COMPONENT + 'LN' + HL7_SEPARATOR +
                   Speciman.Id + HL7_SEPARATOR +
                   Speciman.MicroscopicObserv + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   'F'
                   );
  end;

  //Diagnosis
  for I := 0 to SpecimanList.Count - 1 do
  begin
    Speciman := TSpeciman(SpecimanList[I]);
    if Assigned(Speciman) then
      if Speciman.Diagnosis <> EmptyStr then
        AOBXStrings.Add(HL7_SGM_OBX + HL7_SEPARATOR +
                   IntToStr(AOBXStrings.Count + 1) + HL7_SEPARATOR +
                   'TX' + HL7_SEPARATOR +

                   '00000-0' + HL7_SEPARATOR_COMPONENT + OBX_TEXT_ST_FINAL_DIAGNOSTIC +
                   HL7_SEPARATOR_COMPONENT + 'LN' + HL7_SEPARATOR +
                   Speciman.Id + HL7_SEPARATOR +
                   Speciman.Diagnosis + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   '' + HL7_SEPARATOR +
                   'F'
                   );
  end;
end;

function THL7Message.LoadPID(var ASQLQuery: TSQLQuery;
  var APIDStrings: TStrings): TStrings;
var
  PIDStr: string;
begin
  ASQLQuery.SQL.Text :=
    'select * from patient p ' +
    'order by p.patient_id';
  try
    ASQLQuery.Open;
    while not ASQLQuery.Eof do
    with ASQLQuery do
    begin
      //Segment Name
      PIDStr := 'PID';
      //PatientID
      PIDStr := PIDStr + HL7_SEPARATOR + IntToStr(FieldByName('patient_id').AsInteger);
      //PatientIDExt
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //PatientIDInt
      PIDStr := PIDStr + HL7_SEPARATOR + FieldByName('medical_record').AsString;
      //PatientIDAlt
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //PatientName
      PIDStr := PIDStr + HL7_SEPARATOR + FieldByName('last_name').AsString;
      PIDStr := PIDStr + HL7_SEPARATOR_COMPONENT + FieldByName('first_name').AsString;
      //MothMaidenName
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //DateBirth
      PIDStr := PIDStr + HL7_SEPARATOR + DateToMedDateStr(SQLiteDateStrToDate(FieldByName('date_of_birth').AsString));
      //Gender
      PIDStr := PIDStr + HL7_SEPARATOR + FieldByName('gender').AsString;
      //PatientAlias
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //Race
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //Address
      PIDStr := PIDStr + HL7_SEPARATOR + FieldByName('address').AsString;
      PIDStr := PIDStr + HL7_SEPARATOR_COMPONENT + '';
      PIDStr := PIDStr + HL7_SEPARATOR_COMPONENT + FieldByName('city').AsString;
      PIDStr := PIDStr + HL7_SEPARATOR_COMPONENT + FieldByName('state_province').AsString;
      PIDStr := PIDStr + HL7_SEPARATOR_COMPONENT + FieldByName('zip_postal_code').AsString;
      PIDStr := PIDStr + HL7_SEPARATOR_COMPONENT + '';
      //CountyCode
      PIDStr := PIDStr + HL7_SEPARATOR + FieldByName('country_region').AsString;
      //PhoneNumbHome
      PIDStr := PIDStr + HL7_SEPARATOR + FieldByName('home_phone').AsString;
      //PhoneNumbBusiness
      PIDStr := PIDStr + HL7_SEPARATOR + FieldByName('business_phone').AsString;
      //PrimaryLanguage
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //MaritalStatus
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //Religion
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //PatientAccountNumber
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //SSNNumb
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //DriverLicNumb
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //MothersIdentifie
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //EthnicGroup
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //BirthPlace
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //MultipleBirthIndicator
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //BirthOrder
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //Citizenship
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //VeteransMilitaryStatus
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //Nationality
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //PatientDeathDateTime
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //PatientDeathIndicator
      PIDStr := PIDStr + HL7_SEPARATOR + '';
      //End segment
      PIDStr := PIDStr + HL7_SEPARATOR;

      APIDStrings.Add(PIDStr);
      Next;
    end;
  except

  end;
end;

class function THL7Message.LoadPIDById(var ASQLQuery: TSQLQuery; AId: Integer): string;
begin
  Result := 'PID';
  ASQLQuery.SQL.Text :=
    'select a.accession_id, t.* from accession a ' +
    'left join patient t on a.patient_id = t.patient_id ' +
    'where a.accession_id = ' + IntToStr(AId);
  try
    ASQLQuery.Open;
    if not ASQLQuery.Eof then
    with ASQLQuery do
    begin
      //PatientID
      Result := Result + HL7_SEPARATOR + IntToStr(FieldByName('patient_id').AsInteger);
      //PatientIDExt
      Result := Result + HL7_SEPARATOR + '';
      //PatientIDInt
      Result := Result + HL7_SEPARATOR + FieldByName('medical_record').AsString;
      //PatientIDAlt
      Result := Result + HL7_SEPARATOR + '';
      //PatientName
      Result := Result + HL7_SEPARATOR + FieldByName('last_name').AsString;
      Result := Result + HL7_SEPARATOR_COMPONENT + FieldByName('first_name').AsString;
      //MothMaidenName
      Result := Result + HL7_SEPARATOR + '';
      //DateBirth
      Result := Result + HL7_SEPARATOR + DateToMedDateStr(SQLiteDateStrToDate(FieldByName('date_of_birth').AsString));
      //Gender
      Result := Result + HL7_SEPARATOR + FieldByName('gender').AsString;
      //PatientAlias
      Result := Result + HL7_SEPARATOR + '';
      //Race
      Result := Result + HL7_SEPARATOR + '';
      //Address
      Result := Result + HL7_SEPARATOR + FieldByName('address').AsString;
      Result := Result + HL7_SEPARATOR_COMPONENT + '';
      Result := Result + HL7_SEPARATOR_COMPONENT + FieldByName('city').AsString;
      Result := Result + HL7_SEPARATOR_COMPONENT + FieldByName('state_province').AsString;
      Result := Result + HL7_SEPARATOR_COMPONENT + FieldByName('zip_postal_code').AsString;
      Result := Result + HL7_SEPARATOR_COMPONENT + '';
      //CountyCode
      Result := Result + HL7_SEPARATOR + FieldByName('country_region').AsString;
      //PhoneNumbHome
      Result := Result + HL7_SEPARATOR + FieldByName('home_phone').AsString;
      //PhoneNumbBusiness
      Result := Result + HL7_SEPARATOR + FieldByName('business_phone').AsString;
      //PrimaryLanguage
      Result := Result + HL7_SEPARATOR + '';
      //MaritalStatus
      Result := Result + HL7_SEPARATOR + '';
      //Religion
      Result := Result + HL7_SEPARATOR + '';
      //PatientAccountNumber
      Result := Result + HL7_SEPARATOR + '';
      //SSNNumb
      Result := Result + HL7_SEPARATOR + '';
      //DriverLicNumb
      Result := Result + HL7_SEPARATOR + '';
      //MothersIdentifie
      Result := Result + HL7_SEPARATOR + '';
      //EthnicGroup
      Result := Result + HL7_SEPARATOR + '';
      //BirthPlace
      Result := Result + HL7_SEPARATOR + '';
      //MultipleBirthIndicator
      Result := Result + HL7_SEPARATOR + '';
      //BirthOrder
      Result := Result + HL7_SEPARATOR + '';
      //Citizenship
      Result := Result + HL7_SEPARATOR + '';
      //VeteransMilitaryStatus
      Result := Result + HL7_SEPARATOR + '';
      //Nationality
      Result := Result + HL7_SEPARATOR + '';
      //PatientDeathDateTime
      Result := Result + HL7_SEPARATOR + '';
      //PatientDeathIndicator
      Result := Result + HL7_SEPARATOR + '';
      //End segment
      Result := Result + HL7_SEPARATOR;
    end;
  except

  end;
end;

procedure THL7Message.SaveAccession(ASQLQuery: TSQLQuery);
var
  Accession: TAccessionSpec;
  SqlStr: string;
begin
  Accession := TAccessionSpec(OBR);
  with ASQLQuery do
  begin
    SqlStr := 'INSERT OR REPLACE INTO accession ' +
              '(accession_number, ' +
              ' clinical_information, ' +
              ' specimen_count, ' +
              ' patient_id, ' +
              ' date_obtained) ' +
              'VALUES (:accession_number, ' +
                      ':clinical_information, ' +
                      ':specimen_count, ' +
                      ':patient_id, ' +
                      ':date_obtained)';
    SQL.Text := SqlStr;
    ParamByName('accession_number').AsString := Accession.AccessionNumber;
    ParamByName('clinical_information').AsString := Accession.RelevantClinicalInfo;
    ParamByName('specimen_count').AsInteger := Accession.NumberOfSampleContainers;
    ParamByName('patient_id').AsInteger := PID.PatientID;
    ParamByName('date_obtained').AsString := DateToSQLiteDateStr(Accession.ObservationDateTime);
    ExecSQL;
  end;
end;

procedure THL7Message.SavePatient(ASQLQuery: TSQLQuery);
var
  Patient: TPatient;
  SqlStr: string;
begin
  Patient := TPatient(PID);
  if Patient.PatientID > 0 then
  with ASQLQuery do
  begin
    SqlStr := 'INSERT OR REPLACE INTO patient ' +
              '(patient_id, ' +
              ' last_name, ' +
              ' medical_record, ' +
              ' first_name, ' +
              ' date_of_birth, ' +
              ' business_phone, ' +
              ' home_phone, ' +
              ' address, ' +
              ' city, ' +
              ' state_province, ' +
              ' zip_postal_code, ' +
              ' country_region, ' +
              ' gender, ' +
              ' marital_status, ' +
              ' full_name) ' +
              'VALUES (:patient_id, ' +
                      ':last_name, ' +
                      ':medical_record, ' +
                      ':first_name, ' +
                      ':date_of_birth, ' +
                      ':business_phone, ' +
                      ':home_phone, ' +
                      ':address, ' +
                      ':city, ' +
                      ':state_province, ' +
                      ':zip_postal_code, ' +
                      ':country_region, ' +
                      ':gender, ' +
                      ':marital_status, ' +
                      ':full_name)';
    SQL.Text := SqlStr;
    ParamByName('patient_id').AsInteger := Patient.PatientID;
    ParamByName('last_name').AsString := Patient.Surname;
    ParamByName('medical_record').AsString := Patient.PatientIDInt;
    ParamByName('first_name').AsString := Patient.Firstname;
    ParamByName('date_of_birth').AsString := DateToSQLiteDateStr(Patient.DTBirth);
    ParamByName('business_phone').AsString := Patient.PhoneNumbBusiness;
    ParamByName('home_phone').AsString := Patient.PhoneNumbHome;
    ParamByName('address').AsString := Patient.Address1;
    ParamByName('city').AsString := Patient.City;
    ParamByName('state_province').AsString := Patient.ProvinceCode;
    ParamByName('zip_postal_code').AsString := Patient.PostalCode;
    ParamByName('country_region').AsString := Patient.CountyCode;
    ParamByName('gender').AsString := Patient.Gender;
    ParamByName('marital_status').AsString := Patient.MaritalStatus;
    ParamByName('full_name').AsString := Patient.FullName;
    ExecSQL;
  end;
end;

procedure THL7Message.SaveSpecimen(ASQLQuery: TSQLQuery);
begin
  SpecimanList.SaveToDB(ASQLQuery, TAccessionSpec(OBR).AccessionNumber);
end;

procedure THL7Message.SaveToDB(ASQLQuery: TSQLQuery);
begin
  if CheckMessage then
  begin
    SavePatient(ASQLQuery);
    SaveAccession(ASQLQuery);
    SaveSpecimen(ASQLQuery);
  end;
end;

function THL7Message.ToString: string;
var
  StringList: TStrings;
  I: Integer;
begin
  StringList := TStringList.Create;
  try
    //MSH
    StringList.Add(MSH.ToString);
    //PID
    for I := 0 to PIDList.Count - 1 do
      StringList.Add(TPID(PIDList[I]).ToString);
    //OBR
    for I := 0 to OBRList.Count - 1 do
      StringList.Add(TOBR(OBRList[I]).ToString);
    //OBX
    for I := 0 to OBXList.Count - 1 do
      StringList.Add(TOBX(OBXList[I]).ToString);
    Result := StringList.Text;
  finally
    StringList.Free;
  end;
end;

{ TMSH }

function TMSH.GetAcceptAcknowledgmentType: string;
begin
  Result := GetValue(Integer(msheAcceptAcknowledgmentType));
end;

function TMSH.GetAltCharacterSetHandlingScheme: string;
begin
  Result := GetValue(Integer(msheAltCharacterSetHandlingScheme));
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

function TMSH.GetMsgProfileId: string;
begin
  Result := GetValue(Integer(msheMsgProfileId));
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

function TMSH.GetReceivNetworkAddress: string;
begin
  Result := GetValue(Integer(msheReceivNetworkAddress));
end;

function TMSH.GetReceivResponsibleOrg: string;
begin
  Result := GetValue(Integer(msheReceivResponsibleOrg));
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

function TMSH.GetSendNetworkAddress: string;
begin
  Result := GetValue(Integer(msheSendNetworkAddress));
end;

function TMSH.GetSendResponsibleOrg: string;
begin
  Result := GetValue(Integer(msheSendResponsibleOrg));
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
            PrincipalLangMsg + HL7_SEPARATOR +
            AltCharacterSetHandlingScheme + HL7_SEPARATOR +
            MsgProfileId + HL7_SEPARATOR +
            SendResponsibleOrg + HL7_SEPARATOR +
            ReceivResponsibleOrg + HL7_SEPARATOR +
            SendNetworkAddress + HL7_SEPARATOR +
            ReceivNetworkAddress;
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

function TOBR.GetNumberOfSampleContainers: Integer;
begin
  Result := StrToIntDef(GetValue(Integer(obreNumberOfSampleContainers)), 0);
end;

function TOBR.GetObservationDateTime: TDateTime;
begin
  Result := MedDateTimeStrToDateTime(GetValue(Integer(obreObservationDateTime)));
end;

function TOBR.GetObservationEndDateTime: TDateTime;
begin
  Result := MedDateTimeStrToDateTime(GetValue(Integer(obreObservationEndDateTime)));
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
            DateTimeToMedDateTimeStr(ObservationDateTime) + HL7_SEPARATOR +
            DateTimeToMedDateTimeStr(ObservationEndDateTime) + HL7_SEPARATOR +
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
            IntToStr(NumberOfSampleContainers) + HL7_SEPARATOR +
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

function TOBX.GetOBXNumber: string;
begin
  Result := GetValue(Integer(obxeOBXNumber));
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
            OBXNumber + HL7_SEPARATOR +
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

{ TAccession }

function TAccessionSpec.GetAccessionNumber: string;
begin
  Result := GetValue(Integer(obreUniversalServiceID));
end;

function TAccessionSpec.GetNamespaceId: string;
begin
  Result := GetSubElement(FillerOrderNumber, HL7_SEPARATOR_COMPONENT, Integer(afnNamespaceId));
end;

function TAccessionSpec.GetPriorityId: string;
begin
  Result := GetSubElement(Priority, HL7_SEPARATOR_COMPONENT, 0);
end;

function TAccessionSpec.GetSpecimenLabel: string;
begin
  Result := GetSubElement(SpecimenSource, HL7_SEPARATOR_COMPONENT, Integer(sssAdditives));
end;

function TAccessionSpec.GetSurgicalProcedure: string;
begin
  Result := GetSubElement(SpecimenSource, HL7_SEPARATOR_COMPONENT, Integer(sssFreeText));
end;

{ TOBXList }

function TOBXList.GetTextSTByTypeAndId(AValueType, AIdentifier: string): string;
var
  I: Integer;
  OBX: TOBXSpec;
begin
  for I := 0 to Count - 1 do
  begin
    OBX := TOBXSpec(Items[I]);
    if Assigned(OBX) then
      if OBX.ValueType = AValueType then
        if OBX.Identifier = AIdentifier then
        begin
          Result := OBX.TextST;
          Break;
        end;
  end;
end;

{ TOBXSpec }

function TOBXSpec.GetComment: string;
begin
  if TextST = OBX_TEXT_ST_SPEC_LABEL then
    Result := GetSubElement(ObservationIdentifier, HL7_SEPARATOR_COMPONENT, Integer(ssoTextST));
end;

function TOBXSpec.GetDiagnosis: string;
begin
  Result := '';
  if TextST = OBX_TEXT_ST_FINAL_DIAGNOSTIC then
    Result := GetValue(Integer(obxeObservationValue));
end;

function TOBXSpec.GetGrossDescription: string;
begin
  Result := '';
  if TextST = OBX_TEXT_ST_GROSS_DESC then
    Result := GetValue(Integer(obxeObservationValue));
end;

function TOBXSpec.GetIdentifier: string;
begin
  Result := GetSubElement(ObservationIdentifier, HL7_SEPARATOR_COMPONENT, Integer(ssoIdentifierST));
end;

function TOBXSpec.GetMicroscopicObserv: string;
begin
  Result := '';
  if TextST = OBX_TEXT_ST_MICROSCOPIC_OBSERV then
    Result := GetValue(Integer(obxeObservationValue));
end;

function TOBXSpec.GetSpecimenLabel: string;
begin
  Result := '';
  if TextST = OBX_TEXT_ST_SPEC_LABEL then
    Result := GetValue(Integer(obxeObservationValue));
end;

function TOBXSpec.GetTextST: string;
begin
  Result := GetSubElement(ObservationIdentifier, HL7_SEPARATOR_COMPONENT, Integer(ssoTextST));
end;

{ TSpeciman }

constructor TSpeciman.Create(AId: string);
begin
  FId := AId;
end;

constructor TSpeciman.Create(AId, AMicroscopicObserv, ADiagnosis, AGrossDescription,
  ASpecimenLabel: string);
begin
  FId := AId;
  FMicroscopicObserv := AMicroscopicObserv;
  FDiagnosis := ADiagnosis;
  FGrossDescription := AGrossDescription;
  FSpecimenLabel := ASpecimenLabel;
end;

function TSpeciman.ToString: string;
begin
//  Result := HL7_SGM_OBX + HL7_SEPARATOR +
//            Id + HL7_SEPARATOR +
//            'TX' + HL7_SEPARATOR +
//
//            ObservationSubID + HL7_SEPARATOR +
//            ObservationValue + HL7_SEPARATOR +
//            Units + HL7_SEPARATOR +
//            ReferencesRange + HL7_SEPARATOR +
//            AbnormalFlags + HL7_SEPARATOR +
//            Probability + HL7_SEPARATOR +
//            NatureOfAbnormalTest + HL7_SEPARATOR +
//            ObservResultStatus + HL7_SEPARATOR +
//            DateLastObsNormalValues + HL7_SEPARATOR +
//            UserDefinedAccessChecks + HL7_SEPARATOR +
//            DateTimeOfObservation + HL7_SEPARATOR +
//            ProducersID + HL7_SEPARATOR +
//            ResponsibleObserver + HL7_SEPARATOR +
//            ObservationMethod + HL7_SEPARATOR;
end;

{ TSpecimanList }

function TSpecimanList.AddSpeciman(AId: string): TSpeciman;
begin
  Add(TSpeciman.Create(AId));
  Result := TSpeciman(Items[Count - 1]);
end;

function TSpecimanList.GetSpecimanById(AId: string): TSpeciman;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to Count - 1 do
  if TSpeciman(Items[I]).Id = AId then
  begin
    Result := TSpeciman(Items[I]);
    Break;
  end;
end;

function TSpecimanList.IsExist(AId: string): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to Count - 1 do
  if TSpeciman(Items[I]).Id = AId then
  begin
    Result := True;
    Break;
  end;
end;

procedure TSpecimanList.Load(var ASQLQuery: TSQLQuery);
begin
  ASQLQuery.SQL.Text :=
    'select * from specimen s ' +
    'order by s.specimen_id ';
//  ASQLQuery.SQL.Text :=
//    'select a.accession_id, a.accession_number, t.* from accession a ' +
//    'left join specimen t on a.accession_number = t.accession_number ' +
//    'where a.accession_id = ' + IntToStr(AId);
  try
    ASQLQuery.Open;
    while not ASQLQuery.Eof do
    with ASQLQuery do
    begin
      Add(TSpeciman.Create(
        IntToStr(Count + 1),
        FieldByName('microscopic_description').AsString,
        FieldByName('diagnosis').AsString,
        FieldByName('gross_description').AsString,
        FieldByName('specimen_label').AsString));
      Next;
    end;
  except

  end;
end;

procedure TSpecimanList.SaveToDB(ASQLQuery: TSQLQuery;
  AAccessionNumber: string);
var
  SqlStr: string;
  I: Integer;
  Speciman: TSpeciman;
begin
  for I := 0 to Count - 1 do
  with ASQLQuery do
  begin
    Speciman := TSpeciman(Items[I]);
    SqlStr := 'INSERT OR REPLACE INTO specimen ' +
              '(accession_number, ' +
              ' specimen_label, ' +
              ' microscopic_description, ' +
              ' gross_description, ' +
              ' diagnosis) ' +
              'VALUES (:accession_number, ' +
                      ':specimen_label, ' +
                      ':microscopic_description, ' +
                      ':gross_description, ' +
                      ':diagnosis)';
    SQL.Text := SqlStr;
    ParamByName('accession_number').AsString := AAccessionNumber;
    ParamByName('specimen_label').AsString := Speciman.SpecimenLabel;
    ParamByName('microscopic_description').AsString := Speciman.MicroscopicObserv;
    ParamByName('gross_description').AsString := Speciman.GrossDescription;
    ParamByName('diagnosis').AsString := Speciman.Diagnosis;
    ExecSQL;
  end;
end;

end.

