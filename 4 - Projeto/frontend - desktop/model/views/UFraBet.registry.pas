unit UFraBet.registry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Layouts, FMX.Objects, FMX.Controls.Presentation, FMX.Edit;

type
  TFrame1 = class(TFrame)
    RectPrincipal: TRectangle;
    RectSalvar: TRectangle;
    rectTimeA: TRectangle;
    rectVoltar: TRectangle;
    rectTimeB: TRectangle;
    edtResultTeamB: TEdit;
    edtResultTeamA: TEdit;
    Image1: TImage;
    lytBotoes: TLayout;
    LytPrincipal: TLayout;
    lstPartidas: TListView;
    Label1: TLabel;
    lblX: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
