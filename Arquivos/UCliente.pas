unit UCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrame, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TFCliente = class(TForm)
    Frame11: TFrame1;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBText1: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
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
  FCliente: TFCliente;

implementation

{$R *.dfm}

uses UDM, UPesquisaCargo, UPesquisaCliente, UCidade;

procedure TFCliente.BitBtn1Click(Sender: TObject);
begin
    FCidade.Showmodal;
end;

procedure TFCliente.Frame11BitBtn10Click(Sender: TObject);
begin
  Dm.TBCliente.Last;
end;

procedure TFCliente.Frame11BitBtn11Click(Sender: TObject);
begin

FPesquisaCliente.Showmodal;

end;

procedure TFCliente.Frame11BitBtn7Click(Sender: TObject);
begin
 Dm.TBCliente.First;
end;

procedure TFCliente.Frame11BitBtn8Click(Sender: TObject);
begin
  Dm.TBCliente.Prior;
end;

procedure TFCliente.Frame11BitBtn9Click(Sender: TObject);
begin
  Dm.TBCliente.Next;
end;

procedure TFCliente.Frame11BTCancelarClick(Sender: TObject);
begin
  Frame11.BTCancelarClick(Sender);
  Dm.TBCliente.Cancel;
end;

procedure TFCliente.Frame11BTEditarClick(Sender: TObject);
begin
  Frame11.BTEditarClick(Sender);
  Dm.TBCliente.Edit;
end;

procedure TFCliente.Frame11BTExcluirClick(Sender: TObject);
begin
  Frame11.BTExcluirClick(Sender);
  if  Application.MessageBox('Deseja Mesmo Excluir?','',MB_YESNO+ MB_ICONQUESTION) = ID_YES
 then
     begin
         Dm.TBCliente.Delete;
     end;

end;

procedure TFCliente.Frame11BTFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TFCliente.Frame11BTNovoClick(Sender: TObject);
begin
  Frame11.BTNovoClick(Sender);
  Dm.TBCliente.Insert;
end;

procedure TFCliente.Frame11BTSalvarClick(Sender: TObject);
begin

  if DBedit3.Text = '' then
   begin
   Showmessage('O Nome Do Cliente É Obrigatório');
   DBedit3.SetFocus;
   Abort;
   end
   else

   if DBedit10.Text = '' then
   begin
   Showmessage('O RG É Obrigatório');
   DBedit10.SetFocus;
   Abort;
   end
   else

   if DBedit4.Text= '' then
   begin
   Showmessage('O CPF Do Cliente É Obrigatório');
   DBedit4.SetFocus;
   Abort;
   end
   else

   if DBedit6.Text = '' then
   begin
   Showmessage('A Data De Nascimento É Obrigatória');
   DBedit6.SetFocus;
   Abort;
   end
   else

   if DBComboBox1.Text = '' then
   begin
   Showmessage('O Sexo Do Cliente É Obrigatório');
   DBComboBox1.SetFocus;
   Abort;
   end
   else

   if DBedit8.Text = '' then
   begin
   Showmessage('O Numero De Telefone É Obrigatório');
   DBedit8.SetFocus;
   Abort;
   end
   else

   {if DBedit7.Text = '' then
   begin
   Showmessage('O Endereço É Obrigatório');
   DBedit7.SetFocus;
   Abort;
   end
   else}

   if DBLookupComboBox1.Text = '' then
   begin
   Showmessage('A Cidade Do Cliente É Obrigatória');
   DBLookupComboBox1.SetFocus;
   Abort;
   end
   else

  Frame11.BTSalvarClick(Sender);
  Dm.TBCliente.Post;
end;

end.
