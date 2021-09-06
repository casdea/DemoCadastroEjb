package br.com.maxima.demo.cadastro.facade;

import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

import br.com.maxima.demo.cadastro.dto.ClienteEnvDTO;
import br.com.maxima.demo.cadastro.servicos.ICadastroServicoLocal;

@Stateless
@WebService(serviceName = "CadastroService", targetNamespace = "http://maxima.com.br")
@SOAPBinding(style = Style.RPC)
public class CadastroFacade implements ICadastroFacadeRemote {
	
	@EJB
	private ICadastroServicoLocal cadastroServicoLocal;

	@WebMethod
	public Long registrarCliente(ClienteEnvDTO clienteEnvDTO) throws Exception {
		return this.cadastroServicoLocal.crudCliente(clienteEnvDTO);
	}

}