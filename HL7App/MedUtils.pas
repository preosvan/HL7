unit MedUtils;

interface

function DateToMedDateStr(ADate: TDate): string;
function DateTimeToMedDateTimeStr(ADateTime: TDateTime): string;
function GetSubElement(AElement: string; ADelimiter: Char;
  AIdxSubElement: Integer): string;
function MedDateStrToDate(AMedDate: string): TDate;
function MedDateTimeStrToDateTime(AMedDateTime: string): TDateTime;

implementation

uses
  System.SysUtils,
  System.Classes,
  DateUtils,
  MedModelConst;

function MedDateStrToDate(AMedDate: string): TDate;
var
  FS: TFormatSettings;
  DTDelim: string;
begin
  DTDelim := AMedDate;
  DTDelim := Copy(DTDelim, 7, 2) + '/' +
             Copy(DTDelim, 5, 2) + '/' +
             Copy(DTDelim, 1, 4);
  FS := TFormatSettings.Create;
  FS.ShortDateFormat := 'dd/mm/yyyy';
  FS.DateSeparator := '/';
  Result := StrToDateDef(DTDelim, 0, FS);
end;

function DateToMedDateStr(ADate: TDate): string;
begin
  Result := FormatDateTime('yyyymmdd', ADate);
end;

function DateTimeToMedDateTimeStr(ADateTime: TDateTime): string;
begin
  Result := DateToMedDateStr(DateOf(ADateTime)) + FormatDateTime('hhnnss', ADateTime);
end;

function MedDateTimeStrToDateTime(AMedDateTime: string): TDateTime;
var
  FS: TFormatSettings;
  DTDelim: string;
begin
  Result := MedDateStrToDate(Copy(AMedDateTime, 0, 8));

  DTDelim := AMedDateTime;
  DTDelim := Copy(DTDelim, 9, 2) + ':' +
             Copy(DTDelim, 11, 2) + ':' +
             Copy(DTDelim, 13, 2);
  FS := TFormatSettings.Create;
  FS.ShortTimeFormat := 'hh:nn:ss';
  FS.TimeSeparator := ':';
  Result := DateOf(Result) + TimeOf(StrToTimeDef(DTDelim, 0, FS));
end;

function GetSubElement(AElement: string; ADelimiter: Char;
  AIdxSubElement: Integer): string;
var
  StringList: TStrings;
begin
  Result := EmptyStr;
  StringList := TStringList.Create;
  try
    StringList.Delimiter := ADelimiter;
    StringList.DelimitedText := AElement;
    if StringList.Count > AIdxSubElement  then
      Result := StringList[AIdxSubElement];
  finally
    StringList.Free;
  end;
end;

end.
