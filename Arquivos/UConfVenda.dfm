object FConfVenda: TFConfVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Finalizar Venda'
  ClientHeight = 201
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 60
    Height = 16
    Caption = 'Condi'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 96
    Width = 97
    Height = 16
    Caption = 'Valor Recebido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 216
    Top = 16
    Width = 31
    Height = 16
    Caption = 'Total'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 216
    Top = 96
    Width = 35
    Height = 16
    Caption = 'Troco'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBTroco: TLabel
    Left = 216
    Top = 118
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 216
    Top = 35
    Width = 65
    Height = 17
    DataField = 'totalvenda'
    DataSource = DM.DSVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBComboBox1: TDBComboBox
    Left = 24
    Top = 35
    Width = 105
    Height = 21
    DataField = 'TIPO'
    DataSource = DM.DSVenda
    Items.Strings = (
      #192' VISTA'
      #192' PRAZO')
    TabOrder = 0
  end
  object EDValorRecebido: TEdit
    Left = 24
    Top = 115
    Width = 121
    Height = 21
    TabOrder = 1
    OnExit = EDValorRecebidoExit
  end
  object BitBtn1: TBitBtn
    Left = 216
    Top = 160
    Width = 75
    Height = 25
    Caption = '&Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 297
    Top = 160
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
