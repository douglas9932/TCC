object FCargo: TFCargo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cargos'
  ClientHeight = 495
  ClientWidth = 719
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
  object Label1: TLabel
    Left = 18
    Top = 42
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
    Left = 156
    Top = 42
    Width = 99
    Height = 16
    Caption = 'Nome do Cargo'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 571
    Top = 42
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
  object DBText1: TDBText
    Left = 71
    Top = 44
    Width = 65
    Height = 17
    DataField = 'IDCARGO'
    DataSource = DM.DSCargo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inline Frame11: TFrame1
    Left = 0
    Top = 0
    Width = 719
    Height = 33
    Align = alTop
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 719
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
    Left = 263
    Top = 41
    Width = 269
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOMECARGO'
    DataSource = DM.DSCargo
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 703
    Height = 407
    DataSource = DM.DSCargo
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
        FieldName = 'IDCARGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECARGO'
        Title.Caption = 'Cargo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUSCARGO'
        Title.Caption = 'Status'
        Visible = True
      end>
  end
  object DBComboBox1: TDBComboBox
    Left = 615
    Top = 41
    Width = 96
    Height = 21
    DataField = 'STATUSCARGO'
    DataSource = DM.DSCargo
    Items.Strings = (
      'ATIVO'
      'INATIVO')
    TabOrder = 3
  end
end
