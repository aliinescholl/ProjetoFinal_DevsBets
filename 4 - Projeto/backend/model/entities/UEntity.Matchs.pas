unit UEntity.Matchs;

interface

uses
  System.JSON,
  GBSwagger.Model.Attributes, UEntity.Teams;

type
  Tmatch = class
  private
    FId : Integer;
    FDate: TDate;
    FHour: TTime;
    FTeamA: TTeam;
    FTeamB: TTeam;
    FResultTeamA: Byte;
    FResultTeamB: Byte;
    FStatusByte: Byte;

    function GetDate: TDate;
    function GetFId: Integer;
    function GetHour: TTime;
    function GetResultTeamA: Byte;
    function GetResultTeamB: Byte;
    function GetStatusByte: Byte;
    function GetTeamA: TTeam;
    function GetTeamB: TTeam;

    procedure SetDate(const Value: TDate);
    procedure SetFId(const Value: Integer);
    procedure SetHour(const Value: TTime);
    procedure SetResultTeamA(const Value: Byte);
    procedure SetResultTeamB(const Value: Byte);
    procedure SetStatusByte(const Value: Byte);
    procedure SetTeamA(const Value: TTeam);
    procedure SetTeamB(const Value: TTeam);

  public
    [SwagProp('Partida Id', True)]
    property Id: Integer read GetFId write SetFId;

    [SwagProp('Partida Data', True)]
    property Date: TDate read GetDate write SetDate;

    [SwagProp('Partida Hora', True)]
    property Hour: TTime read GetHour write SetHour;

    [SwagProp('Partida Time A', True)]
    property TeamA: TTeam read GetTeamA write SetTeamA;

    [SwagProp('Partida Time B', True)]
    property TeamB: TTeam read GetTeamB write SetTeamB;

    [SwagProp('Partida Resultado Time A', True)]
    property ResultTeamA: Byte read GetResultTeamA write SetResultTeamA;

    [SwagProp('Partida Resultado Time B', True)]
    property ResultTeamB: Byte read GetResultTeamB write SetResultTeamB;

    [SwagProp('Partida Status')]
    property StatusByte: Byte read GetStatusByte write SetStatusByte;
  end;

implementation

{ Tmatch }

function Tmatch.GetDate: TDate;
begin
  result := FDate;
end;

function Tmatch.GetFId: Integer;
begin
  result := FId;
end;

function Tmatch.GetHour: TTime;
begin
  result := FHour;
end;

function Tmatch.GetResultTeamA: Byte;
begin
  result := FResultTeamA;
end;

function Tmatch.GetResultTeamB: Byte;
begin
  result := FResultTeamB;
end;

function Tmatch.GetStatusByte: Byte;
begin
  result := FStatusByte;
end;

function Tmatch.GetTeamA: TTeam;
begin
  result := FTeamA;
end;

function Tmatch.GetTeamB: TTeam;
begin
  result := FTeamB;
end;

procedure Tmatch.SetDate(const Value: TDate);
begin
  FDate := Value;
end;

procedure Tmatch.SetFId(const Value: Integer);
begin
  FId := Value;
end;

procedure Tmatch.SetHour(const Value: TTime);
begin
  FHour := Value;
end;

procedure Tmatch.SetResultTeamA(const Value: Byte);
begin
  FResultTeamA := Value;
end;

procedure Tmatch.SetResultTeamB(const Value: Byte);
begin
  FResultTeamB := Value;
end;

procedure Tmatch.SetStatusByte(const Value: Byte);
begin
  FStatusByte := Value;
end;

procedure Tmatch.SetTeamA(const Value: TTeam);
begin
  FTeamA := Value;
end;

procedure Tmatch.SetTeamB(const Value: TTeam);
begin
  FTeamB := Value;
end;

end.
