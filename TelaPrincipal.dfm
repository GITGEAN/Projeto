object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 389
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
  object RelativePanel1: TRelativePanel
    Left = 0
    Top = 0
    Width = 635
    Height = 336
    ControlCollection = <
      item
        Control = DBGrid1
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end
      item
        Control = Bevel1
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end
      item
        Control = Bevel2
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end>
    Align = alClient
    TabOrder = 0
    DesignSize = (
      635
      336)
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 635
      Height = 242
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColExit = DBGrid1ColExit
    end
    object Bevel1: TBevel
      Left = 240
      Top = 240
      Width = 169
      Height = 2
      Anchors = []
    end
    object Bevel2: TBevel
      Left = 0
      Top = 240
      Width = 635
      Height = 17
      Anchors = []
    end
  end
  object RelativePanel2: TRelativePanel
    Left = 0
    Top = 336
    Width = 635
    Height = 53
    ControlCollection = <>
    Align = alBottom
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = DataModule3.FDQueryPedidos
    Left = 584
    Top = 16
  end
end
