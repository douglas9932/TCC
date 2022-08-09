object FCompra: TFCompra
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Compras'
  ClientHeight = 526
  ClientWidth = 727
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
  inline Frame11: TFrame1
    Left = 0
    Top = 0
    Width = 727
    Height = 33
    Align = alTop
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 727
    ExplicitHeight = 33
    inherited BTNovo: TBitBtn
      OnClick = Frame11BTNovoClick
    end
    inherited BTEditar: TBitBtn
      OnClick = Frame11BTEditarClick
    end
    inherited BTExcluir: TBitBtn
      Visible = False
      OnClick = Frame11BTExcluirClick
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
  object Panel1: TPanel
    Left = 8
    Top = 48
    Width = 711
    Height = 98
    TabOrder = 1
    object Label1: TLabel
      Left = 3
      Top = 7
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
      Left = 3
      Top = 35
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
      Left = 3
      Top = 67
      Width = 29
      Height = 16
      Caption = 'Data'
      FocusControl = DBEdit3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 336
      Top = 67
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
    object Label5: TLabel
      Left = 170
      Top = 67
      Width = 30
      Height = 16
      Caption = 'Hora'
      FocusControl = DBEdit5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 125
      Top = 7
      Width = 76
      Height = 16
      Caption = 'Funcion'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 52
      Top = 9
      Width = 48
      Height = 17
      DataField = 'IDCOMPRA'
      DataSource = DM.DSCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit3: TDBEdit
      Left = 37
      Top = 66
      Width = 75
      Height = 21
      DataField = 'DATACOMPRA'
      DataSource = DM.DSCompra
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 205
      Top = 66
      Width = 60
      Height = 21
      DataField = 'HORA'
      DataSource = DM.DSCompra
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 205
      Top = 5
      Width = 468
      Height = 21
      DataField = 'IDFUNCIONARIO'
      DataSource = DM.DSCompra
      KeyField = 'IDFUNCIONARIO'
      ListField = 'NOMEFUNCIONARIO'
      ListSource = DM.DSFuncionario
      TabOrder = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 81
      Top = 34
      Width = 424
      Height = 21
      DataField = 'IDFORNECEDOR'
      DataSource = DM.DSCompra
      KeyField = 'IDFORNECEDOR'
      ListField = 'NOMEFANTASIA'
      ListSource = DM.DSFornecedor
      TabOrder = 3
    end
    object DBComboBox1: TDBComboBox
      Left = 367
      Top = 66
      Width = 110
      Height = 21
      DataField = 'TIPO'
      DataSource = DM.DSCompra
      Items.Strings = (
        #192' VISTA'
        #192' PRAZO')
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 155
    Width = 711
    Height = 249
    TabOrder = 2
    object Label11: TLabel
      Left = 23
      Top = 8
      Width = 319
      Height = 19
      Caption = 'ENTRADA DE PRODUTOS  ------------->'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BTNovoItem: TBitBtn
      Left = 461
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Novo'
      Enabled = False
      TabOrder = 0
      OnClick = BTNovoItemClick
    end
    object BTExcluirItem: TBitBtn
      Left = 623
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excluir'
      Enabled = False
      TabOrder = 1
      OnClick = BTExcluirItemClick
    end
    object BTEditarItem: TBitBtn
      Left = 542
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Editar'
      Enabled = False
      TabOrder = 2
      OnClick = BTEditarItemClick
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 39
      Width = 697
      Height = 186
      DataSource = DM.DSItemCompra
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
          FieldName = 'IDITEMCOMPRA'
          Title.Caption = 'C'#243'digo Item'
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
          FieldName = 'Produto'
          Width = 275
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORITEMCOMPRA'
          Title.Caption = 'Valor Item'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 416
    Width = 711
    Height = 102
    TabOrder = 3
    object Label7: TLabel
      Left = 229
      Top = 11
      Width = 96
      Height = 16
      Caption = 'Status Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 490
      Top = 7
      Width = 105
      Height = 16
      Caption = 'Total da Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 486
      Top = 39
      Width = 108
      Height = 16
      Caption = 'QTD de Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 530
      Top = 71
      Width = 63
      Height = 16
      Caption = 'QTD Itens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 247
      Top = 33
      Width = 65
      Height = 17
      DataField = 'STATUSCOMPRA'
      DataSource = DM.DSCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 613
      Top = 11
      Width = 65
      Height = 17
      DataField = 'totalcompra'
      DataSource = DM.DSCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 613
      Top = 34
      Width = 65
      Height = 17
      DataField = 'qtdproduto'
      DataSource = DM.DSCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 613
      Top = 71
      Width = 65
      Height = 17
      DataField = 'qtditcompra'
      DataSource = DM.DSCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 23
      Top = 16
      Width = 159
      Height = 49
      Caption = 'Finalizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
  end
end
