program Lib;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  login in 'login.pas' {Form2},
  newPeople in 'newPeople.pas' {Form3},
  PeopleJournal in 'PeopleJournal.pas' {Form4},
  BookList in 'BookList.pas' {Form5},
  addBook in 'addBook.pas' {Form6},
  addNewBook in 'addNewBook.pas' {Form7},
  PeopleInform in 'PeopleInform.pas' {Form8},
  user in 'user.pas' {Form9};

{$R *.res}

begin
  if TForm2.Execute then
  begin
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.Run;
  end;

end.
