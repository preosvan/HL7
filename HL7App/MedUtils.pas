unit MedUtils;

interface

function GetSubElement(AElement: string; ADelimiter: Char;
  AIdxSubElement: Integer): string;
function MedDateStrToDate(AMedDate: string): TDate;

implementation

uses
  System.SysUtils, System.Classes, MedModelConst;

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
