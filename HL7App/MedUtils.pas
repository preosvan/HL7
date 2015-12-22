unit MedUtils;

interface

function DateToMedDateStr(ADate: TDate): string;
function DateTimeToMedDateTimeStr(ADateTime: TDateTime): string;
function DateToSQLiteDateStr(ADate: TDate): string;
function SQLiteDateStrToDate(ADate: string): TDate;
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

function DateToSQLiteDateStr(ADate: TDate): string;
var
  FS: TFormatSettings;
begin
  FS.ShortDateFormat := 'YYYY-MM-DD';
  FS.DateSeparator := '-';
  Result := DateToStr(ADate, FS);
end;

function SQLiteDateStrToDate(ADate: string): TDate;
var
  FS: TFormatSettings;
begin
  FS := TFormatSettings.Create;
  FS.ShortDateFormat := 'yyyy-mm-dd';
  FS.DateSeparator := '-';
  Result := StrToDateDef(ADate, 0, FS);
end;

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
  Result := EmptyStr;
  if ADate <> 0 then
    Result := FormatDateTime('yyyymmdd', ADate);
end;

function DateTimeToMedDateTimeStr(ADateTime: TDateTime): string;
begin
  Result := EmptyStr;
  if ADateTime <> 0 then
    Result := DateToMedDateStr(DateOf(ADateTime)) + FormatDateTime('hhnn', TimeOf(ADateTime));
end;

function MedDateTimeStrToDateTime(AMedDateTime: string): TDateTime;
var
  FS: TFormatSettings;
  DTDelim: string;
begin
  Result := MedDateStrToDate(Copy(AMedDateTime, 0, 8));

  DTDelim := AMedDateTime;
  DTDelim := Copy(DTDelim, 9, 2) + ':' +
             Copy(DTDelim, 11, 2);
  FS := TFormatSettings.Create;
  FS.ShortTimeFormat := 'hh:nn';
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
    StringList.StrictDelimiter := True;
    StringList.Delimiter := ADelimiter;
    StringList.DelimitedText := AElement;
    if StringList.Count > AIdxSubElement  then
      Result := StringList[AIdxSubElement];
  finally
    StringList.Free;
  end;
end;

end.
