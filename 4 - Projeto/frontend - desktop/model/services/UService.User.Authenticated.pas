unit UService.User.Authenticated;

interface

uses
  UEntity.Users;

type
  TuserAuthenticated = class
    private
      FUser: TUser;

      function GetUser: TUser;
      procedure SetUser(const Value: TUser);
    public
      constructor Create;
      destructor Destroy; override;

      class function Getinstance: TUserAuthenticated;
      class function Newinstance: TObject; override;

      property User: TUser read GetUser write SetUser;
  end;

var
  GbInstance: TUserAuthenticated;

implementation

uses
  System.SysUtils;

{ TuserAuthenticated }

constructor TuserAuthenticated.create;
begin
  //a tela vai passar o fUser
end;

destructor TuserAuthenticated.Destroy;
begin
  FreeAndnil(FUser);
  inherited;
end;

class function TuserAuthenticated.Getinstance: TUserAuthenticated;
begin
   result := TuserAuthenticated.Create;
end;

function TuserAuthenticated.GetUser: TUser;
begin
  result := FUser;
end;

class function TuserAuthenticated.Newinstance: TObject;
begin
  if not Assigned(GbInstance) then
    GbInstance := TUserAuthenticated(inherited Newinstance);

  result := GbInstance;
end;

procedure TuserAuthenticated.SetUser(const Value: TUser);
begin
  FUser := Value;
end;

initialization

finalization
  FreeAndNil(GbInstance);

end.
