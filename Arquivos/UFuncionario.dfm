object FFuncionario: TFFuncionario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Funcion'#225'rios'
  ClientHeight = 485
  ClientWidth = 721
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
    Left = 465
    Top = 128
    Width = 38
    Height = 16
    Caption = 'Cargo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 487
    Top = 98
    Width = 45
    Height = 16
    Caption = 'Cidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 120
    Top = 43
    Width = 137
    Height = 16
    Caption = 'Nome do Funcionario'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 167
    Top = 71
    Width = 26
    Height = 16
    Caption = 'CPF'
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
    Top = 70
    Width = 19
    Height = 16
    Caption = 'RG'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 595
    Top = 70
    Width = 33
    Height = 16
    Caption = 'Sexo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 353
    Top = 70
    Width = 127
    Height = 16
    Caption = 'Data do Nascimento'
    FocusControl = DBEdit7
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 126
    Width = 60
    Height = 16
    Caption = 'Endere'#231'o'
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
    Top = 98
    Width = 46
    Height = 16
    Caption = 'Celular'
    FocusControl = DBEdit9
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 168
    Top = 98
    Width = 36
    Height = 16
    Caption = 'Email'
    FocusControl = DBEdit10
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 394
    Top = 154
    Width = 46
    Height = 16
    Caption = 'Sal'#225'rio'
    FocusControl = DBEdit12
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 8
    Top = 154
    Width = 131
    Height = 16
    Caption = 'Carteira de Trabalho'
    FocusControl = DBEdit13
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 558
    Top = 154
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
  object Label15: TLabel
    Left = 8
    Top = 43
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
  object DBText1: TDBText
    Left = 62
    Top = 45
    Width = 49
    Height = 17
    DataField = 'IDFUNCIONARIO'
    DataSource = DM.DSFuncionario
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
    Width = 721
    Height = 33
    Align = alTop
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 721
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
  object DBEdit3: TDBEdit
    Left = 262
    Top = 42
    Width = 440
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOMEFUNCIONARIO'
    DataSource = DM.DSFuncionario
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 196
    Top = 69
    Width = 95
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CPF'
    DataSource = DM.DSFuncionario
    MaxLength = 14
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 32
    Top = 69
    Width = 79
    Height = 21
    CharCase = ecUpperCase
    DataField = 'RG'
    DataSource = DM.DSFuncionario
    MaxLength = 12
    TabOrder = 3
  end
  object DBEdit7: TDBEdit
    Left = 485
    Top = 69
    Width = 68
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DATANASCIMENTO'
    DataSource = DM.DSFuncionario
    MaxLength = 10
    TabOrder = 4
  end
  object DBEdit8: TDBEdit
    Left = 72
    Top = 125
    Width = 369
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = DM.DSFuncionario
    TabOrder = 9
  end
  object DBEdit9: TDBEdit
    Left = 60
    Top = 96
    Width = 86
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = DM.DSFuncionario
    MaxLength = 14
    TabOrder = 6
  end
  object DBEdit10: TDBEdit
    Left = 207
    Top = 97
    Width = 274
    Height = 21
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = DM.DSFuncionario
    TabOrder = 7
  end
  object DBEdit12: TDBEdit
    Left = 446
    Top = 153
    Width = 77
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SALARIO'
    DataSource = DM.DSFuncionario
    TabOrder = 10
  end
  object DBEdit13: TDBEdit
    Left = 145
    Top = 153
    Width = 158
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CARTEIRADETRABALHO'
    DataSource = DM.DSFuncionario
    MaxLength = 14
    TabOrder = 11
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 184
    Width = 705
    Height = 293
    DataSource = DM.DSFuncionario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 13
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'IDFUNCIONARIO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEFUNCIONARIO'
        Title.Caption = 'Nome do Funcion'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cargo'
        Title.Caption = 'Cargo'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATANASCIMENTO'
        Title.Caption = 'Data de Nascimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEXO'
        Title.Caption = 'Sexo'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Caption = 'Email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Title.Caption = 'Cidade'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'Endere'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALARIO'
        Title.Caption = 'Sal'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CARTEIRADETRABALHO'
        Title.Caption = 'Carteira de Trabalho'
        Width = 162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUSFUNCIONARIO'
        Title.Caption = 'Status'
        Visible = True
      end>
  end
  object DBComboBox1: TDBComboBox
    Left = 632
    Top = 69
    Width = 50
    Height = 21
    DataField = 'SEXO'
    DataSource = DM.DSFuncionario
    Items.Strings = (
      'M'
      'F')
    TabOrder = 5
  end
  object DBComboBox2: TDBComboBox
    Left = 601
    Top = 153
    Width = 101
    Height = 21
    DataField = 'STATUSFUNCIONARIO'
    DataSource = DM.DSFuncionario
    Items.Strings = (
      'ATIVO'
      'INATIVO')
    TabOrder = 12
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 537
    Top = 97
    Width = 145
    Height = 21
    DataField = 'IDCIDADE'
    DataSource = DM.DSFuncionario
    KeyField = 'IDCIDADE'
    ListField = 'NOMECIDADES'
    ListSource = DM.DSCidade
    TabOrder = 8
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 506
    Top = 127
    Width = 176
    Height = 21
    DataField = 'IDCARGO'
    DataSource = DM.DSFuncionario
    KeyField = 'IDCARGO'
    ListField = 'NOMECARGO'
    ListSource = DM.DSCargo
    TabOrder = 14
  end
  object BitBtn1: TBitBtn
    Left = 686
    Top = 97
    Width = 27
    Height = 21
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
      0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
      0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
      5555557FFFFF7755555555500000005555555577777775555555555555555555
      5555555555555555555555555555555555555555555555555555}
    NumGlyphs = 2
    TabOrder = 15
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 686
    Top = 127
    Width = 27
    Height = 21
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
      0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
      0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
      0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
      5555557FFFFF7755555555500000005555555577777775555555555555555555
      5555555555555555555555555555555555555555555555555555}
    NumGlyphs = 2
    TabOrder = 16
    OnClick = BitBtn1Click
  end
end
