package br.dashboard.service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.dashboard.model.Product;
import br.dashboard.repository.DashboardRepository;

@Service
public class DashboardService {

	@Autowired
	DashboardRepository dashboardRepository;
	
	public List<Product> getAll(){
		return dashboardRepository.getAll();
	}
	
/*
- Caso a compra total for maior que 400 reais, deve ser aplicado alguns dos descontos:

     - Se maior que 500 reais, desconto de 5% no valor total da compra.
     - Se maior que 600 reais, desconto de 10% no valor total da compra.
     - Se maior que 700 reais, desconto de 15% no valor total da compra.
     - Caso seja entre 200 e 400 reais, não aplicar nenhum desconto.
     - Após os cálculos, exibir na tela de Conclusão de Compra o valor final da compra e o desconto obtido.
	*/
	public void insertProduct(Product product){
		
		product.setLogin("User1");
		product.setUpdate(new Date());
		product.setDiscountPrice(calculateDiscount(product.getPrice()));
		
		dashboardRepository.insertProduct(product);
	}
	
	public double calculateDiscount(BigDecimal price){
		
		if (price.doubleValue() > 700) {
			return price.doubleValue()*0.75;
		} else {
			if (price.doubleValue() < 700 && price.doubleValue() > 600) {
				return price.doubleValue()*0.90;
			}else if (price.doubleValue() < 600 && price.doubleValue() > 500 ) return price.doubleValue()*0.95;
		}
		
		return price.doubleValue();
	}

	public void deleteProduct(Long id) {
		dashboardRepository.deleteProduct(id);
	}
	
}
