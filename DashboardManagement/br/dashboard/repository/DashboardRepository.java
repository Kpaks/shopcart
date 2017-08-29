package br.dashboard.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.dashboard.model.Product;

@Repository
public class DashboardRepository {

	@PersistenceContext(unitName="DashboardDevelopment")
	private EntityManager em;
	
	@SuppressWarnings("unchecked")
	public List<Product> getAll(){
		
		String sql = "Select * from dashboard_product";
		
		List<Product> producties = em.createNativeQuery(sql , Product.class).getResultList();
		
		return producties;
	}
	
	@Transactional(transactionManager="transactionManagerDevelopment")
	public void insertProduct(Product product){
		em.persist(product);
	}

	@Transactional(transactionManager="transactionManagerDevelopment")
	public void deleteProduct(Long id) {
		
		Product productToBeRemoved = em.getReference(Product.class, id);
		
		em.remove(productToBeRemoved);
		
	}
}
