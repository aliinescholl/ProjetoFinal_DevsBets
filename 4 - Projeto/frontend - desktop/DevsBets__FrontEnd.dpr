program DevsBets__FrontEnd;

uses
  System.StartUpCopy,
  FMX.Forms,
  DevsBets_FrontEnd,
  UfrmLoginAuthentication in 'model\views\UfrmLoginAuthentication.pas' {FrmLoginAuthentication},
  UfrmLoginRegistry in 'model\views\UfrmLoginRegistry.pas' {FrmLoginRegistry},
  UFrmLogin in 'model\views\UFrmLogin.pas' {FrmLogin},
  UEntity.Bets in '..\backend\model\entities\UEntity.Bets.pas',
  UEntity.Logins in '..\backend\model\entities\UEntity.Logins.pas',
  UEntity.Matchs in '..\backend\model\entities\UEntity.Matchs.pas',
  UEntity.Teams in '..\backend\model\entities\UEntity.Teams.pas',
  UEntity.Users in '..\backend\model\entities\UEntity.Users.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
