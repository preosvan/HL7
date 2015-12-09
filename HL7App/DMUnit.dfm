object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object SQLConnection: TSQLConnection
    ConnectionName = 'SQLITECONNECTION'
    DriverName = 'Sqlite'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Sqlite'
      'Database=E:\DelphiProjects\_Kuhtin\HL7\DB\HL7_DB.sqlite')
    Left = 32
    Top = 16
  end
  object SQLQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 32
    Top = 72
  end
end
