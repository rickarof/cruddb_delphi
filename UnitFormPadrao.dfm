object FormPadrao: TFormPadrao
  Left = 0
  Top = 0
  Caption = 'FormPadrao'
  ClientHeight = 238
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -8
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 10
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 450
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 0
    ExplicitLeft = 272
    ExplicitTop = 104
    ExplicitWidth = 150
    object btAnterior: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 22
      Caption = '<'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 75
      Top = 0
      Width = 75
      Height = 22
      Caption = '>'
      TabOrder = 1
    end
    object btBuscar: TButton
      Left = 150
      Top = 0
      Width = 75
      Height = 22
      Caption = 'Buscar'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 225
      Top = 0
      Width = 75
      Height = 22
      Caption = 'Inserir'
      TabOrder = 3
    end
    object Button5: TButton
      Left = 300
      Top = 0
      Width = 75
      Height = 22
      Caption = 'Excluir'
      TabOrder = 4
    end
    object Button6: TButton
      Left = 375
      Top = 0
      Width = 75
      Height = 22
      Caption = 'Button6'
      TabOrder = 5
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 219
    Width = 450
    Height = 19
    Panels = <>
    ExplicitLeft = 112
    ExplicitTop = 208
    ExplicitWidth = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 450
    Height = 190
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 208
    ExplicitTop = 112
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
end
