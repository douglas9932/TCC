unit UCargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrame, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFCargo = class(TForm)
    Frame11: TFrame1;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBText1: TDBText;
    DBGrid1: TDBGrid;
    DBComboBox1: TDBComboBox;
    procedure Frame11BTNovoClick(Sender: TObject);
    procedure Frame11BTEditarClick(Sender: TObject);
    procedure Frame11BTExcluirClick(Sender: TObject);
    procedure Frame11BTCancelarClick(Sender: TObject);
    procedure Frame11BTSalvarClick(Sender: TObject);
    procedure Frame11BTFecharClick(Sender: TObject);
    procedure Frame11BitBtn7Click(Sender: TObject);
    procedure Frame11BitBtn8Click(Sender: TObject);
    procedure Frame11BitBtn9Click(Sender: TObject);
    procedure Frame11BitBtn10Click(Sender: TObject);
    procedure Frame11BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCargo: TFCargo;

implementation

{$R *.dfm}

uses UDM, UPesquisaCargo;

procedure TFCargo.Frame11BitBtn10Click(Sender: TObject);
begin
  Dm.TBCargo.Last;
end;

procedure TFCargo.Frame11BitBtn11Click(Sender: TObject);
begin
FPesquisaCargo.Showmodal;
end;

procedure TFCargo.Frame11BitBtn7Click(Sender: TObject);
begin
  Dm.TBCargo.First;
end;

procedure TFCargo.Frame11BitBtn8Click(Sender: TObject);
begin
  Dm.TBCargo.Prior;
end;

procedure TFCargo.Frame11BitBtn9Click(Sender: TObject);
begin
  Dm.TBCargo.Next;
end;

procedure TFCargo.Frame11BTCancelarClick(Sender: TObject);
begin
  Frame11.BTCancelarClick(Sender);
  Dm.TBCargo.Cancel;
end;

procedure TFCargo.Frame11BTEditarClick(Sender: TObject);
begin
  Frame11.BTEditarClick(Sender);
  Dm.TBCargo.Edit;
end;

procedure TFCargo.Frame11BTExcluirClick(Sender: TObject);
begin
  Frame11.BTExcluirClick(Sender);
  if  Application.MessageBox('Deseja Mesmo Excluir?','',MB_YESNO+ MB_ICONQUESTION) = ID_YES
 then
     begin
       Dm.TBCargo.Delete;
     end;


end;

procedure TFCargo.Frame11BTFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFCargo.Frame11BTNovoClick(Sender: TObject);
begin
  Frame11.BTNovoClick(Sender);
  Dm.TBCargo.Insert;
end;

procedure TFCargo.Frame11BTSalvarClick(Sender: TObject);
begin

  if DBedit2.Text = '' then
   begin
   Showmessage('O Nome do Cargo � Obrigat�rio');
   DBedit2.SetFocus;
   Abort;
   end
   else

  Frame11.BTSalvarClick(Sender);
  Dm.TBCargo.Post;
end;

end.
