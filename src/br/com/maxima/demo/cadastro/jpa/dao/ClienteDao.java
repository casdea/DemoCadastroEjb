package br.com.maxima.demo.cadastro.jpa.dao;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.maxima.demo.cadastro.jpa.entity.Cliente;

public class ClienteDao {
	private EntityManager em;

	public ClienteDao(EntityManager em) {
		super();
		this.em = em;
	}
	
	public void cadastrar(Cliente cliente) {
		this.em.persist(cliente);
	}
	
	public Cliente buscarPorId(Long id)
	{
		return em.find(Cliente.class, id);
	}
	
	public List<Cliente> buscarTodos(Long id)
	{
		return em.createNamedQuery("SELECT P FROM PRODUTO p", Cliente.class).getResultList();
	}

}
