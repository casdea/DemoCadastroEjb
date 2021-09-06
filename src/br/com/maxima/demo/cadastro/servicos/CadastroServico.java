package br.com.maxima.demo.cadastro.servicos;

import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.ejb.SessionContext;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import br.com.maxima.demo.cadastro.dto.ClienteEnvDTO;
import br.com.maxima.demo.cadastro.jpa.entity.Cliente;

@Stateless
public class CadastroServico implements br.com.maxima.demo.cadastro.servicos.ICadastroServicoLocal
{
	@PersistenceContext(unitName="demoDatabase")
	private EntityManager em;

	@Resource
	private SessionContext ctx;

	@EJB
	private ICadastroServicoLocal cadastroServicoLocal;

	public Long crudCliente(ClienteEnvDTO clienteEnvDTO) throws Exception
	{
		try
		{
			Cliente cliente = new Cliente(clienteEnvDTO.getNome(), clienteEnvDTO.getEndereco(), clienteEnvDTO.getTelefone(), clienteEnvDTO.getEmail());
			
			em.persist(cliente);

			em.flush();
			System.out.println("Registro de Cliente Gravado !");
			return cliente.getId();
	
		}
		catch (Exception e)
		{
			this.ctx.setRollbackOnly();
			throw new Exception(e.getMessage());
		}
	}



	
}
