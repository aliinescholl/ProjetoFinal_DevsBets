unit UDAO.Users;

interface

uses
  UDAO.Base;

type
  TDAO = class(TDAObase)
    public
    function ValidarLogin(aUser, aPassword: String): Boolean;
    constructor Create;
  end;

implementation

{ TDAO }

constructor TDAO.Create;
begin
  FTabela := 'users'
end;

function TDAO.ValidarLogin(aUser, aPassword: String): Boolean;
begin

end;

end.
