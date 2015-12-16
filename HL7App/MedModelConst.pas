unit MedModelConst;

interface

type
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
                 mshePrincipalLangMsg);

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
                 pidePatientDeathIndicator);

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


implementation

end.
