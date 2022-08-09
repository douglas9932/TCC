unit UEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, UFrame, Vcl.ExtCtrls;

type
  TFEstado = class(TForm)
    Frame11: TFrame1;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
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
  FEstado: TFEstado;

implementation

{$R *.dfm}

uses UDM, UPesquisaEstado;

procedure TFEstado.Frame11BitBtn10Click(Sender: TObject);
begin
  DM.TBEstado.Last;
end;

procedure TFEstado.Frame11BitBtn11Click(Sender: TObject);
begin

FPesquisaEstado.Showmodal;

end;

procedure TFEstado.Frame11BitBtn7Click(Sender: TObject);
begin
  DM.TBEstado.First;
end;

procedure TFEstado.Frame11BitBtn8Click(Sender: TObject);
begin
  DM.TBEstado.Prior;
end;

procedure TFEstado.Frame11BitBtn9Click(Sender: TObject);
begin
  DM.TBEstado.Next;
end;

procedure TFEstado.Frame11BTCancelarClick(Sender: TObject);
begin
  Frame11.BTCancelarClick(Sender);
  DM.TBEstado.Cancel;
end;

procedure TFEstado.Frame11BTEditarClick(Sender: TObject);
begin
  Frame11.BTEditarClick(Sender);
  DM.TBEstado.Edit;
end;

procedure TFEstado.Frame11BTExcluirClick(Sender: TObject);
begin
  Frame11.BTExcluirClick(Sender);
    if  Application.MessageBox('Deseja Mesmo Excluir?','',MB_YESNO+ MB_ICONQUESTION) = ID_YES
 then
     begin
        DM.TBEstado.Delete;
     end;


end;

procedure TFEstado.Frame11BTFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFEstado.Frame11BTNovoClick(Sender: TObject);
begin
  Frame11.BTNovoClick(Sender);  //nao apagar
  DM.TBEstado.Insert;


end;

procedure TFEstado.Frame11BTSalvarClick(Sender: TObject);
begin
   if DBedit2.Text = '' then
   begin
   Showmessage('O Nome Do Estado É Obrigatório');
   DBedit2.SetFocus;
   Abort;
   end
   else
   if DBComboBox1.Text = '' then
   begin
   Showmessage('A Sigla Do Estado É Obrigatória');
   DBComboBox1.SetFocus;
   Abort;
   end
   else

  Frame11.BTSalvarClick(Sender);
  DM.TBEstado.Post;
end;

end.
