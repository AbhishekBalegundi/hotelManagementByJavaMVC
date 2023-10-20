package com.hms.dao;
import com.hms.util.*;
import com.hms.dto.Booking;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

@Component
@Repository
public class BookingDAO {

private EntityManager manager= HibernateUtil.getFactory().createEntityManager();
	
	public String bookRoom(Booking b)
	{
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(b);
		transaction.commit();
		return" Room reserved for "+ b.toString();
	}

    public String updateBooking(Booking b) {
    	EntityTransaction transaction = manager.getTransaction();
    	int id = b.getId();
		Booking bookingById = manager.find(Booking.class,id );
		if(bookingById!=null) {
			transaction.begin();
			manager.merge(b);
			transaction.commit();
			return" Data updated as "+ b.toString();
		}
		
		TypedQuery<Booking> query = manager.createQuery(
			    "SELECT b FROM Booking b WHERE b.guestName = :guestName", Booking.class);
			query.setParameter("guestName", b.getGuestName());
			List<Booking> bookings = query.getResultList();
			while(!bookings.isEmpty())
			{
				EntityTransaction t = manager.getTransaction();
		        transaction.begin();
		        for (Booking booking : bookings) 
		        {
		        	Booking b2 = new Booking();
		        	b2.setId(booking.getId());
		        	b2.setGuestName(b.getGuestName());
		        	b2.setCheckInDate(b.getCheckInDate());
		        	b2.setCheckOutDate(b.getCheckOutDate());
		        	b2.setRoomType(b.getRoomType());
		        	b2.setNumGuests(b.getNumGuests());
		           manager.merge(b2);
		           t.commit();
		           return " Data updated as "+ b2.toString();
		        }
			}
			return "No data found";
			
    }

    public String deleteBooking(int id) 
    {
    	Booking b = manager.find(Booking.class, id);
		
		EntityTransaction transaction = manager.getTransaction(); 
		
		if(b!=null && b.getId()!=0)
		{
			transaction.begin();
			manager.remove(b);
			transaction.commit();
			
			return "Booking Cancelled";
		}
		return "No data found to delete";
    }

    public List<Booking> getAllBookings() {
    	Query query = manager.createQuery("FROM Booking b");
		
		List list = query.getResultList();
		
		return list;
    }

}


