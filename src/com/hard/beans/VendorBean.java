package com.hard.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "vendor_master")
public class VendorBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "pk_vid")
	private int v_id;

	@Column(name = "FIRST_NAME")
	private String firstName;

	@Column(name = "LAST_NAME")
	private String lastName;

	@Column(name = "CONTACT_NO")
	private String ContactNo;

	@Column(name = "CONTACT_PERSON_NAME")
	private String contactPersonName;

	@Column(name = "CONTACT_PERSON_NO")
	private String contactPersonNo;

	@Column(name = "CONTACT_PERSON_EMAILID")
	private String contactPersonEmailId;

	@Column(name = "PAN_NO")
	private String panNo;

	@Column(name = "IS_ACTIVE_STATUS")
	private String isActive;

	@Column(name = "CITY")
	private String city;

	@Column(name = "STATE")
	private String state;

	@Column(name = "ZIP_CODE")
	private String zipCode;

	@Column(name = "ADDRESS")
	private String address;

	@Column(name = "EMAIL")
	private String email;

	public VendorBean() {
		// TODO Auto-generated constructor stub
	}

	public VendorBean(String firstName, String lastName, String contactNo,
			String contactPersonName, String contactPersonNo,
			String contactPersonEmailId, String panNo, String isActive,
			String city, String state, String zipCode, String address,
			String email) {
		this.firstName = firstName;
		this.lastName = lastName;
		ContactNo = contactNo;
		this.contactPersonName = contactPersonName;
		this.contactPersonNo = contactPersonNo;
		this.contactPersonEmailId = contactPersonEmailId;
		this.panNo = panNo;
		this.isActive = isActive;
		this.city = city;
		this.state = state;
		this.zipCode = zipCode;
		this.address = address;
		this.email = email;
	}

	@Override
	public String toString() {
		return "VendorBean [v_id=" + v_id + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", ContactNo=" + ContactNo
				+ ", contactPersonName=" + contactPersonName
				+ ", contactPersonNo=" + contactPersonNo
				+ ", contactPersonEmailId=" + contactPersonEmailId + ", panNo="
				+ panNo + ", isActive=" + isActive + ", city=" + city
				+ ", state=" + state + ", zipCode=" + zipCode + ", address="
				+ address + ", email=" + email + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((ContactNo == null) ? 0 : ContactNo.hashCode());
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((city == null) ? 0 : city.hashCode());
		result = prime
				* result
				+ ((contactPersonEmailId == null) ? 0 : contactPersonEmailId
						.hashCode());
		result = prime
				* result
				+ ((contactPersonName == null) ? 0 : contactPersonName
						.hashCode());
		result = prime * result
				+ ((contactPersonNo == null) ? 0 : contactPersonNo.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result
				+ ((firstName == null) ? 0 : firstName.hashCode());
		result = prime * result
				+ ((isActive == null) ? 0 : isActive.hashCode());
		result = prime * result
				+ ((lastName == null) ? 0 : lastName.hashCode());
		result = prime * result + ((panNo == null) ? 0 : panNo.hashCode());
		result = prime * result + ((state == null) ? 0 : state.hashCode());
		result = prime * result + v_id;
		result = prime * result + ((zipCode == null) ? 0 : zipCode.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		VendorBean other = (VendorBean) obj;
		if (ContactNo == null) {
			if (other.ContactNo != null)
				return false;
		} else if (!ContactNo.equals(other.ContactNo))
			return false;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (city == null) {
			if (other.city != null)
				return false;
		} else if (!city.equals(other.city))
			return false;
		if (contactPersonEmailId == null) {
			if (other.contactPersonEmailId != null)
				return false;
		} else if (!contactPersonEmailId.equals(other.contactPersonEmailId))
			return false;
		if (contactPersonName == null) {
			if (other.contactPersonName != null)
				return false;
		} else if (!contactPersonName.equals(other.contactPersonName))
			return false;
		if (contactPersonNo == null) {
			if (other.contactPersonNo != null)
				return false;
		} else if (!contactPersonNo.equals(other.contactPersonNo))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (firstName == null) {
			if (other.firstName != null)
				return false;
		} else if (!firstName.equals(other.firstName))
			return false;
		if (isActive == null) {
			if (other.isActive != null)
				return false;
		} else if (!isActive.equals(other.isActive))
			return false;
		if (lastName == null) {
			if (other.lastName != null)
				return false;
		} else if (!lastName.equals(other.lastName))
			return false;
		if (panNo == null) {
			if (other.panNo != null)
				return false;
		} else if (!panNo.equals(other.panNo))
			return false;
		if (state == null) {
			if (other.state != null)
				return false;
		} else if (!state.equals(other.state))
			return false;
		if (v_id != other.v_id)
			return false;
		if (zipCode == null) {
			if (other.zipCode != null)
				return false;
		} else if (!zipCode.equals(other.zipCode))
			return false;
		return true;
	}

	public int getV_id() {
		return v_id;
	}

	public void setV_id(int v_id) {
		this.v_id = v_id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getContactNo() {
		return ContactNo;
	}

	public void setContactNo(String contactNo) {
		ContactNo = contactNo;
	}

	public String getContactPersonName() {
		return contactPersonName;
	}

	public void setContactPersonName(String contactPersonName) {
		this.contactPersonName = contactPersonName;
	}

	public String getContactPersonNo() {
		return contactPersonNo;
	}

	public void setContactPersonNo(String contactPersonNo) {
		this.contactPersonNo = contactPersonNo;
	}

	public String getContactPersonEmailId() {
		return contactPersonEmailId;
	}

	public void setContactPersonEmailId(String contactPersonEmailId) {
		this.contactPersonEmailId = contactPersonEmailId;
	}

	public String getPanNo() {
		return panNo;
	}

	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
