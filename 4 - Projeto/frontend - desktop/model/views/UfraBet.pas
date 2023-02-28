unit UfraBet;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TFraBet = class(TFrame)
    RectPrincipal: TRectangle;
    RectToolbar: TRectangle;
    LytPartidas: TLayout;
    LytPrincipal: TLayout;
    Image1: TImage;
    RectNovo: TRectangle;
    Label1: TLabel;
    RectExcluir: TRectangle;
    Label2: TLabel;
    LstPalpites: TListView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
