object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cliente'
  ClientHeight = 291
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 47
    Height = 19
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 16
    Top = 63
    Width = 75
    Height = 19
    Caption = 'Endere'#231'o'
  end
  object Label3: TLabel
    Left = 16
    Top = 120
    Width = 72
    Height = 19
    Caption = 'Telefone'
  end
  object Label4: TLabel
    Left = 16
    Top = 176
    Width = 45
    Height = 19
    Caption = 'Email'
  end
  object Button1: TButton
    Left = 16
    Top = 238
    Width = 97
    Height = 25
    Caption = 'Registrar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object EDT_Nome: TEdit
    Left = 16
    Top = 32
    Width = 417
    Height = 27
    TabOrder = 1
  end
  object EDT_Endereco: TEdit
    Left = 16
    Top = 88
    Width = 417
    Height = 27
    TabOrder = 2
  end
  object EDT_Telefone: TEdit
    Left = 16
    Top = 143
    Width = 417
    Height = 27
    TabOrder = 3
  end
  object EDT_Email: TEdit
    Left = 16
    Top = 200
    Width = 417
    Height = 27
    TabOrder = 4
  end
end
