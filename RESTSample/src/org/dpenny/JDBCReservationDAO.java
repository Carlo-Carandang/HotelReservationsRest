package org.dpenny;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class JDBCReservationDAO implements ReservationDAO{
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
    public Reservation addReservation(Reservation reservation) {
        try {
            PreparedStatement preparedStatement = getConnection().prepareStatement("INSERT INTO Reservation (CheckInDate, CheckOutDate, NumberOfGuest, NumberOfRoom, Cid) VALUES (?,?,?,?,?)");
            preparedStatement.setString(1,  reservation.getCheckInDate());
            preparedStatement.setString(2,  reservation.getCheckOutDate());
            preparedStatement.setInt(3,  reservation.getNumberOfGuest());
            preparedStatement.setInt(4,  reservation.getNumberOfRoom());
            preparedStatement.setInt(5,  reservation.getCid());
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println("Insertion ok"); 
        return reservation;
       
    }
    @Override   
    public List<Reservation> getAllReservations() {
        List<Reservation> reservations = new LinkedList<Reservation>();
         try {
                Statement statement = getConnection().createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM Reservation");
                 
                Reservation reservation = null;
                while(resultSet.next()){
                	reservation = new Reservation();
                	reservation. setId(Integer.parseInt(resultSet.getString("id")));
                	reservation.setCheckInDate(resultSet.getString("checkInDate"));       
                	reservation.setCheckOutDate(resultSet.getString("checkOutDate"));    
                	reservation.setNumberOfRoom(Integer.parseInt(resultSet.getString("numberOfRoom")));    
                	reservation.setNumberOfGuest(Integer.parseInt(resultSet.getString("numberOfGuest")));   
                 	reservation.setCid(Integer.parseInt(resultSet.getString("cid")));   
                

                	reservations.add(reservation);
                }
                resultSet.close();
                statement.close();
                 
            } catch (SQLException e) {
                e.printStackTrace();
            }
            System.out.println(reservations);
            return reservations;
    }
     
	/*@Override
	public Reservation updateReservation(Reservation reservation) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteReservation(int id) {
		// TODO Auto-generated method stub
		
	}*/


  
}
