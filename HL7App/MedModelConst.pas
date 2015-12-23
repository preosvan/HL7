unit MedModelConst;

interface

type
  THL7SegmentType = (hlsNone,
                     hlsMSH,
                     hlsPID,
                     hlsOBR,
                     hlsOBX);

  TMSHElement = (msheSegnentName,
                 msheEncodingCharacters,
                 msheSendingApp,
                 msheSendingFacility,
                 msheReceivingApp,
                 msheReceivingFacility,
                 msheDateTimeMsg,
                 msheSecurity,
                 msheMessageType,
                 msheMessageControlID,
                 msheProcessingID,
                 msheVersionID,
                 msheSequenceNumber,
                 msheContinuationPointer,
                 msheAcceptAcknowledgmentType,
                 msheApplicationAcknowledgmentType,
                 msheCountryCode,
                 msheCharacterSet,
                 mshePrincipalLangMsg,
                 msheAltCharacterSetHandlingScheme,
                 msheMsgProfileId,
                 msheSendResponsibleOrg,
                 msheReceivResponsibleOrg,
                 msheSendNetworkAddress,
                 msheReceivNetworkAddress);

  TPIDElement = (pideSegmentName,
                 pidePatientID,
                 pidePatientIDExt,
                 pidePatientIDInt,
                 pidePatientIDAlt,
                 pidePatientName,
                 pideMothMaidenName,
                 pideDateBirth,
                 pideSex,
                 pidePatientAlias,
                 pideRace,
                 pidePatientAddress,
                 pideCountyCode,
                 pidePhoneNumberHome,
                 pidePhoneNumberBusiness,
                 pidePrimaryLanguage,
                 pideMaritalStatus,
                 pideReligion,
                 pidePatientAccountNumber,
                 pideSSNNumber,
                 pideDriverLicenseNumber,
                 pideMothersIdentifie,
                 pideEthnicGroup,
                 pideBirthPlace,
                 pideMultipleBirthIndicator,
                 pideBirthOrder,
                 pideCitizenship,
                 pideVeteransMilitaryStatus,
                 pideNationality,
                 pidePatientDeathDateTime,
                 pidePatientDeathIndicator,
                 pideIdentityUnknownIndicator,
                 pideIdentityReliabilityCode,
                 pideLastUpdateDateTime,
                 pideLastUpdateFacility,
                 pideSpeciesCode,
                 pideBreedCode,
                 pideStrain,
                 pideProductionClassCode,
                 pideTribalCitizenshi);

  TOBRElement = (obreSegnentName,
                 obrePlacerOrderNumber,
                 obreFillerOrderNumber,
                 obreUniversalServiceID,
                 obrePriority,
                 obreRequestedDateTime,
                 obreObservationDateTime,
                 obreObservationEndDateTime,
                 obreCollectionVolume,
                 obreCollectorIdentifier,
                 obreSpecimenActionCode,
                 obreDangerCode,
                 obreRelevantClinicalInfo,
                 obreSpecimenReceivedDateTime,
                 obreSpecimenSource,
                 obreOrderingProvider,
                 obreOrderCallbackPhoneNumber,
                 obrePlacerField1,
                 obrePlacerField2,
                 obreFillerField1,
                 obreFillerField2,
                 obreResultsRptStatusChngDateTime,
                 obreChargeToPractice,
                 obreDiagnosticServSectID,
                 obreResultStatus,
                 obreParentResult,
                 obreQuantityOrTiming,
                 obreResultCopiesTo,
                 obreParent,
                 obreTransportationMode,
                 obreReasonForStudy,
                 obrePrincipalResultInterpreter,
                 obreAssistantResultInterpreter,
                 obreTechnician,
                 obreTranscriptionist,
                 obreScheduledDateTime,
                 obreNumberOfSampleContainers,
                 obreTransportLogisticsOfCollectedSample,
                 obreCollectorsComment,
                 obreTransportArrangementResponsibility,
                 obreTransportArranged,
                 obreEscortRequired,
                 obrePlannedPatientTransportComment);

  TOBXElement = (obxeSegnentName,
                 obxeOBXNumber,
                 obxeValueType,
                 obxeObservationIdentifier,
                 obxeObservationSubID,
                 obxeObservationValue,
                 obxeUnits,
                 obxeReferencesRange,
                 obxeAbnormalFlags,
                 obxeProbability,
                 obxeNatureOfAbnormalTest,
                 obxeObservResultStatus,
                 obxeDateLastObsNormalValues,
                 obxeUserDefinedAccessChecks,
                 obxeDateTimeOfObservation,
                 obxeProducersID,
                 obxeResponsibleObserver,
                 obxeObservationMethod);

  //SubElements
  TPatientSubName = (psnSurname,
                     psnFirstName,
                     psnInitials);

  TPatientSubAddress = (psaAddress1,
                        psaAddress2,
                        psaCity,
                        psaProvinceCode,
                        psaPostalCode,
                        psaSEERCountryGeocode);

  TAccessionFillerNumber = (afnEntityId,
                            afnNamespaceId,
                            afnUniversalId,
                            afnUniversalIdType);

  TSpecimenSubSource = (sssName,
                        sssAdditives,
                        sssFreeText,
                        sssBodySite,
                        sssSiteModifier,
                        sssCollectionMethodModifier);

  TSpecimenSubObservationIdent = (ssoIdentifierST,
                                  ssoTextST,
                                  ssoNameCodingSys,
                                  ssoAltIdentifierST,
                                  ssoAltTextST,
                                  ssoAltNameCodingSys);


const
  HL7_SEPARATOR = '|';
  HL7_SEPARATOR_COMPONENT = '^';

  HL7_SRV_ADDRESS = 'localhost';
  HL7_PORT = 20032;

  HL7_SGM_NONE = '';
  HL7_SGM_MSH = 'MSH';
  HL7_SGM_PID = 'PID';
  HL7_SGM_OBR = 'OBR';
  HL7_SGM_OBX = 'OBX';

  OBX_TEXT_ST_SPEC_LABEL = 'Path report.site of origin';
  OBX_TEXT_ST_GROSS_DESC = 'Path report.gross description';
  OBX_TEXT_ST_MICROSCOPIC_OBSERV = 'Path report.microscopic observation';
  OBX_TEXT_ST_FINAL_DIAGNOSTIC = 'Path report.final diagnosis';


implementation

end.
