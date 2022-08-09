unit UFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrame1 = class(TFrame)
    BTNovo: TBitBtn;
    BTEditar: TBitBtn;
    BTExcluir: TBitBtn;
    BTCancelar: TBitBtn;
    BTSalvar: TBitBtn;
    BTFechar: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    procedure BTNovoClick(Sender: TObject);
    procedure BTEditarClick(Sender: TObject);
    procedure BTExcluirClick(Sender: TObject);
    procedure BTCancelarClick(Sender: TObject);
    procedure BTSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame1.BTCancelarClick(Sender: TObject);
begin
  BTNovo.Enabled:= True;
  BTSalvar.Enabled:= False;
  BTCancelar.Enabled:= False;
  BTEditar.Enabled:= True;
  BTExcluir.Enabled:= True;
end;

procedure TFrame1.BTEditarClick(Sender: TObject);
begin
BTSalvar.Enabled:= True;
BTEditar.Enabled:= False;
BTCancelar.Enabled:= True;
BTNovo.Enabled:= False;

end;

procedure TFrame1.BTExcluirClick(Sender: TObject);
begin
  BTSalvar.Enabled:= False;
  BTCancelar.Enabled:= False;
  BTNovo.Enabled:= True;
  BTEditar.Enabled:= True;
  BTExcluir.Enabled:= True;
end;

procedure TFrame1.BTNovoClick(Sender: TObject);
begin
  BTNovo.Enabled:= False;
  BTSalvar.Enabled:= True;
  BTCancelar.Enabled:= True;
  BTEditar.Enabled:= False;
  BTExcluir.Enabled:= False;
end;

procedure TFrame1.BTSalvarClick(Sender: TObject);
begin
  BTNovo.Enabled:= True;
  BTSalvar.Enabled:= False;
  BTCancelar.Enabled:= False;
  BTEditar.Enabled:= True;
  BTExcluir.Enabled:= True;
end;

end.
