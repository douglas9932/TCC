object FPesquisaCompra: TFPesquisaCompra
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa De Compras'
  ClientHeight = 491
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BTPesquisa: TBitBtn
    Left = 550
    Top = 30
    Width = 75
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 0
    OnClick = BTPesquisaClick
  end
  object EDPesquisa: TEdit
    Left = 296
    Top = 32
    Width = 239
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnExit = EDPesquisaExit
    OnKeyPress = EDPesquisaKeyPress
  end
  object RGPesquisa: TRadioGroup
    Left = 8
    Top = 8
    Width = 201
    Height = 145
    Caption = 'Escolha um Tipo de Pesquisa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Tudo'
      'C'#243'digo'
      'Funcion'#225'rio'
      'Fornecedor'
      'Data'
      'Tipo'
      'Status')
    ParentFont = False
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 178
    Width = 617
    Height = 313
    DataSource = DM.DSPesquisa
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
  end
end