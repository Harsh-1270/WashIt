package com.entities;

import java.sql.Timestamp;

public class Order {
    private int id;
    private String firstName;
    private String hostel;
    private String roomNo;
    private int totalClothes; 
    private Timestamp orderDate;
	private String status;
	private int shirts;
	private int tshirts;
	private int pants;
	private int trousers;
	private int shorts;
   

    // Constructor
    public Order(int id, String firstName, String hostel, String roomNo, int totalClothes, Timestamp orderDate,String status) {
        this.id = id;
        this.firstName = firstName;
        this.hostel = hostel;
        this.roomNo = roomNo;
        this.totalClothes = totalClothes;
        this.orderDate = orderDate;
        this.status = status;
    }
    
    public Order(int id,int shirts,int tshirts, int pants, int trousers, int shorts) {
    	this.id = id;
    	this.shirts = shirts;
        this.tshirts = tshirts;
        this.pants = pants;
        this.trousers = trousers;
        this.shorts = shorts;
        
    }
    
    

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getHostel() {
		return hostel;
	}

	public void setHostel(String hostel) {
		this.hostel = hostel;
	}

	public String getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}

	public int getTotalClothes() {
		return totalClothes;
	}

	public void setTotalClothes(int totalClothes) {
		this.totalClothes = totalClothes;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Timestamp timestamp) {
		this.orderDate = timestamp;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getShirts() {
		return shirts;
	}

	public void setShirts(int shirts) {
		this.shirts = shirts;
	}

	public int getTshirts() {
		return tshirts;
	}

	public void setTshirts(int tshirts) {
		this.tshirts = tshirts;
	}

	public int getPants() {
		return pants;
	}

	public void setPants(int pants) {
		this.pants = pants;
	}

	public int getTrousers() {
		return trousers;
	}

	public void setTrousers(int trousers) {
		this.trousers = trousers;
	}

	public int getShorts() {
		return shorts;
	}

	public void setShorts(int shorts) {
		this.shorts = shorts;
	}
	
	

	
    
}
