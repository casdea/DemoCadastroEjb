// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:8082/DemoCadastroEjb/CadastroService/CadastroFacade?wsdl
//  >Import : http://localhost:8082/DemoCadastroEjb/CadastroService/CadastroFacade?wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (06/09/2021 19:10:13 - - $Rev: 86412 $)
// ************************************************************************ //

unit CadastroFacade1;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  clienteEnvDTO        = class;                 { "http://maxima.com.br"[GblCplx] }
  Exception            = class;                 { "http://maxima.com.br"[Flt][GblElm] }
  Exception2           = class;                 { "http://maxima.com.br"[GblCplx] }



  // ************************************************************************ //
  // XML       : clienteEnvDTO, global, <complexType>
  // Namespace : http://maxima.com.br
  // ************************************************************************ //
  clienteEnvDTO = class(TRemotable)
  private
    Femail: string;
    Femail_Specified: boolean;
    Fendereco: string;
    Fendereco_Specified: boolean;
    Fid: Int64;
    Fid_Specified: boolean;
    Fnome: string;
    Fnome_Specified: boolean;
    Ftelefone: string;
    Ftelefone_Specified: boolean;
    procedure Setemail(Index: Integer; const Astring: string);
    function  email_Specified(Index: Integer): boolean;
    procedure Setendereco(Index: Integer; const Astring: string);
    function  endereco_Specified(Index: Integer): boolean;
    procedure Setid(Index: Integer; const AInt64: Int64);
    function  id_Specified(Index: Integer): boolean;
    procedure Setnome(Index: Integer; const Astring: string);
    function  nome_Specified(Index: Integer): boolean;
    procedure Settelefone(Index: Integer; const Astring: string);
    function  telefone_Specified(Index: Integer): boolean;
  published
    property email:    string  Index (IS_OPTN or IS_UNQL) read Femail write Setemail stored email_Specified;
    property endereco: string  Index (IS_OPTN or IS_UNQL) read Fendereco write Setendereco stored endereco_Specified;
    property id:       Int64   Index (IS_OPTN or IS_UNQL) read Fid write Setid stored id_Specified;
    property nome:     string  Index (IS_OPTN or IS_UNQL) read Fnome write Setnome stored nome_Specified;
    property telefone: string  Index (IS_OPTN or IS_UNQL) read Ftelefone write Settelefone stored telefone_Specified;
  end;



  // ************************************************************************ //
  // XML       : Exception, global, <element>
  // Namespace : http://maxima.com.br
  // Info      : Fault
  // Base Types: Exception
  // ************************************************************************ //
  Exception = class(ERemotableException)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : Exception, global, <complexType>
  // Namespace : http://maxima.com.br
  // ************************************************************************ //
  Exception2 = class(TRemotable)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://maxima.com.br
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : literal
  // binding   : CadastroServiceSoapBinding
  // service   : CadastroService
  // port      : CadastroFacadePort
  // URL       : http://localhost:8082/DemoCadastroEjb/CadastroService/CadastroFacade
  // ************************************************************************ //
  CadastroFacade = interface(IInvokable)
  ['{DA62106B-BCCC-2F0C-D438-362BA3BBAB30}']
    function  registrarCliente(const arg0: clienteEnvDTO): Int64; stdcall;
  end;

function GetCadastroFacade(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): CadastroFacade;


implementation
  uses System.SysUtils;

function GetCadastroFacade(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): CadastroFacade;
const
  defWSDL = 'http://localhost:8082/DemoCadastroEjb/CadastroService/CadastroFacade?wsdl';
  defURL  = 'http://localhost:8082/DemoCadastroEjb/CadastroService/CadastroFacade';
  defSvc  = 'CadastroService';
  defPrt  = 'CadastroFacadePort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as CadastroFacade);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure clienteEnvDTO.Setemail(Index: Integer; const Astring: string);
begin
  Femail := Astring;
  Femail_Specified := True;
end;

function clienteEnvDTO.email_Specified(Index: Integer): boolean;
begin
  Result := Femail_Specified;
end;

procedure clienteEnvDTO.Setendereco(Index: Integer; const Astring: string);
begin
  Fendereco := Astring;
  Fendereco_Specified := True;
end;

function clienteEnvDTO.endereco_Specified(Index: Integer): boolean;
begin
  Result := Fendereco_Specified;
end;

procedure clienteEnvDTO.Setid(Index: Integer; const AInt64: Int64);
begin
  Fid := AInt64;
  Fid_Specified := True;
end;

function clienteEnvDTO.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure clienteEnvDTO.Setnome(Index: Integer; const Astring: string);
begin
  Fnome := Astring;
  Fnome_Specified := True;
end;

function clienteEnvDTO.nome_Specified(Index: Integer): boolean;
begin
  Result := Fnome_Specified;
end;

procedure clienteEnvDTO.Settelefone(Index: Integer; const Astring: string);
begin
  Ftelefone := Astring;
  Ftelefone_Specified := True;
end;

function clienteEnvDTO.telefone_Specified(Index: Integer): boolean;
begin
  Result := Ftelefone_Specified;
end;

procedure Exception.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function Exception.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure Exception2.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function Exception2.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

initialization
  { CadastroFacade }
  InvRegistry.RegisterInterface(TypeInfo(CadastroFacade), 'http://maxima.com.br', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(CadastroFacade), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(CadastroFacade), ioLiteral);
  { CadastroFacade.registrarCliente }
  InvRegistry.RegisterParamInfo(TypeInfo(CadastroFacade), 'registrarCliente', 'arg0', '',
                                '[Namespace="http://maxima.com.br"]');
  RemClassRegistry.RegisterXSClass(clienteEnvDTO, 'http://maxima.com.br', 'clienteEnvDTO');
  RemClassRegistry.RegisterXSClass(Exception, 'http://maxima.com.br', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(Exception2, 'http://maxima.com.br', 'Exception2', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception2), 'message_', '[ExtName="message"]');

end.
