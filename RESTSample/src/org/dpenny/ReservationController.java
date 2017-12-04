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

@Path("/Reservation")
public class ReservationController {

    // URI:
    // /contextPath/servletPath/Customers

 
    @POST
    @Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
    @Path("/Create")
    @Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
    public Reservation addReservation(Reservation reservation) {
    	ReservationDAO dao = new JDBCReservationDAO();
        return dao.addReservation(reservation);
    }
 

    @PUT
    @Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
    @Path("/Update")
    @Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })  
    public Reservation updateReservation(Reservation reservation) {
    	ReservationDAO dao = new JDBCReservationDAO();
        return dao.updateReservation(reservation);
    }

    @DELETE
    @Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
    @Path("/Delete/{id}")
    @Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })  
    public void deleteReservation(@PathParam("id") int id) {
    	ReservationDAO dao = new JDBCReservationDAO();
        dao.deleteReservation(id);
    }
    @GET
    @Produces({ MediaType.APPLICATION_JSON})
    public List<Reservation> getEmployees_JSON() {
    	ReservationDAO dao = new JDBCReservationDAO();
        List<Reservation> listOfReservations = dao.getAllReservations();
        return listOfReservations;
    }
    
    
 
	
	
}
