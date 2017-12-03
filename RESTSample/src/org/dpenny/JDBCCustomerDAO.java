package org.dpenny;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
 

public  class JDBCCustomerDAO implements CustomerDAO{
 
    Connection connection = null;   
    
    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            if(connection == null)
                connection = DriverManager.getConnection("jdbc:mysql://cs.smu.ca:3306/mcda551003?user=mcda551003&password=mcda551003password");
 
        } catch (ClassNotFoundException e) {
 
            e.printStackTrace();
             
        } catch (SQLException e) {
             
            e.printStackTrace();
             
        }
        return connection;
    }

    public void closeConnection(){
        try {
              if (connection != null) {
                  connection.close();
              }
            } catch (Exception e) { 
                //do nothing
            }
    } 
    
	@Override
	public Customer addCustomer(Customer customer) {
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement("INSERT INTO Customer (LastName,FirstName,StreetNumber,StreetName,City,Province,Country,PostalCode,PhoneNumber,Email,Password,CreditCardType,CreditCardNumber,CreditCardName,ExpirationDate) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
           // preparedStatement.setInt(1, customer.getId());
            preparedStatement.setString(1,  customer.getLastName());
            preparedStatement.setString(2,  customer.getFirstName());
            preparedStatement.setString(3,  customer.getStreetNumber());
            preparedStatement.setString(4,  customer.getStreetName());
            preparedStatement.setString(5,  customer.getCity());
            preparedStatement.setString(6,  customer.getProvince());
            preparedStatement.setString(7,  customer.getCountry());
            preparedStatement.setString(8,  customer.getPostalCode());
            preparedStatement.setString(9,  customer.getPhoneNumber());
            preparedStatement.setString(10,  customer.getEmail());
            preparedStatement.setString(11,  customer.getPassword());
            preparedStatement.setString(12,  customer.getCreditCardType());
            preparedStatement.setString(13,  customer.getCreditCardNumber());
            preparedStatement.setString(14,  customer.getCreditCardName());
            preparedStatement.setString(15,  customer.getExpirationDate());

            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println("Insertion ok"); 
        return customer;
         
    }
	 @Override   
	    public List<Customer> getAllCustomers() {
	        List<Customer> customers = new LinkedList<Customer>();
	         try {
	                Statement statement = getConnection().createStatement();
	                ResultSet resultSet = statement.executeQuery("SELECT * FROM Customer");
	                 
	                Customer customer = null;
	                while(resultSet.next()){
	                	customer = new Customer();
	                	customer.setEmail(resultSet.getString("email"));
	                	customer.setPassword(resultSet.getString("password"));       
	                
	                

	                	customers.add(customer);
	                }
	                resultSet.close();
	                statement.close();
	                 
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	            System.out.println(customers);
	            return customers;
	    }
	     

	

}