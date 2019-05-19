
unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxContainer, cxEdit, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBAccess, MemDS, Uni, UniProvider,
  PostgreSQLUniProvider;

type
  TForm1 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarManager1Bar1: TdxBar;
    bNewPeople: TdxBarLargeButton;
    bInfPeople: TdxBarLargeButton;
    bJornalPeople: TdxBarLargeButton;
    bGeneralJournal: TdxBarLargeButton;
    gdbtvPeople: TcxGridDBTableView;
    glPeople: TcxGridLevel;
    gPeople: TcxGrid;
    cNumber: TcxGridDBColumn;
    cName: TcxGridDBColumn;
    cSurname: TcxGridDBColumn;
    cPatron: TcxGridDBColumn;
    cBirth: TcxGridDBColumn;
    cDate_of_issue: TcxGridDBColumn;
    cExpirate_date: TcxGridDBColumn;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    connect: TUniConnection;
    uqPeople: TUniQuery;
    dsPeople: TUniDataSource;
    dxBarButton1: TdxBarButton;
    dxBarEdit1: TdxBarEdit;
    dxBarSubItem1: TdxBarSubItem;
    cxBarEditItem2: TcxBarEditItem;
    dxBarEdit2: TdxBarEdit;
    dxBarSubItem2: TdxBarSubItem;
    cxBarEditItem3: TcxBarEditItem;
    dxBarEdit3: TdxBarEdit;
    procedure FormCreate(Sender: TObject);
    procedure bNewPeopleClick(Sender: TObject);
    procedure bJornalPeopleClick(Sender: TObject);
    procedure bGeneralJournalClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarEdit3Change(Sender: TObject);
    procedure bInfPeopleClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses newPeople, PeopleJournal, BookList, PeopleInform, login;


procedure TForm1.bGeneralJournalClick(Sender: TObject);
begin
Application.CreateForm(TForm5, Form5);
 Form5.showmodal;
end;

procedure TForm1.bInfPeopleClick(Sender: TObject);
begin
Application.CreateForm(TForm8, Form8);
Form8.ShowModal;
end;

procedure TForm1.bJornalPeopleClick(Sender: TObject);
begin
  Application.CreateForm(TForm4, Form4);
  Form4.ShowModal;
end;

procedure TForm1.bNewPeopleClick(Sender: TObject);
begin
  Application.CreateForm(TForm3, Form3);
  Form3.ShowModal;
  uqPeople.Refresh;
end;



procedure TForm1.dxBarButton1Click(Sender: TObject);
begin
Application.CreateForm(TForm5, Form5);
Form5.ShowModal;
end;



procedure TForm1.dxBarEdit3Change(Sender: TObject);
var s: string;
begin
  s:= #39;
  uqPeople.Close;
  uqPeople.MacroByName('w').Value:= ' where lc.number ilike ' + s +'%' + dxBarEdit3.Text + '%' + s;
  s := uqPeople.MacroByName('w').Value;
  uqPeople.Open;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  uqPeople.Close;
  uqPeople.MacroByName('w').Value:= '';

  uqPeople.Open;
end;

end.
