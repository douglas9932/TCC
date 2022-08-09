unit UPesquisaDescartes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFPesquisaDescartes = class(TForm)
    BTPesquisa: TBitBtn;
    EDPesquisa: TEdit;
    RGPesquisa: TRadioGroup;
    DBGrid1: TDBGrid;
    procedure BTPesquisaClick(Sender: TObject);
    procedure EDPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure EDPesquisaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaDescartes: TFPesquisaDescartes;

implementation

{$R *.dfm}

uses UDM;

procedure TFPesquisaDescartes.BTPesquisaClick(Sender: TObject);
var
  Data:String;

begin


  if (RGPesquisa.ItemIndex = 1) and (EDPesquisa.Text = '') then
  begin
  Showmessage('Digite um Código Para Pesquisar por Código');
  EDPesquisa.SetFocus;
  abort;
  end
  Else

  if (RGPesquisa.ItemIndex = 4) and (EDPesquisa.Text = '') then
  begin
  Showmessage('Digite Uma Data Para Pesquisar Por Data');
  EDPesquisa.SetFocus;
  abort;
  end
  Else


   Data:=EDPesquisa.Text;
    With DM.QuPesquisa do
  Begin
		Close;
		Sql.clear;
	      Begin
   	     Case RGPesquisa.ItemIndex of
       0:begin
       SQL.Add('Select * from Descarte');
       Prepare;
       open;
       DBGrid1.SetFocus;
       end;
       1:begin
       SQL.Add('Select * from  Descarte where  IdDescarte = '+EdPesquisa.Text);
       Prepare;
       open;
       DBGrid1.SetFocus;
       end;
       2:begin
       SQL.Add('Select * from  Descarte, Funcionario where Descarte.IDFuncionario = Funcionario.IDFuncionario and Funcionario.NomeFuncionario like '+#39+EdPesquisa.text+'%'+#39);
       Prepare;
       open;
       DBGrid1.SetFocus;
       end;
       3:begin
       SQL.Add('Select * from  Descarte, Produto where Descarte.IDProduto = Produto.IDProduto and Produto.NomeProduto like '+#39+EdPesquisa.text+'%'+#39);
       Prepare;
       open;
       DBGrid1.SetFocus;
       end;
       4:begin
       SQL.Add('Select * from Descarte Where data=:pData;');
       ParamByName('pData').AsDateTime:=StrToDate(Data);
       Prepare;
       open;
       DBGrid1.SetFocus;
       end;

      End;
    End;
  End;
end;

procedure TFPesquisaDescartes.EDPesquisaExit(Sender: TObject);
begin
 try
      strtodate(EDPesquisa.text);
      except

      on EConvertError do
        Showmessage('Data Invalida!!!');
        end;
end;

procedure TFPesquisaDescartes.EDPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if RGPesquisa.ItemIndex=1 then               //seleciona a opcao nome da consulta
   if not (Key in ['0'..'9',#8]) then       // e faz o bloqueio de numeros, espaco
     key := #0;

  if Key=#13 Then    //quando precionar entrer, ja exec. o botão pesquisar
  BtPesquisa.click;
end;

end.
