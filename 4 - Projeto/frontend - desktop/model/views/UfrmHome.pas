unit UfrmHome;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.ListBox,
  FMX.MultiView;

type
  TFrmHome = class(TForm)
    rectPrincipal: TRectangle;
    lytContainer: TLayout;
    imgDevsHome: TImage;
    StyleBook1: TStyleBook;
    MultiView1: TMultiView;
    lstMenu: TListBox;
    lytLogo: TLayout;
    Image2: TImage;
    Rectangle2: TRectangle;
    btnHome: TSpeedButton;
    procedure lstMenuItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
  private
    procedure AbrirTeam;
    procedure AbrirMatch;
    procedure AbrirBet;

    procedure RemoverTelaAnterior;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHome : TFrmHome;

implementation

uses
{  UfraTeam,
  UfraMatch,
  UfraBet,}
  UUtils.Enums;

{$R *.fmx}

{ TFrmHome }


{ TFrmHome }

procedure TFrmHome.AbrirBet;
begin
  {if not Assigned(FraBet) then
    FraBet := FraBet.Create(Application);

  FraBet.Align := TAlignLayout.Center;
  lytContainer.AddObject(FraBet);}
end;

procedure TFrmHome.AbrirMatch;
begin
 { if not Assigned(FraMatch) then
    FraMatch := FraMatch.Create(Application);

  FraMatch.Align := TAlignLayout.Center;
  lytContainer.AddObject(FraMatch);  }
end;

procedure TFrmHome.AbrirTeam;
begin
  {if not Assigned(FraTeam) then
    FraTeam := FraTeam.Create(Application);

  FraTeam.Align := TAlignLayout.Center;
  lytContainer.AddObject(FraTeam); }
end;

procedure TFrmHome.lstMenuItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
  Self.RemoverTelaAnterior;

  case TEnumMenu(ITem.Index) of
    mnuTime:
      Self.AbrirTeam;
    mnuPartidas:
      Self.AbrirMatch;
    mnuPalpites:
      Self.AbrirBet;
    mnuSair:
      Self.Close;
  end;

  MultiView1.HideMaster;
end;


procedure TFrmHome.RemoverTelaAnterior;
var
  i:integer;
begin
  for i := pred(lytContainer.ControlsCount) downto 0 do
    if lytContainer.Controls[i].Name <> 'imgDevsHome' then
      lytContainer.RemoveObject(i);
end;

end.
