object FPesquisaContasAReceber: TFPesquisaContasAReceber
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa De Contas '#192' Receber'
  ClientHeight = 494
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EDPesquisa: TEdit
    Left = 303
    Top = 32
    Width = 241
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object BTPesquisa: TBitBtn
    Left = 550
    Top = 30
    Width = 75
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 1
    OnClick = BTPesquisaClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 173
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
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
  end
  object RGPesquisa: TRadioGroup
    Left = 8
    Top = 8
    Width = 201
    Height = 121
    Caption = 'Escolha um Tipo de Pesquisa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Tudo'
      'Cliente'
      'Data Da Compra'
      'Data Do Vencimento'
      'Status Da Conta')
    ParentFont = False
    TabOrder = 3
  end
end
