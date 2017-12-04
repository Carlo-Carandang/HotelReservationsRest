package org.dpenny;

import java.util.List;

public interface ReservationDAO {
		
	Reservation addReservation(Reservation reservation);
	Reservation updateReservation(Reservation reservation);
	List<Reservation> getAllReservations();
	void deleteReservation(int id);
}
