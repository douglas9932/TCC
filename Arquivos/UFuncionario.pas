unit UFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrame, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TFFuncionario = class(TForm)
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
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBGrid1: TDBGrid;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label15: TLabel;
    DBText1: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Frame11BTFecharClick(Sender: TObject);
    procedure Frame11BTNovoClick(Sender: TObject);
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
  FFuncionario: TFFuncionario;

implementation

{$R *.dfm}

uses UDM, UPesquisaFuncionario, UCidade, UCargo;

procedure TFFuncionario.BitBtn1Click(Sender: TObject);
begin
 FCargo.Showmodal;
end;

procedure TFFuncionario.Frame11BitBtn10Click(Sender: TObject);
begin
   Dm.TBFuncionario.Last;
end;

procedure TFFuncionario.Frame11BitBtn11Click(Sender: TObject);
begin

    FPesquisaFuncionario.Showmodal;

end;

procedure TFFuncionario.Frame11BitBtn7Click(Sender: TObject);
begin
  Dm.TBFuncionario.First;
end;

procedure TFFuncionario.Frame11BitBtn8Click(Sender: TObject);
begin
  Dm.TBFuncionario.Prior;
end;

procedure TFFuncionario.Frame11BitBtn9Click(Sender: TObject);
begin
  Dm.TBFuncionario.Next;
end;

procedure TFFuncionario.Frame11BTCancelarClick(Sender: TObject);
begin
  Frame11.BTCancelarClick(Sender);
  Dm.TBFuncionario.Cancel;
end;

procedure TFFuncionario.Frame11BTEditarClick(Sender: TObject);
begin
  Frame11.BTEditarClick(Sender);
  Dm.TBFuncionario.Edit;
end;

procedure TFFuncionario.Frame11BTExcluirClick(Sender: TObject);
begin
  Frame11.BTExcluirClick(Sender);
   if  Application.MessageBox('Deseja Mesmo Excluir?','',MB_YESNO+ MB_ICONQUESTION) = ID_YES
 then
     begin
         Dm.TBFuncionario.Delete;
     end;

end;

procedure TFFuncionario.Frame11BTFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFFuncionario.Frame11BTNovoClick(Sender: TObject);
begin
  Frame11.BTNovoClick(Sender);
  Dm.TBFuncionario.Insert;
end;

procedure TFFuncionario.Frame11BTSalvarClick(Sender: TObject);
begin
  if DBEdit3.Text = '' then
   begin
   Showmessage('O Nome Do Funcion�rio � Obrigat�rio');
   DBEdit3.SetFocus;
   Abort;
   end
   else
     if DBLookupComboBox1.Text = '' then
   begin
   Showmessage('O Sexo Do Funcion�rio � Obrigat�rio');
   DBLookupComboBox1.SetFocus;
   Abort;
   end
   else
     if DBLookupComboBox1.Text = '' then
   begin
   Showmessage('A Cidade � Obrigat�rio');
   DBLookupComboBox1.SetFocus;
   Abort;
   end
   else
     if DBEdit8.Text = '' then
   begin
   Showmessage('O Endere�o Do Funcion�rio Obrigat�rio');
   DBEdit8.SetFocus;
   Abort;
   end
   else
     if DBLookupComboBox2.Text = '' then
   begin
   Showmessage('O Cargo Do Funcion�rio � Obrigat�rio');
   DBLookupComboBox2.SetFocus;
   Abort;
   end
   else
     if DBEdit12.Text = '' then
   begin
   Showmessage('O Sal�rio � Obrigat�rio');
   DBEdit12.SetFocus;
   Abort;
   end
   else
  Frame11.BTSalvarClick(Sender);
  Dm.TBFuncionario.Post;
end;

end.
