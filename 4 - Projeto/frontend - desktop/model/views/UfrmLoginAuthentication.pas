unit UfrmLoginAuthentication;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TFrmLoginAuthentication = class(TForm)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    Image1: TImage;
    lytBotoes: TLayout;
    rectRegistrar: TRectangle;
    lblRegistrar: TLabel;
    rectVoltar: TRectangle;
    lblVoltar: TLabel;
    rectLogin: TRectangle;
    rectSenha: TRectangle;
    edtLogin: TEdit;
    edtSenha: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
//    procedure rectLoginClick(Sender: TObject);
//    procedure rectSenhaClick(Sender: TObject);
    procedure rectRegistrarClick(Sender: TObject);
    procedure lblVoltarClick(Sender: TObject);
  private
    procedure VoltarTela;
//    procedure AbrirHome;
//    procedure Logar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLoginAuthentication : TFrmLoginAuthentication;

implementation

uses
  UfrmLogin,
//  UfrmHome,
  UEntity.Logins,
//  UService.Intf,
//  UService.Login,
  UfrmLoginRegistry;
{$R *.fmx}

{ TFrmLoginAuthentication }
{
procedure TFrmLoginAuthentication.AbrirHome;
begin
  if not Assigned(FrmHome) then
    FrmHome := TFrmHome.Create(Application);

  FrmHome.Show;
  Application.MainForm := FrmHome;
end; }

procedure TFrmLoginAuthentication.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  FrmLoginAuthentication := nil;
end;

procedure TFrmLoginAuthentication.lblVoltarClick(Sender: TObject);
begin
  Self.VoltarTela;
end;
{
procedure TFrmLoginAuthentication.Logar;
var
  xServiceLogin: IService;
begin
  if Trim(edtLogin.Text) = EmptyStr then
    raise Exception.Create('Informe o Login');

  if Trim(edtSenha.Text) = EmptyStr then
    raise Exception.Create('Informe a Senha');

  xServiceLogin := TServiceLogin.Create(
  TLogin.Create(Trim(edtLogin.Text),
                Trim(edtSenha.Text)));

  try
    TServiceLogin(xServiceLogin).Autenticar;
    self.AbrirHome;
  except on E: Exception do
    raise Exception.Create('Login' + E.Message);
  end;
end;
}

procedure TFrmLoginAuthentication.rectRegistrarClick(Sender: TObject);
begin
//  self.Logar;
end;

procedure TFrmLoginAuthentication.VoltarTela;
begin
  if not Assigned(FrmLoginRegistry) then
    FrmLoginRegistry := TfrmLoginRegistry.Create(Application);

  FrmLoginRegistry.Show;
  Application.MainForm := FrmLoginRegistry;
end;

end.
