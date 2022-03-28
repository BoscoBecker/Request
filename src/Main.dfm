object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Requisitor de URL'
  ClientHeight = 441
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Log: TMemo
    Left = 0
    Top = 41
    Width = 837
    Height = 381
    Align = alClient
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
    ExplicitLeft = -56
    ExplicitTop = 60
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 837
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    DesignSize = (
      837
      41)
    object Button1: TButton
      Left = 715
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = 'Request'
      TabOrder = 0
      OnClick = Button1Click
    end
    object cbTipo: TComboBox
      Left = 8
      Top = 8
      Width = 90
      Height = 23
      ItemIndex = 0
      TabOrder = 1
      Text = 'GET'
      Items.Strings = (
        'GET'
        'POST')
    end
    object location: TEdit
      Left = 104
      Top = 8
      Width = 603
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 2
    end
    object ActivityIndicator1: TActivityIndicator
      Left = 796
      Top = 3
      Anchors = [akTop, akRight]
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 422
    Width = 837
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end
      item
        Width = 300
      end>
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 104
    Top = 80
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 104
    Top = 200
  end
  object RESTResponse1: TRESTResponse
    Left = 104
    Top = 136
  end
end
