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
    Top = 241
    Width = 738
    Height = 289
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
    Height = 241
    Align = alTop
    Lines.Strings = (
      
        'MSH|^~\&||INDEPENDENT LAB SERVICES^33D1234567^CLIA|||20040728133' +
        '9||ORU^R01^ORU_R01|2004072813390045|P|2.5.1|||||||||VOL_V_30_ORU' +
        '_R01^NAACCR_CP^2.16.840.1.113883.9.8^ISO'
      
        'PID|1||123456789^^^^SS~00466144^^^^MR||McMuffin^Candy||19570706|' +
        'F||2106-3^White^HL70005|495 East Overshoot Drive^^Delmar^NY^1205' +
        '4^^H|||||M'
      
        'OBR|1||97 810430|11529-5^Surgical Pathology Study Report^LN|||20' +
        '0707251630|||123456^MYELOMUS^JOHN|||||TISS^Tissue^HL70070|594110' +
        'NY^CARING^CAREN^^M.D.^^^^NY_PHYSICIANLICENSE^^^^MD|||||||||F||||' +
        '|||109771&GLANCE&JUSTIN&&&&&&NY_PHYSICIANLICENSE'
      
        'OBX|1|TX|22637-3^Path report.final diagnosis^LN||Carcinoma of br' +
        'east. Post operative diagnosis: same.||||||F'
      
        'OBX|2|TX|22636-5^Path report.relevant Hx^LN||47-year old white f' +
        'emale with (L) UOQ breast mass||||||F'
      
        'OBX|3|TX|22633-2^Path report.site of origin^LN|1|left breast bio' +
        'psy||||||F'
      
        'OBX|4|TX|22633-2^Path report.site of origin^LN|2|apical axillary' +
        ' tissue||||||F'
      
        'OBX|5|TX|22633-2^Path report.site of origin^LN|3|contents of lef' +
        't radical mastectomy||||||F'
      
        'OBX|6|TX|22634-0^Path report.gross description^LN|1|Part #1 is l' +
        'abeled "left breast biopsy" and is received fresh after frozen s' +
        'ection preparation. It consists of a single firm nodule measurin' +
        'g 3cm in circular diameter and 1.5cm in thickness surrounded by ' +
        'adherent firbrofatty tissue. On section a pale gray, slightly mo' +
        'ttled appearance is revealed. Numerous sections are submitted fo' +
        'r permanent processing.||||||F'
      
        'OBX|7|TX|22634-0^Path report.gross description^LN|2|Part #2 is l' +
        'abeled "apical left axillary tissue" and is received fresh. It c' +
        'onsists of two amorphous fibrofatty tissue masses without grossl' +
        'y discernible lymph nodes therein. Both pieces are rendered into' +
        ' numerous sections and submitted in their entirety for history.|' +
        '|||||F'
      
        'OBX|8|TX|22634-0^Path report.gross description^LN|3|Part #3 is l' +
        'abeled "contents of left radical mastectomy" and is received fle' +
        'sh. It consists of a large ellipse of skin overlying breast tiss' +
        'ue, the ellipse measuring 20cm in length and 14 cm in height. A ' +
        'freshly sutured incision extends 3cm directly lateral from the a' +
        'reola, corresponding to the closure for removal of part #1. Abun' +
        'dant amounts of fibrofatty connective tissue surround the entire' +
        ' beast and the deep aspect includes and 8cm length of pectoralis' +
        ' minor and a generous mass of overlying pectoralis major muscle.' +
        ' Incision from the deepest aspect of the specimen beneath the tu' +
        'mor mass reveals tumor extension gross to within 0.5cm of muscle' +
        '. Sections are submitted according to the following code: DE- de' +
        'ep surgical resection margins; SU, LA, INF, ME -- full thickness' +
        ' radila samplings from the center of the tumor superiorly, later' +
        'ally, inferiorly and medially, respectively: NI- nipple and subj' +
        'acent tissue. Lymph nodes dissected free from axillary fibrofatt'
      
        'y tissue from levels I, II, and III will be labeled accordingly.' +
        '||||||F'
      
        'OBX|9|TX|22635-7^Path report.microscopic observation^LN||Section' +
        's of part #1 confirm frozen section diagnosis of infiltrating du' +
        'ct carcinoma. It is to be noted that the tumor cells show consid' +
        'erable pleomorphism, and mitotic figures are frequent (as many a' +
        's 4 per high power field). Many foci of calcification are presen' +
        't within the tumor. Part #2 consists of fibrofatty tissue and si' +
        'ngle tiny lymph node free of disease. Part #3 includes 18 lymph ' +
        'nodes, three from Level III, two from Level II and thirteen from' +
        ' Level I. All lymph nodes are free of disease with the exception' +
        ' of one Level I lymph node, which contains several masses of met' +
        'astatic carcinoma. All sections taken radially from the superfic' +
        'ial center of the resection site fail to include tumor, indicati' +
        'ng the tumor to have originated deep within the breast parenchym' +
        'a. Similarly, there is no malignancy in the nipple region, or in' +
        ' the lactiferous sinuses. Sections of deep surgical margin demon' +
        'strate diffuse tumor infiltration of deep fatty tissues, however'
      
        ', there is no invasion of muscle. Total size of primary tumor is' +
        ' estimated to be 4cm in greatest dimension.||||||F'
      
        'OBX|10|TX|22637-3^Path report.final diagnosis^LN|1|1. Infiltrati' +
        'ng duct carcinoma, left breast.||||||F'
      
        'OBX|11|TX|22637-3^Path report.final diagnosis^LN|2|2. Lymph node' +
        ', no pathologic diagnosis, left axilla.||||||F'
      
        'OBX|12|TX|22637-3^Path report.final diagnosis^LN|3|3. Ext. of tu' +
        'mor into deep fatty tissue. Metastatic carcinoma, left axillary ' +
        'lymph node (1) Level I. Free of disease 17 of 18 lymph nodes - L' +
        'evel I (12), Level II (2) and Level III (3).||||||F')
    TabOrder = 2
    WordWrap = False
  end
end
