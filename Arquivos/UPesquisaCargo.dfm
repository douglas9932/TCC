object FPesquisaCargo: TFPesquisaCargo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa De Cargos'
  ClientHeight = 494
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
  object RGPesquisa: TRadioGroup
    Left = 8
    Top = 8
    Width = 201
    Height = 161
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
      'Nome'
      'Status')
    ParentFont = False
    TabOrder = 0
  end
  object EDPesquisa: TEdit
    Left = 294
    Top = 32
    Width = 241
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = EDPesquisaKeyPress
  end
  object BTPesquisa: TBitBtn
    Left = 550
    Top = 30
    Width = 75
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 2
    OnClick = BTPesquisaClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 175
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
