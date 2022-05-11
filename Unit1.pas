unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCEFChromiumCore, uCEFChromium,
  uCEFWinControl, uCEFWindowParent, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    CEFWindowParent1: TCEFWindowParent;
    Chromium1: TChromium;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure OnTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  if not(Chromium1.CreateBrowser(CEFWindowParent1, '')) then Timer1.Enabled := True;

end;

procedure TForm1.OnTimer(Sender: TObject);
begin
  Timer1.Enabled := False;

  if not(Chromium1.CreateBrowser(CEFWindowParent1, '')) and not(Chromium1.Initialized) then
  begin
    Timer1.Enabled := True;
  end
  else begin
    Chromium1.LoadURL('https://www.seznam.cz');
  end;
end;

end.
