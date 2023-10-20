package com.hms.dto;


import javax.persistence.*;

import org.springframework.stereotype.Component;

import java.sql.Date;

@Component
@Entity
@Table(name = "RoomBookings")
public class Booking {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "GuestName")
    private String guestName;

    @Column(name = "CheckInDate")
    private Date checkInDate;

    @Column(name = "CheckOutDate")
    private Date checkOutDate;

    @Column(name = "RoomType")
    private String roomType;

    @Column(name = "NumGuests")
    private int numGuests;

	public Booking() {
		super();
	}

	public Booking(int id, String guestName, Date checkInDate, Date checkOutDate, String roomType,
			int numGuests) {
		this.id = id;
		this.guestName = guestName;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.roomType = roomType;
		this.numGuests = numGuests;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGuestName() {
		return guestName;
	}

	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}

	public Date getCheckInDate() {
		return checkInDate;
	}

	public void setCheckInDate(Date checkInDate) {
		this.checkInDate = checkInDate;
	}

	public Date getCheckOutDate() {
		return checkOutDate;
	}

	public void setCheckOutDate(Date checkOutDate) {
		this.checkOutDate = checkOutDate;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public int getNumGuests() {
		return numGuests;
	}

	public void setNumGuests(int numGuests) {
		this.numGuests = numGuests;
	}

	@Override
	public String toString() {
		return "Booking Id=" + id + ", Guest Name=" + guestName + ", Check In Date="
				+ checkInDate + ", Check Out Date=" + checkOutDate + ", Room Type=" + roomType + ", Num of Guests=" + numGuests;
	}
    
    

}


