unit UProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrame, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TFProduto = class(TForm)
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
    DBComboBox1: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
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
  FProduto: TFProduto;

implementation

{$R *.dfm}

uses UDM, UPesquisaProduto, UMarca;

procedure TFProduto.BitBtn1Click(Sender: TObject);
begin
 FMarca.Showmodal;
end;

procedure TFProduto.Frame11BitBtn10Click(Sender: TObject);
begin
   Dm.TBProduto.Last;
end;

procedure TFProduto.Frame11BitBtn11Click(Sender: TObject);
begin

    FPesquisaProduto.Showmodal;

end;

procedure TFProduto.Frame11BitBtn7Click(Sender: TObject);
begin
  Dm.TBProduto.First;
end;

procedure TFProduto.Frame11BitBtn8Click(Sender: TObject);
begin
  Dm.TBProduto.Prior;
end;

procedure TFProduto.Frame11BitBtn9Click(Sender: TObject);
begin
  Dm.TBProduto.Next;
end;

procedure TFProduto.Frame11BTCancelarClick(Sender: TObject);
begin
  Frame11.BTCancelarClick(Sender);
  Dm.TBProduto.Cancel;
end;

procedure TFProduto.Frame11BTEditarClick(Sender: TObject);
begin
  Frame11.BTEditarClick(Sender);
  Dm.TBProduto.Edit;
end;

procedure TFProduto.Frame11BTExcluirClick(Sender: TObject);
begin
  Frame11.BTExcluirClick(Sender);
  Dm.TBProduto.Delete;
end;

procedure TFProduto.Frame11BTFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFProduto.Frame11BTNovoClick(Sender: TObject);
begin
  Frame11.BTNovoClick(Sender);
  Dm.TBProduto.Insert;
end;

procedure TFProduto.Frame11BTSalvarClick(Sender: TObject);
begin
if DBedit3.Text = '' then
   begin
   Showmessage('O Nome Do Produto � Obrigat�rio');
   DBedit3.SetFocus;
   Abort;
   end
   else

   if DBLookupComboBox1.Text = '' then
   begin
   Showmessage('A Marca � Obrigat�ria');
   DBLookupComboBox1.SetFocus;
   Abort;
   end
   else


  Frame11.BTSalvarClick(Sender);
  Dm.TBProduto.Post;
end;

end.
