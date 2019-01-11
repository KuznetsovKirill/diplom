unit addBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxRibbonCustomizationForm, cxTextEdit, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxScrollBox, Data.DB, DBAccess, Uni, MemDS,
  Vcl.StdCtrls;

type
  TForm6 = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarManager1Bar3: TdxBar;
    bSaveInform: TdxBarLargeButton;
    cxScrollBox1: TcxScrollBox;
    cxLabel1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    cxLookupComboBox5: TcxLookupComboBox;
    uqAuthor: TUniQuery;
    uqNameBook: TUniQuery;
    uqJournal: TUniQuery;
    uqPeople: TUniQuery;
    uqIzdanie: TUniQuery;
    dsAuthor: TUniDataSource;
    dsNameBook: TUniDataSource;
    dsIzdanie: TUniDataSource;
    dsPeople: TUniDataSource;
    cbStatusBook: TComboBox;
    cxLabel4: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure bSaveInformClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses main;
{ TForm6 }

procedure TForm6.bSaveInformClick(Sender: TObject);
begin
  if cbStatusBook.Text = '������' then
    uqJournal.FieldValues['State']:= 1;

  if cbStatusBook.Text = '�������' then
    uqJournal.FieldValues['State']:= 2;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  uqAuthor.Close;
  uqAuthor.Open;
  uqNameBook.Close;
  uqNameBook.Open;
  uqPeople.Close;
  uqPeople.Open;
  uqIzdanie.Close;
  uqIzdanie.Open;
end;
end.
