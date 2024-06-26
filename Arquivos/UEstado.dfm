object FEstado: TFEstado
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Estados'
  ClientHeight = 515
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 59
    Top = 54
    Width = 33
    Height = 17
    DataField = 'IDESTADO'
    DataSource = DM.DSEstado
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 563
    Top = 53
    Width = 39
    Height = 16
    Caption = 'Status'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 463
    Top = 53
    Width = 33
    Height = 16
    Caption = 'Sigla'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 53
    Width = 45
    Height = 16
    Caption = 'C'#243'digo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 98
    Top = 53
    Width = 103
    Height = 16
    Caption = 'Nome do Estado'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inline Frame11: TFrame1
    Left = 0
    Top = 0
    Width = 717
    Height = 33
    Align = alTop
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 717
    ExplicitHeight = 33
    inherited BTNovo: TBitBtn
      OnClick = Frame11BTNovoClick
    end
    inherited BTEditar: TBitBtn
      OnClick = Frame11BTEditarClick
    end
    inherited BTExcluir: TBitBtn
      OnClick = Frame11BTExcluirClick
    end
    inherited BTCancelar: TBitBtn
      OnClick = Frame11BTCancelarClick
    end
    inherited BTSalvar: TBitBtn
      OnClick = Frame11BTSalvarClick
    end
    inherited BTFechar: TBitBtn
      OnClick = Frame11BTFecharClick
    end
    inherited BitBtn7: TBitBtn
      OnClick = Frame11BitBtn7Click
    end
    inherited BitBtn8: TBitBtn
      OnClick = Frame11BitBtn8Click
    end
    inherited BitBtn9: TBitBtn
      OnClick = Frame11BitBtn9Click
    end
    inherited BitBtn10: TBitBtn
      OnClick = Frame11BitBtn10Click
    end
    inherited BitBtn11: TBitBtn
      OnClick = Frame11BitBtn11Click
    end
  end
  object DBEdit2: TDBEdit
    Left = 206
    Top = 51
    Width = 253
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOMEESTADO'
    DataSource = DM.DSEstado
    TabOrder = 1
  end
  object DBComboBox2: TDBComboBox
    Left = 608
    Top = 51
    Width = 97
    Height = 21
    DataField = 'STATUSESTADOS'
    DataSource = DM.DSEstado
    Items.Strings = (
      'ATIVO'
      'INATIVO')
    TabOrder = 4
  end
  object DBComboBox1: TDBComboBox
    Left = 499
    Top = 51
    Width = 49
    Height = 21
    DataField = 'SIGLAS'
    DataSource = DM.DSEstado
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SE'
      'SP'
      'TO')
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 88
    Width = 697
    Height = 419
    DataSource = DM.DSEstado
    GradientEndColor = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'IDESTADO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEESTADO'
        Title.Caption = 'Nome do Estado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SIGLAS'
        Title.Caption = 'Sigla'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUSESTADOS'
        Title.Caption = 'Status'
        Visible = True
      end>
  end
end
