package com.hms.config;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hms.dao.BookingDAO;
import com.hms.dto.Booking;

@RestController
public class ApplicationController 
{
	@Autowired
	private BookingDAO b;
	
	@PostMapping(value="/bookRoom",consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public ModelAndView bookRoom(@ModelAttribute Booking booking) {
	    ModelAndView modelAndView = new ModelAndView();
	    try {
	        String response = b.bookRoom(booking);
	        modelAndView.addObject("response", response);
	    } catch (Exception e) {
	        e.printStackTrace();
	        modelAndView.addObject("response", "Error booking room.");
	    }
	    modelAndView.setViewName("bookRoomResponse.jsp");
	    return modelAndView;
	}
	
	@PostMapping(value="/editBookingDetails", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public ModelAndView editBooking(@ModelAttribute Booking updatedBooking) {
	    ModelAndView modelAndView = new ModelAndView();
	    try {
	        String response = b.updateBooking(updatedBooking);
	        modelAndView.addObject("response", response);
	    } catch (Exception e) {
	        e.printStackTrace();
	        modelAndView.addObject("response", "Error updating booking details.");
	    }
	    modelAndView.setViewName("editBookingResponse.jsp");
	    return modelAndView;
	}

	@PostMapping("/cancelBooking")
	public ModelAndView cancelBooking(@RequestParam int id) {
	    ModelAndView modelAndView = new ModelAndView();
	    try {
	        String response = b.deleteBooking(id);
	        modelAndView.addObject("response", response);
	    } catch (Exception e) {
	        e.printStackTrace();
	        modelAndView.addObject("response", "Error canceling booking.....! (check input once again)");
	    }
	    modelAndView.setViewName("cancelBookingResponse.jsp");
	    return modelAndView;
	}

	@GetMapping("/showBookedRooms")
	public ModelAndView showBookedRooms() {
	    ModelAndView modelAndView = new ModelAndView();
	    try {
	        List<Booking> bookings = b.getAllBookings();
	        modelAndView.addObject("bookings", bookings);
	    } catch (Exception e) {
	        e.printStackTrace();
	        modelAndView.addObject("bookings", Collections.emptyList());
	    }
	    modelAndView.setViewName("displayBookings.jsp"); 
	    
	    return modelAndView;
	}

}
