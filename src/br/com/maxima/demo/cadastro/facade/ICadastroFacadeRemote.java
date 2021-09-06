package br.com.maxima.demo.cadastro.facade;

import javax.ejb.Remote;

import br.com.maxima.demo.cadastro.dto.ClienteEnvDTO;

@Remote
public interface ICadastroFacadeRemote {
	public Long registrarCliente(ClienteEnvDTO clienteEnvDTO) throws Exception;

}