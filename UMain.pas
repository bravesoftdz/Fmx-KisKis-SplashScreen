unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.TabControl, FMX.Ani, FMX.Objects;

type
  TForm1 = class(TForm)
    TabCtrl_APP: TTabControl;
    stylBook_Transparent: TStyleBook;
    Img_Splash: TImage;
    FAni_Loading: TFloatAnimation;
    Tab_Loading: TTabItem;
    Tab_Main: TTabItem;
    Tab_About: TTabItem;
    Timer_Load: TTimer;
    Timer_Animate: TTimer;
    AniInd_Loading: TAniIndicator;
    procedure Timer_LoadTimer(Sender: TObject);
    procedure Timer_AnimateTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Timer_AnimateTimer(Sender: TObject);
begin
  Timer_Animate.Enabled := False;
  FAni_Loading.Enabled := True;
  AniInd_Loading.Visible := True;
  AniInd_Loading.Enabled := True;
end;

procedure TForm1.Timer_LoadTimer(Sender: TObject);
begin
  Timer_Load.Enabled := False;
  AniInd_Loading.Enabled := False;
  AniInd_Loading.Visible := False;

  TabCtrl_APP.ActiveTab := Tab_Main;
end;

end.
