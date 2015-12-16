object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Testing HL7'
  ClientHeight = 571
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object meParse: TMemo
    Left = 0
    Top = 97
    Width = 738
    Height = 433
    Align = alClient
    TabOrder = 0
    ExplicitTop = 65
    ExplicitHeight = 508
  end
  object pnBottom: TPanel
    Left = 0
    Top = 530
    Width = 738
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 573
    DesignSize = (
      738
      41)
    object btnMSH: TButton
      Left = 16
      Top = 6
      Width = 100
      Height = 25
      Caption = 'MSH'
      TabOrder = 0
      OnClick = btnMSHClick
    end
    object btnPatient: TButton
      Left = 122
      Top = 6
      Width = 100
      Height = 25
      Caption = 'Patient'
      TabOrder = 1
      OnClick = btnPatientClick
    end
    object btnOBR: TButton
      Left = 228
      Top = 6
      Width = 100
      Height = 25
      Caption = 'OBR'
      TabOrder = 2
      OnClick = btnOBRClick
    end
    object btnOBX: TButton
      Left = 334
      Top = 6
      Width = 100
      Height = 25
      Caption = 'OBX'
      TabOrder = 3
      OnClick = btnOBXClick
    end
    object btnSave: TButton
      Left = 629
      Top = 6
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Save MSG'
      TabOrder = 4
      OnClick = btnSaveClick
    end
    object btnSend: TButton
      Left = 520
      Top = 6
      Width = 103
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Send'
      TabOrder = 5
      OnClick = btnSendClick
    end
    object SpinEditID: TSpinEdit
      Left = 456
      Top = 8
      Width = 58
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 6
      Value = 1
    end
  end
  object meMsg: TMemo
    Left = 0
    Top = 0
    Width = 738
    Height = 97
    Align = alTop
    Lines.Strings = (
      
        'MSH|^~\&|XXXX|C|PRIORITYHEALTH|PRIORITYHEALTH|20080511103530||OR' +
        'U^R01|Q335939501T337311002|P|2.3|||'
      
        'PID|1|2|001677980|3|SMITH^CURTIS^SC|MothersMaidenName|19680219|M' +
        '|PatientAlias|Race|Address1^Address2^City^ProvinceCode^PostalCod' +
        'e^SEERCountryGeocode|||||||929645156318|123456789|'
      
        'OBR|1|341856649^HNAM_ORDERID|000002006326002362|648088^Basic Met' +
        'abolic Panel|||20061122151600|||||||||1620^Hooker^Robert^L||||||' +
        '20061122154733|||F|||||||||||20061122140000|'
      
        'OBX|1|NM|GLU^Glucose Lvl|59|mg/dL|65-99^65^99|L|||F|||2006112215' +
        '4733|'
      'OBX|2|TX|&GDT^GrossSpecimenDescription|1|'
      'OBX|3|TX|&MDT^MicroscopicDescription|1|A|')
    TabOrder = 2
    WordWrap = False
  end
end
