inherited FormFuncionario: TFormFuncionario
  Left = 32
  Caption = 'Cadastro de funcion'#225'rio:'
  ClientHeight = 240
  ClientWidth = 451
  Position = poDesigned
  OnActivate = FormActivate
  OnCreate = FormCreate
  ExplicitWidth = 467
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 10
  inherited ToolBar1: TToolBar
    Width = 451
    ExplicitWidth = 451
    inherited btAnterior: TButton
      OnClick = btAnteriorClick
    end
    inherited btProximo: TButton
      OnClick = btProximoClick
    end
    inherited btBuscar: TButton
      OnClick = btBuscarClick
    end
    inherited btInserir: TButton
      OnClick = btInserirClick
    end
    inherited btExcluir: TButton
      OnClick = btExcluirClick
    end
    inherited btLimpar: TButton
      OnClick = btLimparClick
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 221
    Width = 451
    ExplicitTop = 221
    ExplicitWidth = 451
  end
  inherited Panel1: TPanel
    Width = 451
    Height = 192
    ExplicitWidth = 451
    ExplicitHeight = 192
    inherited Panel2: TPanel
      Width = 449
      Height = 190
      ExplicitWidth = 449
      ExplicitHeight = 190
      object Label1: TLabel
        Left = 49
        Top = 26
        Width = 26
        Height = 10
        Anchors = []
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 53
        Top = 47
        Width = 23
        Height = 10
        Anchors = []
        Caption = 'Nome:'
        ExplicitLeft = 52
        ExplicitTop = 48
      end
      object Label3: TLabel
        Left = 35
        Top = 76
        Width = 40
        Height = 10
        Anchors = []
        Caption = 'Cod.Depto.:'
        ExplicitTop = 77
      end
      object Label4: TLabel
        Left = 38
        Top = 100
        Width = 37
        Height = 10
        Anchors = []
        Caption = 'Admissao:'
        ExplicitTop = 101
      end
      object dtDataAdmissao: TDateTimePicker
        Left = 97
        Top = 93
        Width = 75
        Height = 18
        Anchors = []
        Date = 43328.491908333330000000
        Time = 43328.491908333330000000
        TabOrder = 0
      end
      object edCod: TEdit
        Left = 97
        Top = 17
        Width = 75
        Height = 18
        Anchors = []
        TabOrder = 1
        OnKeyPress = onKeyPress
      end
      object edCodDepto: TEdit
        Tag = 2
        Left = 97
        Top = 68
        Width = 75
        Height = 18
        Anchors = []
        TabOrder = 2
        OnKeyPress = onKeyPress
      end
      object edNome: TEdit
        Tag = 1
        Left = 97
        Top = 42
        Width = 75
        Height = 18
        Anchors = []
        TabOrder = 3
        OnKeyPress = onKeyPress
      end
    end
  end
end
