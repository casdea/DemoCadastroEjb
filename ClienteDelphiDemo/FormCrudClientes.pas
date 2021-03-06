unit FormCrudClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    EDT_Nome: TEdit;
    Label1: TLabel;
    EDT_Endereco: TEdit;
    Label2: TLabel;
    EDT_Telefone: TEdit;
    Label3: TLabel;
    EDT_Email: TEdit;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses CadastroFacade1;

procedure TForm1.Button1Click(Sender: TObject);
var
  ClienteDTO : clienteEnvDTO;
  IntCodigo : Integer;
begin
  ClienteDTO:=clienteEnvDTO.Create;
  try
    ClienteDTO.nome    :=EDT_Nome.Text;
    ClienteDTO.endereco:=EDT_Endereco.Text;
    ClienteDTO.telefone:=EDT_Telefone.Text;
    ClienteDTO.email   :=EDT_Email.Text;

    IntCodigo:=GetCadastroFacade.registrarCliente(ClienteDTO);

    ShowMessage('Registro Efetuado com sucesso '+IntToStr(IntCodigo));

  finally
    ClienteDTO.Free;
  end;
end;

end.
