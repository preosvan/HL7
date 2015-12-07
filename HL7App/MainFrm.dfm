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
    ExplicitLeft = 8
    ExplicitTop = 134
    ExplicitWidth = 457
    ExplicitHeight = 89
  end
  object pnBottom: TPanel
    Left = 0
    Top = 573
    Width = 738
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 72
    ExplicitTop = 416
    ExplicitWidth = 185
    DesignSize = (
      738
      41)
    object btnPatient: TButton
      Left = 608
      Top = 6
      Width = 121
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Patient'
      TabOrder = 0
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
      
        'PID|1|2|001677980|3|SMITH^CURTIS^SC|MothersMaidenName|19680219|M' +
        '|PatientAlias|Race|Address1^Address2^City^ProvinceCode^PostalCod' +
        'e^SEERCountryGeocode|||||||929645156318|123456789|')
    TabOrder = 2
    WordWrap = False
    ExplicitWidth = 475
  end
end
