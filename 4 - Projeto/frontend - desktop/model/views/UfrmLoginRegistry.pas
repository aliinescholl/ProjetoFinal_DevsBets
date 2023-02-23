unit UfrmLoginRegistry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TFrmLoginRegistry = class(TForm)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    Image1: TImage;
    lytBotoes: TLayout;
    rectRegistrar: TRectangle;
    lblRegistrar: TLabel;
    rectVoltar: TRectangle;
    lblVoltar: TLabel;
    rectLogin: TRectangle;
    rectNome: TRectangle;
    rectSenha: TRectangle;
    edtNome: TEdit;
    edtLogin: TEdit;
    edtSenha: TEdit;
//    procedure rectRegistrarClick(Sender: TObject);
    procedure lblVoltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure VoltarTela;
//    procedure Registrar;
  public
    { Public declarations }
  end;

var
  FrmLoginRegistry: TFrmLoginRegistry;

implementation

uses
  UFrmLogin,
//  Uservice.Users;
  UEntity.Users;

{$R *.fmx}

{ TFrmLoginRegistry }

procedure TFrmLoginRegistry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  FrmLoginRegistry := nil;
end;

procedure TFrmLoginRegistry.lblVoltarClick(Sender: TObject);
begin
  Self.VoltarTela;
end;
{
procedure TFrmLoginRegistry.rectRegistrarClick(Sender: TObject);
begin
  Self.Registrar;
end;

procedure TFrmLoginRegistry.Registrar;
var
  xServiceuser: IService;
begin
  if Trim(edtNome.Text) = EmptyStr then
    raise Exception.Create('Informe o nome!');

  if Trim(edtLogin.Text) = EmptyStr then
    raise Exception.Create('Informe o Login!');

  if Trim(edtSenha.Text) = EmptyStr then
    raise Exception.Create('Informe a senha!');

  xServiceUser := TServiceUser.Create(
    Tuser.Create(Trim(edtNome.Text),
                 Trim(edtLogin.Text),
                 Trim(edtSenha.Text)));

  try
    xServiceUser.registrar;
    ShowMessage('Usuário registrado com sucesso!');
    Self.VoltarTela;
  except
    on e: exception do
      raise Exception.Create('Erro: ' + E.Message);
  end;
end;  }

procedure TFrmLoginRegistry.VoltarTela;
begin
  if not Assigned(FrmLogin) then
    FrmLogin := TFrmLogin.Create(Application);

  FrmLogin.Show;
  Application.MainForm := FrmLogin;
end;

end.
