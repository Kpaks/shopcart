package br.dashboard.model;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.TableGenerator;

import org.hibernate.annotations.GenericGenerator;

import lombok.Data;

@TableGenerator(name="InvTab",
table="DASHBOARD_SEQUENCE",
pkColumnName = "key",
valueColumnName = "id",
pkColumnValue="key",
allocationSize=20,
initialValue=2)

@Data
@Entity
@Table(name="DASHBOARD_PRODUCT")
public class Product {

	@Id
	@GenericGenerator(name="gen",strategy="increment")
	@GeneratedValue(generator="gen")
	@Column(name = "ID", unique = true, nullable = false, precision = 15, scale = 0)
	private Long id;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="PRICE")
	private BigDecimal price;
	
	@Column(name="DISCOUNT_PRICE")
	private Double discountPrice;
	
	@Column(name="LOGIN")
	private String login;
	
	@Column(name="UPDATE_DATE")
	private Date update;
}
