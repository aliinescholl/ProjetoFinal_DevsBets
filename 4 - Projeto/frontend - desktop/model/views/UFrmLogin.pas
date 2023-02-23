unit UFrmLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TFrmLogin = class(TForm)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    Image1: TImage;
    lytBotoes: TLayout;
    rectRegistrar: TRectangle;
    rectLogin: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    rectSair: TRectangle;
    lblSair: TLabel;
    procedure rectLoginClick(Sender: TObject);
    procedure rectRegistrarClick(Sender: TObject);
    procedure lblSairClick(Sender: TObject);
  private
    { Private declarations }
   procedure AbrirLoginAuthentication;
   procedure AbrirLoginRegistry;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.fmx}

{ TFrmLogin }

uses
  UfrmLoginRegistry,
  UfrmLoginAuthentication;

procedure TFrmLogin.AbrirLoginAuthentication;
begin
  if not Assigned(FrmLoginAuthentication) then
    FrmLoginAuthentication := TFrmLoginAuthentication.Create(Application);

  FrmLoginAuthentication.Show;
  Application.MainForm := FrmLoginAuthentication;
end;

procedure TFrmLogin.AbrirLoginRegistry;
begin
  if not Assigned(FrmLoginRegistry) then
    FrmLoginRegistry := TfrmLoginRegistry.Create(Application);

  FrmLoginRegistry.Show;
  Application.MainForm := FrmLoginRegistry;
end;

procedure TFrmLogin.lblSairClick(Sender: TObject);
begin
  FrmLogin.Close;
end;

procedure TFrmLogin.rectLoginClick(Sender: TObject);
begin
  AbrirLoginAuthentication;
end;

procedure TFrmLogin.rectRegistrarClick(Sender: TObject);
begin
  AbrirLoginRegistry;
end;

end.
