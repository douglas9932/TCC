unit UMarca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrame, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFMarca = class(TForm)
    Frame11: TFrame1;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBText1: TDBText;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
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
  FMarca: TFMarca;

implementation

{$R *.dfm}

uses UDM, UpesquisaMarca;

procedure TFMarca.Frame11BitBtn10Click(Sender: TObject);
begin
  Dm.TBMarca.Last;
end;

procedure TFMarca.Frame11BitBtn11Click(Sender: TObject);
begin

    FPesquisaMarca.Showmodal;

end;

procedure TFMarca.Frame11BitBtn7Click(Sender: TObject);
begin
  Dm.TBMarca.First;
end;

procedure TFMarca.Frame11BitBtn8Click(Sender: TObject);
begin
  Dm.TBMarca.Prior;
end;

procedure TFMarca.Frame11BitBtn9Click(Sender: TObject);
begin
  Dm.TBMarca.Next;
end;

procedure TFMarca.Frame11BTCancelarClick(Sender: TObject);
begin
  Frame11.BTCancelarClick(Sender);
  Dm.TBMarca.Cancel;
end;

procedure TFMarca.Frame11BTEditarClick(Sender: TObject);
begin
  Frame11.BTEditarClick(Sender);
  Dm.TBMarca.Edit;
end;

procedure TFMarca.Frame11BTExcluirClick(Sender: TObject);
begin
  Frame11.BTExcluirClick(Sender);
     if  Application.MessageBox('Deseja Mesmo Excluir?','',MB_YESNO+ MB_ICONQUESTION) = ID_YES
 then
     begin
         Dm.TBMarca.Delete;
     end;

end;

procedure TFMarca.Frame11BTFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFMarca.Frame11BTNovoClick(Sender: TObject);
begin
  Frame11.BTNovoClick(Sender);
  Dm.TBMarca.Insert;
end;

procedure TFMarca.Frame11BTSalvarClick(Sender: TObject);
begin
  Frame11.BTSalvarClick(Sender);
  Dm.TBMarca.Post;
end;

end.