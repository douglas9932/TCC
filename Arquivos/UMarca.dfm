object FMarca: TFMarca
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Marcas'
  ClientHeight = 499
  ClientWidth = 724
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
    Top = 46
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
    Left = 131
    Top = 46
    Width = 100
    Height = 16
    Caption = 'Nome da Marca'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 566
    Top = 46
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
    Top = 48
    Width = 42
    Height = 17
    DataField = 'IDMARCA'
    DataSource = DM.DSMarca
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
    Width = 724
    Height = 33
    Align = alTop
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 724
    ExplicitHeight = 33
    inherited BTNovo: TBitBtn
      OnClick = Frame11BTNovoClick
    end
    inherited BTEditar: TBitBtn
      Top = 5
      OnClick = Frame11BTEditarClick
      ExplicitTop = 5
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
    Left = 236
    Top = 45
    Width = 324
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOMEMARCA'
    DataSource = DM.DSMarca
    TabOrder = 1
  end
  object DBComboBox1: TDBComboBox
    Left = 610
    Top = 45
    Width = 103
    Height = 21
    DataField = 'STATUSMARCA'
    DataSource = DM.DSMarca
    Items.Strings = (
      'ATIVO'
      'INATIVO')
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 88
    Width = 708
    Height = 403
    DataSource = DM.DSMarca
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'IDMARCA'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEMARCA'
        Title.Caption = 'Nome Marca'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUSMARCA'
        Title.Caption = 'Status'
        Visible = True
      end>
  end
end
