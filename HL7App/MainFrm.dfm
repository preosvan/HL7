object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Testing HL7'
  ClientHeight = 614
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
    Top = 65
    Width = 738
    Height = 508
    Align = alClient
    TabOrder = 0
    ExplicitTop = 89
    ExplicitHeight = 484
  end
  object pnBottom: TPanel
    Left = 0
    Top = 573
    Width = 738
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      738
      41)
    object btnMSH: TButton
      Left = 224
      Top = 6
      Width = 121
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'MSH'
      TabOrder = 0
      OnClick = btnMSHClick
    end
    object btnPatient: TButton
      Left = 351
      Top = 6
      Width = 121
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Patient'
      TabOrder = 1
      OnClick = btnPatientClick
    end
    object btnOBR: TButton
      Left = 478
      Top = 6
      Width = 121
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OBR'
      TabOrder = 2
      OnClick = btnOBRClick
    end
    object btnOBX: TButton
      Left = 605
      Top = 6
      Width = 121
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OBX'
      TabOrder = 3
      OnClick = btnOBXClick
    end
  end
  object meMsg: TMemo
    Left = 0
    Top = 0
    Width = 738
    Height = 65
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
        '4733|')
    TabOrder = 2
    WordWrap = False
  end
end
