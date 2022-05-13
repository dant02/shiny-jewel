object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 321
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = OnCreate
  OnShow = FormShow
  DesignSize = (
    678
    321)
  PixelsPerInch = 96
  TextHeight = 13
  object CEFWindowParent1: TCEFWindowParent
    Left = 0
    Top = 0
    Width = 433
    Height = 321
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
  object Chromium1: TChromium
    Left = 120
    Top = 128
  end
  object Timer1: TTimer
    OnTimer = OnTimer
    Left = 480
    Top = 128
  end
end
