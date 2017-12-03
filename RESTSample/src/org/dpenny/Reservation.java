package org.dpenny;

public class Reservation {
	
	private int id;
	private String  checkInDate;
	private String checkOutDate;
	private int numberOfRoom;
	private int numberOfGuest;
	private int cid;

	public Reservation() {}
	
	public Reservation( int id, String checkInDate, String checkOutDate, int numberOfRoom,int numberOfGuest, int cid) {
		this.id = id;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.numberOfRoom = numberOfRoom;
		this.numberOfGuest = numberOfGuest;
		this.cid = cid;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}
	
	public String getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(String checkOutDate) {
		this.checkOutDate = checkOutDate;
	}
	public int getNumberOfRoom() {
		return numberOfRoom;
	}
	public void setNumberOfRoom(int numberOfGuest) {
		this.numberOfRoom = numberOfGuest;
	}

	public void setNumberOfGuest(int numberOfGuest) {
		this.numberOfGuest = numberOfGuest;
	}
	public int getNumberOfGuest() {
		return numberOfGuest;
	}
	
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getCid() {
		return cid;
	}
}
