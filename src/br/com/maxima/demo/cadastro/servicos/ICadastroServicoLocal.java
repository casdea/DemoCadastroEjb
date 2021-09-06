package br.com.maxima.demo.cadastro.servicos;

import javax.ejb.Local;

import br.com.maxima.demo.cadastro.dto.ClienteEnvDTO;

@Local
public interface ICadastroServicoLocal
{
	public Long crudCliente(ClienteEnvDTO clienteEnvDTO) throws Exception;
}

