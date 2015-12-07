unit MedModelConst;

interface

type
  TMSHElement = (msheSegnentName);

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

  TOBRElement = (obreSegnentName);

  TOBXElement = (obxeSegnentName);

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

implementation

end.
