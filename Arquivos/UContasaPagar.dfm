object FContasaPagar: TFContasaPagar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'FContas '#192' Pagar'
  ClientHeight = 501
  ClientWidth = 722
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
    Left = 8
    Top = 56
    Width = 86
    Height = 16
    Caption = 'C'#243'digo Conta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 307
    Top = 54
    Width = 73
    Height = 16
    Caption = 'Fornecedor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 141
    Top = 54
    Width = 99
    Height = 16
    Caption = 'C'#243'digo Compra'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 86
    Width = 62
    Height = 16
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 113
    Width = 104
    Height = 16
    Caption = 'Data Da Compra'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 212
    Top = 113
    Width = 129
    Height = 16
    Caption = 'Data Do Vencimento'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 428
    Top = 113
    Width = 30
    Height = 16
    Caption = 'Hora'
    FocusControl = DBEdit7
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 570
    Top = 113
    Width = 37
    Height = 16
    Caption = 'Valor '
    FocusControl = DBEdit8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 142
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
  object Label10: TLabel
    Left = 131
    Top = 142
    Width = 28
    Height = 16
    Caption = 'Tipo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 100
    Top = 56
    Width = 41
    Height = 17
    DataField = 'IDCONTASAPAGAR'
    DataSource = DM.DSContasAPagar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 246
    Top = 56
    Width = 52
    Height = 17
    DataField = 'IDCOMPRA'
    DataSource = DM.DSContasAPagar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 59
    Top = 142
    Width = 65
    Height = 17
    DataField = 'STATUSCOMPRASAPAGAR'
    DataSource = DM.DSContasAPagar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit4: TDBEdit
    Left = 79
    Top = 83
    Width = 635
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DM.DSContasAPagar
    TabOrder = 0
  end
  object DBEdit5: TDBEdit
    Left = 118
    Top = 112
    Width = 75
    Height = 21
    DataField = 'DATACOMPRA'
    DataSource = DM.DSContasAPagar
    MaxLength = 10
    TabOrder = 1
  end
  object DBEdit6: TDBEdit
    Left = 347
    Top = 112
    Width = 75
    Height = 21
    DataField = 'DATAVENCIMENTO'
    DataSource = DM.DSContasAPagar
    MaxLength = 10
    TabOrder = 2
  end
  object DBEdit7: TDBEdit
    Left = 464
    Top = 112
    Width = 56
    Height = 21
    DataField = 'HORA'
    DataSource = DM.DSContasAPagar
    TabOrder = 3
  end
  object DBEdit8: TDBEdit
    Left = 616
    Top = 112
    Width = 73
    Height = 21
    DataField = 'VALORCONTASAPAGAR'
    DataSource = DM.DSContasAPagar
    TabOrder = 4
    OnExit = DBEdit8Exit
  end
  inline Frame11: TFrame1
    Left = 0
    Top = 0
    Width = 722
    Height = 33
    Align = alTop
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 5
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 170
    Width = 706
    Height = 324
    DataSource = DM.DSContasAPagar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 6
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'IDCONTASAPAGAR'
        Title.Caption = 'C'#243'digo Conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDCOMPRA'
        Title.Caption = 'C'#243'digo Compra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATACOMPRA'
        Title.Caption = 'Data Da Compra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAVENCIMENTO'
        Title.Caption = 'Data Do Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Title.Caption = 'Hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORCONTASAPAGAR'
        Title.Caption = 'Valor Da Conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUSCOMPRASAPAGAR'
        Title.Caption = 'Status Da Conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTROLE'
        Title.Caption = 'Controle'
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 386
    Top = 52
    Width = 328
    Height = 21
    DataField = 'IDFORNECEDOR'
    DataSource = DM.DSContasAPagar
    KeyField = 'IDFORNECEDOR'
    ListField = 'NOMEFANTASIA'
    ListSource = DM.DSFornecedor
    TabOrder = 7
  end
  object DBComboBox1: TDBComboBox
    Left = 165
    Top = 141
    Width = 104
    Height = 21
    DataField = 'TIPO'
    DataSource = DM.DSContasAPagar
    Items.Strings = (
      #192' VISTA'
      #192' PRAZO')
    TabOrder = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 528
    Top = 128
    object PagarConta1: TMenuItem
      Caption = 'Pagar Conta'
      OnClick = PagarConta1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
    end
  end
end
