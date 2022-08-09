unit UCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrame, Data.DB, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TFCidade = class(TForm)
    Frame11: TFrame1;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
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
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCidade: TFCidade;

implementation

{$R *.dfm}

uses UDM, UPesquisaCidade, UEstado;

procedure TFCidade.BitBtn1Click(Sender: TObject);
begin
 FEstado.showmodal;
end;

procedure TFCidade.Frame11BitBtn10Click(Sender: TObject);
begin
  DM.TBCidade.Last;
end;

procedure TFCidade.Frame11BitBtn11Click(Sender: TObject);
begin

FPesquisaCidade.Showmodal;

end;

procedure TFCidade.Frame11BitBtn7Click(Sender: TObject);
begin
  DM.TBCidade.First;
end;

procedure TFCidade.Frame11BitBtn8Click(Sender: TObject);
begin
  DM.TBCidade.Prior;
end;

procedure TFCidade.Frame11BitBtn9Click(Sender: TObject);
begin
  DM.TBCidade.Next;
end;

procedure TFCidade.Frame11BTCancelarClick(Sender: TObject);
begin
  Frame11.BTCancelarClick(Sender);
  DM.TBCidade.Cancel;
end;

procedure TFCidade.Frame11BTEditarClick(Sender: TObject);
begin
  Frame11.BTEditarClick(Sender);
  DM.TBCidade.Edit;
end;

procedure TFCidade.Frame11BTExcluirClick(Sender: TObject);
begin
Frame11.BTExcluirClick(Sender);
if  Application.MessageBox('Deseja Mesmo Excluir?','',MB_YESNO+ MB_ICONQUESTION) = ID_YES
 then
     begin
        DM.TBCidade.Delete;
     end;

end;

procedure TFCidade.Frame11BTFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFCidade.Frame11BTNovoClick(Sender: TObject);
begin
  Frame11.BTNovoClick(Sender);
  DM.TBCidade.Insert;

end;

procedure TFCidade.Frame11BTSalvarClick(Sender: TObject);
begin

  if DBedit3.Text = '' then
   begin
   Showmessage('O Nome Da Cidade É Obrigatório');
   DBedit3.SetFocus;
   Abort;
   end
   else

   if DBLookupComboBox1.Text = '' then
   begin
   Showmessage('A Sigla Do Estado É Obrigatória');
   DBLookupComboBox1.SetFocus;
   Abort;
   end
   else

  Frame11.BTSalvarClick(Sender);
  DM.TBCidade.Post;
end;

end.
