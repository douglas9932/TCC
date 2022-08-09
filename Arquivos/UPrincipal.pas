unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, UDM, frxClass, frxDBSet, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, UFrame3, Vcl.ComCtrls, Vcl.Buttons;

type
  TFPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    N1: TMenuItem;
    Cidade1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedor1: TMenuItem;
    Funcionario1: TMenuItem;
    Produto1: TMenuItem;
    Produto2: TMenuItem;
    Movimento1: TMenuItem;
    Compra1: TMenuItem;
    Venda1: TMenuItem;
    Descarte1: TMenuItem;
    Financeiro1: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    Caixa1: TMenuItem;
    Consultas1: TMenuItem;
    Fechar1: TMenuItem;
    Cargo1: TMenuItem;
    frxRCaixa: TfrxReport;
    frxDBCaixa: TfrxDBDataset;
    RelatrioVenda1: TMenuItem;
    frxRContasAPagar: TfrxReport;
    frxDBDContasAPagar: TfrxDBDataset;
    RelatrioContasAPagar1: TMenuItem;
    frxRContasAReceber: TfrxReport;
    frxRCliente: TfrxReport;
    frxRCompra: TfrxReport;
    frxRDescarte: TfrxReport;
    frxRFornecedor: TfrxReport;
    frxRFuncionario: TfrxReport;
    frxRProduto: TfrxReport;
    frxDBDContasAReceber: TfrxDBDataset;
    frxDBDCliente: TfrxDBDataset;
    frxDBDCompra: TfrxDBDataset;
    frxDBDFornecedor: TfrxDBDataset;
    frxDBDFuncionario: TfrxDBDataset;
    frxDBDDescarte: TfrxDBDataset;
    frxDBDProduto: TfrxDBDataset;
    RelatriocontasAReceber1: TMenuItem;
    RelatrioDeClientes1: TMenuItem;
    RelatrioDeCompras1: TMenuItem;
    RelatriodeDescartes1: TMenuItem;
    RelatrioDeFornecedores1: TMenuItem;
    RelatrioDeFuncionarios1: TMenuItem;
    RelatrioDeProdutos1: TMenuItem;
    frxRVenda: TfrxReport;
    frxDBDVenda: TfrxDBDataset;
    RelatriodeVendas1: TMenuItem;
    Image1: TImage;
    Panel1: TPanel;
    Venda: TImage;
    Compra: TImage;
    NovoCliente: TImage;
    CadastroDeProdutos: TImage;
    ContasAReceber: TImage;
    ContasAPagar: TImage;
    Caixa: TImage;
    Sair: TImage;
    procedure N1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Funcionario1Click(Sender: TObject);
    procedure Produto2Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Cargo1Click(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
    procedure Compra1Click(Sender: TObject);
    procedure Descarte1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure Caixa1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure RelatrioVenda1Click(Sender: TObject);
    procedure RelatrioContasAPagar1Click(Sender: TObject);
    procedure RelatriocontasAReceber1Click(Sender: TObject);
    procedure RelatrioDeClientes1Click(Sender: TObject);
    procedure RelatrioDeCompras1Click(Sender: TObject);
    procedure RelatriodeDescartes1Click(Sender: TObject);
    procedure RelatrioDeFornecedores1Click(Sender: TObject);
    procedure RelatrioDeFuncionarios1Click(Sender: TObject);
    procedure RelatrioDeProdutos1Click(Sender: TObject);
    procedure RelatriodeVendas1Click(Sender: TObject);
    procedure VendaClick(Sender: TObject);
    procedure VendaMouseEnter(Sender: TObject);
    procedure VendaMouseLeave(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure CompraClick(Sender: TObject);
    procedure CadastroDeClienteClick(Sender: TObject);
    procedure CadastroDeProdutoClick(Sender: TObject);
    procedure CaixaMouseLeave(Sender: TObject);
    procedure CompraMouseLeave(Sender: TObject);
    procedure CadastroDeClienteMouseLeave(Sender: TObject);
    procedure CadastroDeProdutoMouseLeave(Sender: TObject);
    procedure ContasAReceberMouseLeave(Sender: TObject);
    procedure ContasAPagarMouseLeave(Sender: TObject);
    procedure ContasAPagarClick(Sender: TObject);
    procedure ContasAReceberClick(Sender: TObject);
    procedure CaixaClick(Sender: TObject);
    procedure CompraMouseEnter(Sender: TObject);
    procedure NovoClienteMouseEnter(Sender: TObject);
    procedure CadastroDeProdutosMouseEnter(Sender: TObject);
    procedure ContasAReceberMouseEnter(Sender: TObject);
    procedure ContasAPagarMouseEnter(Sender: TObject);
    procedure CaixaMouseEnter(Sender: TObject);
    procedure SairMouseEnter(Sender: TObject);
    procedure NovoClienteMouseLeave(Sender: TObject);
    procedure CadastroDeProdutosMouseLeave(Sender: TObject);
    procedure SairMouseLeave(Sender: TObject);
    procedure NovoClienteClick(Sender: TObject);
    procedure CadastroDeProdutosClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses UCidade, UEstado, UCliente, UFornecedor, UFuncionario, UProduto, UMarca,
  UCargo, UVenda, UCompra, UDescarte, UContasaReceber, UCaixa, UContasaPagar,
  Utesterel;

procedure TFPrincipal.CadastroDeClienteClick(Sender: TObject);
begin
FCliente.ShowModal;
end;

procedure TFPrincipal.CadastroDeClienteMouseLeave(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width - 3;
  (Sender as TImage).Height := (Sender as TImage).Height - 3;
  (Sender as TImage).Left   := (Sender as TImage).Left + 0;
  (Sender as TImage).Top    := (Sender as TImage).Top + 2;
end;

procedure TFPrincipal.CadastroDeProdutoClick(Sender: TObject);
begin
FProduto.ShowModal;
end;

procedure TFPrincipal.CadastroDeProdutoMouseLeave(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width - 3;
  (Sender as TImage).Height := (Sender as TImage).Height - 3;
  (Sender as TImage).Left   := (Sender as TImage).Left + 0;
  (Sender as TImage).Top    := (Sender as TImage).Top + 2;
end;

procedure TFPrincipal.CadastroDeProdutosClick(Sender: TObject);
begin
FProduto.ShowModal;
end;

procedure TFPrincipal.CadastroDeProdutosMouseEnter(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width + 3;
  (Sender as TImage).Height := (Sender as TImage).Height + 3;
  (Sender as TImage).Left   := (Sender as TImage).Left - 0;
  (Sender as TImage).Top    := (Sender as TImage).Top - 2;
end;

procedure TFPrincipal.CadastroDeProdutosMouseLeave(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width - 3;
  (Sender as TImage).Height := (Sender as TImage).Height - 3;
  (Sender as TImage).Left   := (Sender as TImage).Left + 0;
  (Sender as TImage).Top    := (Sender as TImage).Top + 2;
end;

procedure TFPrincipal.Caixa1Click(Sender: TObject);
begin
     FCaixa.Showmodal;
end;

procedure TFPrincipal.CaixaClick(Sender: TObject);
begin
 FCaixa.ShowModal;


end;

procedure TFPrincipal.CaixaMouseEnter(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width + 3;
  (Sender as TImage).Height := (Sender as TImage).Height + 3;
  (Sender as TImage).Left   := (Sender as TImage).Left - 0;
  (Sender as TImage).Top    := (Sender as TImage).Top - 2;

end;

procedure TFPrincipal.CaixaMouseLeave(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width - 3;
  (Sender as TImage).Height := (Sender as TImage).Height - 3;
  (Sender as TImage).Left   := (Sender as TImage).Left + 0;
  (Sender as TImage).Top    := (Sender as TImage).Top + 2;
end;

procedure TFPrincipal.Cargo1Click(Sender: TObject);
begin
  FCargo.Showmodal;
end;

procedure TFPrincipal.Cidade1Click(Sender: TObject);
begin
  FCidade.Showmodal;
end;

procedure TFPrincipal.Cliente1Click(Sender: TObject);
begin
    FCliente.Showmodal;
end;

procedure TFPrincipal.Compra1Click(Sender: TObject);
begin
      FCompra.ShowModal;
end;

procedure TFPrincipal.CompraClick(Sender: TObject);
begin
FCompra.ShowModal;
end;

procedure TFPrincipal.CompraMouseLeave(Sender: TObject);
begin
 (Sender as TImage).Width  := (Sender as TImage).Width - 3;
  (Sender as TImage).Height := (Sender as TImage).Height - 3;
  (Sender as TImage).Left   := (Sender as TImage).Left + 0;
  (Sender as TImage).Top    := (Sender as TImage).Top + 2;
end;

procedure TFPrincipal.ContasaPagar1Click(Sender: TObject);
begin
      FContasaPagar.ShowModal;
end;

procedure TFPrincipal.ContasAPagarClick(Sender: TObject);
begin
FContasAPagar.ShowModal;
end;

procedure TFPrincipal.ContasAPagarMouseEnter(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width + 3;
  (Sender as TImage).Height := (Sender as TImage).Height + 3;
  (Sender as TImage).Left   := (Sender as TImage).Left - 0;
  (Sender as TImage).Top    := (Sender as TImage).Top - 2;
end;

procedure TFPrincipal.ContasAPagarMouseLeave(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width - 3;
  (Sender as TImage).Height := (Sender as TImage).Height - 3;
  (Sender as TImage).Left   := (Sender as TImage).Left + 0;
  (Sender as TImage).Top    := (Sender as TImage).Top + 2;
end;

procedure TFPrincipal.ContasaReceber1Click(Sender: TObject);
begin
  FContasaReceber.ShowModal;
  end;

procedure TFPrincipal.ContasAReceberClick(Sender: TObject);
begin
FContasAReceber.ShowModal;
end;

procedure TFPrincipal.ContasAReceberMouseEnter(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width + 3;
  (Sender as TImage).Height := (Sender as TImage).Height + 3;
  (Sender as TImage).Left   := (Sender as TImage).Left - 0;
  (Sender as TImage).Top    := (Sender as TImage).Top - 2;
end;

procedure TFPrincipal.ContasAReceberMouseLeave(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width - 3;
  (Sender as TImage).Height := (Sender as TImage).Height - 3;
  (Sender as TImage).Left   := (Sender as TImage).Left + 0;
  (Sender as TImage).Top    := (Sender as TImage).Top + 2;
end;

procedure TFPrincipal.Descarte1Click(Sender: TObject);
begin
  FDescarte.Showmodal;
end;

procedure TFPrincipal.Fechar1Click(Sender: TObject);
begin
 if DM.TBCaixaSTATUSCAIXA.AsString = 'ABERTO' then
    begin
      Showmessage('Voc� N�o Pode Sair Do Sistema Com O Caixa Aberto');
      FCaixa.ShowModal;
      Abort;
    end
    else

 if  Application.MessageBox('Deseja Mesmo Sair Do Sistema?','',MB_YESNO+ MB_ICONQUESTION) = ID_YES
 then
     begin
         FPrincipal.Close;
     end;

end;

procedure TFPrincipal.Fornecedor1Click(Sender: TObject);
begin
  FFornecedor.Showmodal;
end;

procedure TFPrincipal.Funcionario1Click(Sender: TObject);
begin
    FFuncionario.Showmodal;
end;

procedure TFPrincipal.Image2Click(Sender: TObject);
begin
FVenda.ShowModal;
end;

procedure TFPrincipal.CompraMouseEnter(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width + 3;
  (Sender as TImage).Height := (Sender as TImage).Height + 3;
  (Sender as TImage).Left   := (Sender as TImage).Left - 0;
  (Sender as TImage).Top    := (Sender as TImage).Top - 2;
end;

procedure TFPrincipal.VendaClick(Sender: TObject);
begin
FVenda.ShowModal;
end;

procedure TFPrincipal.VendaMouseEnter(Sender: TObject);
begin
begin
   (Sender as TImage).Width  := (Sender as TImage).Width + 3;
  (Sender as TImage).Height := (Sender as TImage).Height + 3;
  (Sender as TImage).Left   := (Sender as TImage).Left - 0;
  (Sender as TImage).Top    := (Sender as TImage).Top - 2;
end;
end;

procedure TFPrincipal.VendaMouseLeave(Sender: TObject);
begin
begin
  (Sender as TImage).Width  := (Sender as TImage).Width - 3;
  (Sender as TImage).Height := (Sender as TImage).Height - 3;
  (Sender as TImage).Left   := (Sender as TImage).Left + 0;
  (Sender as TImage).Top    := (Sender as TImage).Top + 2;
end
end;

procedure TFPrincipal.N1Click(Sender: TObject);
begin
    FEstado.Showmodal;
end;
                  procedure TFPrincipal.NovoClienteClick(Sender: TObject);
begin
FCliente.ShowModal;
end;

procedure TFPrincipal.NovoClienteMouseEnter(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width - 3;
  (Sender as TImage).Height := (Sender as TImage).Height - 3;
  (Sender as TImage).Left   := (Sender as TImage).Left + 2;
  (Sender as TImage).Top    := (Sender as TImage).Top + 0;
end;

procedure TFPrincipal.NovoClienteMouseLeave(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width + 3;
  (Sender as TImage).Height := (Sender as TImage).Height + 3;
  (Sender as TImage).Left   := (Sender as TImage).Left - 2;
  (Sender as TImage).Top    := (Sender as TImage).Top - 0;
end;

procedure TFPrincipal.Produto1Click(Sender: TObject);
begin
  FMarca.Showmodal;
end;

procedure TFPrincipal.Produto2Click(Sender: TObject);
begin
  FProduto.Showmodal;
end;

procedure TFPrincipal.RelatrioContasAPagar1Click(Sender: TObject);
begin
          frxRContasAPagar.ShowReport();
end;

procedure TFPrincipal.RelatriocontasAReceber1Click(Sender: TObject);
begin
 frxRContasAReceber.ShowReport();
end;

procedure TFPrincipal.RelatrioDeClientes1Click(Sender: TObject);
begin
frxRCliente.ShowReport();
end;

procedure TFPrincipal.RelatrioDeCompras1Click(Sender: TObject);
begin
frxRCompra.ShowReport();
end;

procedure TFPrincipal.RelatriodeDescartes1Click(Sender: TObject);
begin
frxRDescarte.ShowReport();
end;

procedure TFPrincipal.RelatrioDeFornecedores1Click(Sender: TObject);
begin
frxRFornecedor.ShowReport();
end;

procedure TFPrincipal.RelatrioDeFuncionarios1Click(Sender: TObject);
begin
frxRFuncionario.ShowReport();
end;

procedure TFPrincipal.RelatrioDeProdutos1Click(Sender: TObject);
begin
frxRProduto.ShowReport();
end;

procedure TFPrincipal.RelatriodeVendas1Click(Sender: TObject);
begin
frxRVenda.ShowReport();
end;

procedure TFPrincipal.RelatrioVenda1Click(Sender: TObject);
begin
      frxRCaixa.ShowReport();
end;

procedure TFPrincipal.SairClick(Sender: TObject);
begin

if DM.TBCaixaSTATUSCAIXA.AsString = 'ABERTO' then
    begin
      Showmessage('Voc� N�o Pode Sair Do Sistema Com O Caixa Aberto');
      FCaixa.ShowModal;
      Abort;
    end
    else

 if  Application.MessageBox('Deseja Mesmo Sair Do Sistema?','',MB_YESNO+ MB_ICONQUESTION) = ID_YES
 then
     begin
         FPrincipal.Close;
     end;

end;

procedure TFPrincipal.SairMouseEnter(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width + 3;
  (Sender as TImage).Height := (Sender as TImage).Height + 3;
  (Sender as TImage).Left   := (Sender as TImage).Left - 0;
  (Sender as TImage).Top    := (Sender as TImage).Top - 2;
end;

procedure TFPrincipal.SairMouseLeave(Sender: TObject);
begin
(Sender as TImage).Width  := (Sender as TImage).Width - 3;
  (Sender as TImage).Height := (Sender as TImage).Height - 3;
  (Sender as TImage).Left   := (Sender as TImage).Left + 0;
  (Sender as TImage).Top    := (Sender as TImage).Top + 2;
end;

procedure TFPrincipal.Venda1Click(Sender: TObject);
begin
 FVenda.Showmodal;
end;

end.
