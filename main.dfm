object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072
  ClientHeight = 480
  ClientWidth = 844
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 844
    Height = 60
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016Tablet
    ColorSchemeName = 'Colorful'
    TabAreaToolbar.Toolbar = dxBarManager1Bar2
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      Groups = <
        item
        end
        item
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 457
    Width = 844
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object gPeople: TcxGrid
    Left = 0
    Top = 60
    Width = 844
    Height = 397
    Align = alClient
    TabOrder = 2
    object gdbtvPeople: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPeople
      DataController.DetailKeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      object cNumber: TcxGridDBColumn
        Caption = #8470' '#1063#1080#1090#1072#1090#1077#1083#1100#1089#1082#1086#1075#1086' '#1073#1080#1083#1077#1090#1072
        DataBinding.FieldName = 'number'
        MinWidth = 150
        Width = 150
      end
      object cName: TcxGridDBColumn
        Caption = #1048#1084#1103
        DataBinding.FieldName = 'name'
        MinWidth = 150
        Width = 150
      end
      object cSurname: TcxGridDBColumn
        Caption = #1060#1072#1084#1080#1083#1080#1103
        DataBinding.FieldName = 'surname'
        MinWidth = 150
        Width = 150
      end
      object cPatron: TcxGridDBColumn
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        DataBinding.FieldName = 'parton'
        MinWidth = 150
        Width = 150
      end
      object cBirth: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1056#1086#1078#1076#1077#1085#1080#1103
        DataBinding.FieldName = 'birth'
        MinWidth = 100
        Width = 124
      end
      object cDate_of_issue: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        DataBinding.FieldName = 'date_of_issue'
        MinWidth = 100
        Width = 123
      end
      object cExpirate_date: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1054#1082#1086#1085#1095#1072#1085#1080#1103
        DataBinding.FieldName = 'expirate_date'
        FooterAlignmentHorz = taRightJustify
        MinWidth = 100
        Width = 124
      end
    end
    object glPeople: TcxGridLevel
      GridView = gdbtvPeople
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 520
    Top = 240
    PixelsPerInch = 96
    object dxBarManager1Bar2: TdxBar
      Caption = 'Tab Area Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxBarEditItem1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 674
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bNewPeople'
        end
        item
          Visible = True
          ItemName = 'bInfPeople'
        end
        item
          Visible = True
          ItemName = 'bJornalPeople'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarEdit3'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Text Edit Item'
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object bNewPeople: TdxBarLargeButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Visible = ivAlways
      OnClick = bNewPeopleClick
    end
    object bInfPeople: TdxBarLargeButton
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      Category = 0
      Hint = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      Visible = ivAlways
      OnClick = bInfPeopleClick
    end
    object bJornalPeople: TdxBarLargeButton
      Caption = #1046#1091#1088#1085#1072#1083' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Category = 0
      Hint = #1046#1091#1088#1085#1072#1083' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Visible = ivAlways
      OnClick = bJornalPeopleClick
    end
    object bGeneralJournal: TdxBarLargeButton
      Caption = #1057#1087#1080#1089#1086#1082' '#1082#1085#1080#1075
      Category = 0
      Hint = #1057#1087#1080#1089#1086#1082' '#1082#1085#1080#1075
      Visible = ivNever
      OnClick = bGeneralJournalClick
    end
    object dxBarButton1: TdxBarButton
      Caption = #1057#1087#1080#1089#1086#1082' '#1082#1085#1080#1075
      Category = 0
      Hint = #1057#1087#1080#1089#1086#1082' '#1082#1085#1080#1075
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarEdit1: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarEdit2: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object cxBarEditItem3: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object dxBarEdit3: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      OnChange = dxBarEdit3Change
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 448
    Top = 240
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 432
    Top = 176
  end
  object connect: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'lib'
    Username = 'psqlmaster'
    Server = 'localhost'
    Connected = True
    Left = 528
    Top = 176
    EncryptedPassword = '8CFF9AFF9CFF8AFF8DFFCEFF8BFF86FF'
  end
  object uqPeople: TUniQuery
    Connection = connect
    SQL.Strings = (
      'select p.id'
      ', lc.number'
      ', p.name'
      ', p.surname'
      ', p.parton'
      ', p.birth'
      ', lc.date_of_issue'
      ', lc.expirate_date'
      'from mm.people p '
      'left join mm.library_card lc'
      'on lc.people_id = p.id'
      ''
      ' &w'
      ' &v')
    Left = 600
    Top = 168
    MacroData = <
      item
        Name = 'w'
      end
      item
        Name = 'v'
      end>
  end
  object dsPeople: TUniDataSource
    DataSet = uqPeople
    Left = 608
    Top = 240
  end
end
