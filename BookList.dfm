object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1076#1086#1089#1090#1091#1085#1099#1093' '#1082#1085#1080#1075
  ClientHeight = 480
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 640
    Height = 60
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2016
    ColorSchemeName = 'Colorful'
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    TabAreaToolbar.Toolbar = dxBarManager1Bar2
    ShowTabGroups = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = #1052#1077#1085#1102
      Groups = <>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 457
    Width = 640
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object gJournal: TcxGrid
    Left = 0
    Top = 60
    Width = 640
    Height = 397
    Align = alClient
    TabOrder = 2
    ExplicitTop = 36
    ExplicitHeight = 421
    object gJournalDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsJournal
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object gJournalDBTableView1name: TcxGridDBColumn
        DataBinding.FieldName = 'name'
      end
      object gJournalDBTableView1author_fio: TcxGridDBColumn
        DataBinding.FieldName = 'author_fio'
      end
      object gJournalDBTableView1emp_fio_rec: TcxGridDBColumn
        DataBinding.FieldName = 'emp_fio_rec'
      end
      object gJournalDBTableView1emp_fio_ret: TcxGridDBColumn
        DataBinding.FieldName = 'emp_fio_ret'
      end
      object gJournalDBTableView1edition_name: TcxGridDBColumn
        DataBinding.FieldName = 'edition_name'
      end
      object gJournalDBTableView1date_of_issue: TcxGridDBColumn
        DataBinding.FieldName = 'date_of_issue'
      end
      object gJournalDBTableView1date_of_return: TcxGridDBColumn
        DataBinding.FieldName = 'date_of_return'
      end
      object gJournalDBTableView1exp: TcxGridDBColumn
        DataBinding.FieldName = 'exp'
      end
      object gJournalDBTableView1fine_expiration: TcxGridDBColumn
        DataBinding.FieldName = 'fine_expiration'
      end
      object gJournalDBTableView1st: TcxGridDBColumn
        DataBinding.FieldName = 'st'
      end
      object gJournalDBTableView1state_fine: TcxGridDBColumn
        DataBinding.FieldName = 'state_fine'
      end
      object gJournalDBTableView1Column1: TcxGridDBColumn
      end
    end
    object gJournalLevel1: TcxGridLevel
      GridView = gJournalDBTableView1
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
    Left = 568
    Top = 8
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Quick Access Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
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
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Text Edit Item'
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013LightGray'
    Left = 536
    Top = 8
  end
  object uqJournal: TUniQuery
    Connection = Form1.connect
    SQL.Strings = (
      'select b.name'
      
        '     , a.surname || '#39' '#39' || a.name || '#39' '#39' || coalesce(a.parton, '#39 +
        #39') as author_fio'
      
        '     , p.surname || '#39' '#39' || p.name || '#39' '#39' || coalesce(p.parton, '#39 +
        #39') as people_fio'
      '     , e.name as edition_name'
      '     , ge.name as genre_name'
      '     , case '
      '         when j.state = 1 then '#39#1041#1077#1079' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1081#39
      '         when j.state = 2 then '#39#1045#1089#1090#1100' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1103#39
      '       end as st'
      '     , case'
      '     '#9' when l.availability = 1 then '#39#1042' '#1085#1072#1083#1080#1095#1080#1080#39
      '         when l.availability = 2 then '#39#1053#1077#1076#1086#1089#1090#1091#1087#1085#1072#39
      '       end as ava'
      '     , l.isbn'
      '     , l.mark'
      '     , o.name as office_name '
      '     , l.date_of_edition'
      '     , j.date_of_issue'
      '  from mm.journal j'
      '  join mm.people p'
      '    on p.id = j.people_id'
      '  join mm.library l'
      '    on l.id = j.library_id'
      '  join mm.edition e'
      '    on e.id = l.edition_id   '
      '  join mm.book b'
      '    on b.id = l.book_id'
      '  join mm.book_author ba'
      '    on ba.book_id = b.id'
      '  join mm.author a'
      '    on a.id = ba.author_id'
      '  left join mm.office o'
      '    on o.id = l.office_id'
      '  left join mm.book_genre bg'
      '  '#9'on b.id = bg.id'
      '  left join mm.genre ge '
      '  '#9'on bg.genre_id = ge.id  '
      'where l.availability = 1')
    Left = 312
    Top = 16
  end
  object dsJournal: TUniDataSource
    Left = 392
    Top = 16
  end
end
