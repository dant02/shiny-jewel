program shinyjewel;

uses
  Vcl.Forms,
  uCEFApplication,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  GlobalCEFApp := TCefApplication.Create;


  if GlobalCEFApp.StartMainProcess then
  begin
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TForm1, Form1);
    Application.Run;
  end;

  GlobalCEFApp.Free;
end.
