unit UfraTimes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.Controls.Presentation, FMX.ListView, FMX.Objects, FMX.Layouts;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
