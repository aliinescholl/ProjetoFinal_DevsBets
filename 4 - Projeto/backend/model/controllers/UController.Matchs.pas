unit UController.Matchs;

interface

uses
  Horse,
  GBSwagger.Path.Attributes,
  UController.Base,
  UEntity.Users;

type
  [SwagPath('matchs', 'partidas')]
  TControllerMatch = class(TControllerBase)
    public
    [SwagGET('Listar partidas', True)]
    [SwagResponse(200, TUser, 'Informações das partidas', True)]
    [SwagResponse(404)]
    class procedure Gets(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

    [SwagGET('{id}', 'Procurar uma partida', True)]
    [SwagParamPath('id', 'id da partida')]
    [SwagResponse(200, TUser, 'Informações da partida', True)]
    [SwagResponse(404)]
    class procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

    [SwagPOST('Adicionar nova partida')]
    [SwagParamBody('Informações da partida', TUser)]
    [SwagResponse(201)]
    [SwagResponse(400)]
    class procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

    [SwagPOST('id','Deletar uma partida')]
    [SwagParamPath('id', 'Id da partida')]
    [SwagResponse(204)]
    [SwagResponse(400)]
    [SwagResponse(404)]
    class procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;
  end;

implementation

uses
  UDAO.Matchs;

{ TControllerMatch }

class procedure TControllerMatch.Delete(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TDAOMatchs.Create;
  inherited;
end;

class procedure TControllerMatch.Get(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TDAOMatchs.Create;
  inherited;
end;

class procedure TControllerMatch.Gets(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TDAOMatchs.Create;
  inherited;
end;

class procedure TControllerMatch.Post(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TDAOMatchs.Create;
  inherited;
end;

end.
