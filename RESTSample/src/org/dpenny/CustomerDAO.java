package org.dpenny;

import java.util.List;

public interface CustomerDAO {

	Customer addCustomer(Customer cust);
	List<Customer> getAllCustomers();

}