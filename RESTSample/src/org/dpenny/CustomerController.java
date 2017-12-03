package org.dpenny;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/Customers")
public class CustomerController {
 
    // URI:
    // /contextPath/servletPath/Customers
    @POST
    @Path("/create")
    @Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
    @Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
    public Customer addCustomer(Customer customer) {
    CustomerDAO dao = new JDBCCustomerDAO();
        return dao.addCustomer(customer);
    }
    
    
    // URI:
    // /contextPath/servletPath/Customers
    @GET
    @Path("/login")
    @Produces({ MediaType.APPLICATION_JSON})
    public List<Customer> getCustomers_JSON() {
    	  CustomerDAO dao = new JDBCCustomerDAO();
        List<Customer> listOfCustomers = dao.getAllCustomers();
        return listOfCustomers;
    }
 
	
	
}
