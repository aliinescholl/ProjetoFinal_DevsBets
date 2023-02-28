unit UfraTeams;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.Controls.Presentation, FMX.ListView, FMX.Objects, FMX.Layouts, UEntity.Teams;

type
  TFraTeam = class(TFrame)
    RectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    Image1: TImage;
    LstTimes: TListView;
    rectToolbar: TRectangle;
    RectExcluir: TRectangle;
    RectNovo: TRectangle;
    Label2: TLabel;
    Label1: TLabel;
    procedure RectNovoClick(Sender: TObject);
    procedure RectExcluirClick(Sender: TObject);
  private
    { Private declarations }
   procedure AbrirTeamRegistry;
   procedure CarregarRegistros;
   procedure ExcluirRegistro;
   procedure PreencherTeam(aTeam: TTeam);
  public
    { Public declarations }
   constructor Create(aOwner: TComponent); override;
  end;

var
  fraTeam: TFraTeam;

implementation

{$R *.fmx}

uses
  UFraTeamsRegistry,
  UService.intf,
  UService.Team;

{ TFraTeam }

procedure TFraTeam.AbrirTeamRegistry;
begin
  if not(fraTeamsRegistry) then
   FraTeamsRegistry := TfraTeamsRegistry.Create(application);

   fraTeamsRegistry.Align := TAlignLayout.Center;

   Self.Parent.AddObject(fraTeamsRegistry);
   FreeAndNil(FraTeam);
end;

procedure TFraTeam.CarregarRegistros;
var
  xServiceTeam: IService;
  xTeam: TTeam;
begin
  LstTimes.Items.Clear;

  xServiceTeam := TServiceTeam.Create;
  xServiceTeam.Listar;

  for xTeam in TServiceTeam(xServiceTeam).Teams do
    Self.PreencherTeam(xTeam);
end;

constructor TFraTeam.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  Self.CarregarRegistros;

end;

procedure TFraTeam.ExcluirRegistro;
var
  xServiceTeam: IService;
  xTeam: TTeam;
  xItem: TListViewItem;
begin
  if lstTimes.ItemIndex = - 1 then
    Exit;

  xItem := lstTimes.Items[lstTimes.ItemIndex];
  xTeam := TTeam.Create(xItem.Tag);

  xServiceTeam := TServiceTeam.Create(xTeam);
  try
    xServiceTeam.Excluir;
    ShowMessage('Registro excluido');
  finally
    Self.CarregarRegistros;
  end;

end;

procedure TFraTeam.PreencherTeam(aTeam: TTeam);
var
  xItem: TListViewItem;
begin
  xItem := LstTimes.Items.Add;
  xItem.Tag := aTeam.Id;

  TListItemText(xItem.Objects.FindDrawable('txtTime')).Text := aTeam.Name;
end;

procedure TFraTeam.RectExcluirClick(Sender: TObject);
begin
  Self.ExcluirRegistro;
end;

procedure TFraTeam.RectNovoClick(Sender: TObject);
begin
  Self.AbrirTeamRegistry;
end;

end.
