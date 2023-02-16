program DevsBets_BackEnd;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  UEntity.Users in 'backend\model\entities\UEntity.Users.pas',
  UEntity.Logins in 'backend\model\entities\UEntity.Logins.pas',
  UEntity.Teams in 'backend\model\entities\UEntity.Teams.pas',
  UEntity.Matchs in 'backend\model\entities\UEntity.Matchs.pas',
  UEntity.Bets in 'backend\model\entities\UEntity.Bets.pas',
  UDAO.Intf in 'backend\model\dao\UDAO.Intf.pas',
  UDAO.Base in 'backend\model\dao\UDAO.Base.pas',
  UUtil.Banco in 'backend\model\utils\UUtil.Banco.pas';

begin

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.