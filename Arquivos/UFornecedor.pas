unit UFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrame, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TFFornecedor = class(TForm)
    Frame11: TFrame1;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBText1: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    procedure Frame11BTNovoClick(Sender: TObject);
    procedure Frame11BTFecharClick(Sender: TObject);
    procedure Frame11BTEditarClick(Sender: TObject);
    procedure Frame11BTExcluirClick(Sender: TObject);
    procedure Frame11BTCancelarClick(Sender: TObject);
    procedure Frame11BTSalvarClick(Sender: TObject);
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
  FFornecedor: TFFornecedor;

implementation

{$R *.dfm}

uses UDM, UPesquisaFornecedor, UCidade;

procedure TFFornecedor.BitBtn1Click(Sender: TObject);
begin
   FCidade.Showmodal;
end;

procedure TFFornecedor.Frame11BitBtn10Click(Sender: TObject);
begin
   Dm.TBFornecedor.Last;
end;

procedure TFFornecedor.Frame11BitBtn11Click(Sender: TObject);
begin

FPesquisaFornecedor.Showmodal;

end;

procedure TFFornecedor.Frame11BitBtn7Click(Sender: TObject);
begin
  Dm.TBFornecedor.First;
end;

procedure TFFornecedor.Frame11BitBtn8Click(Sender: TObject);
begin
  Dm.TBFornecedor.Prior;
end;

procedure TFFornecedor.Frame11BitBtn9Click(Sender: TObject);
begin
  Dm.TBFornecedor.Next;
end;

procedure TFFornecedor.Frame11BTCancelarClick(Sender: TObject);
begin
  Frame11.BTCancelarClick(Sender);
    Dm.TBFornecedor.Cancel;
end;

procedure TFFornecedor.Frame11BTEditarClick(Sender: TObject);
begin
  Frame11.BTEditarClick(Sender);
  Dm.TBFornecedor.Edit;
end;

procedure TFFornecedor.Frame11BTExcluirClick(Sender: TObject);
begin
  Frame11.BTExcluirClick(Sender);
   if  Application.MessageBox('Deseja Mesmo Excluir?','',MB_YESNO+ MB_ICONQUESTION) = ID_YES
 then
     begin
         Dm.TBFornecedor.Delete;
     end;

end;

procedure TFFornecedor.Frame11BTFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFFornecedor.Frame11BTNovoClick(Sender: TObject);
begin
  Frame11.BTNovoClick(Sender);
   Dm.TBFornecedor.Insert;
end;

procedure TFFornecedor.Frame11BTSalvarClick(Sender: TObject);
begin

   if DBedit3.Text = '' then
   begin
   Showmessage('O Nome Fantasia É Obrigatório');
   DBedit3.SetFocus;
   Abort;
   end
   else
   if DBedit6.Text = '' then
   begin
   Showmessage('A Razão Social É Obrigatória');
   DBedit6.SetFocus;
   Abort;
   end
   else
   if DBedit4.Text = '' then
   begin
   Showmessage('O CNPJ É Obrigatório');
   DBedit4.SetFocus;
   Abort;
   end
   else
    if DBLookupComboBox1.Text = '' then
   begin
   Showmessage('O Nome Da Cidade É Obrigatório');
   DBLookupComboBox1.SetFocus;
   Abort;
   end
   else

  Frame11.BTSalvarClick(Sender);
  Dm.TBFornecedor.Post;

end;

end.
