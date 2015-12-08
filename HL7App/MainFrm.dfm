object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
    Top = 89
    Width = 738
    Height = 484
    Align = alClient
    TabOrder = 0
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
      Left = 480
      Top = 6
      Width = 121
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'MSH'
      TabOrder = 0
      OnClick = btnMSHClick
    end
    object btnPatient: TButton
      Left = 607
      Top = 6
      Width = 121
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Patient'
      TabOrder = 1
      OnClick = btnPatientClick
    end
  end
  object meMsg: TMemo
    Left = 0
    Top = 0
    Width = 738
    Height = 89
    Align = alTop
    Lines.Strings = (
      
        'MSH|^~\&|XXXX|C|PRIORITYHEALTH|PRIORITYHEALTH|20080511103530||OR' +
        'U^R01|Q335939501T337311002|P|2.3|||'
      
        'PID|1|2|001677980|3|SMITH^CURTIS^SC|MothersMaidenName|19680219|M' +
        '|PatientAlias|Race|Address1^Address2^City^ProvinceCode^PostalCod' +
        'e^SEERCountryGeocode|||||||929645156318|123456789|')
    TabOrder = 2
    WordWrap = False
  end
end
