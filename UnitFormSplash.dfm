object FormSplash: TFormSplash
  Left = 0
  Top = 0
  Caption = 'FormSplash'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 456
    Top = 184
    object Cadastrar: TMenuItem
      Caption = 'Cadastrar'
      object TFormFuncionario: TMenuItem
        Caption = 'Funcion'#225'rio'
        OnClick = mmClick
      end
    end
  end
end
