package com.example.camoncrime;

import java.io.InputStream;

public class Criminal {
    int cId;
    String name;
    String address;
    String contact;
    InputStream photo;
    String birthDate;
    String gender;
    String aadharId;
    String identityMark;
    String crimeDetails;



    public Criminal() {

    }

    public Criminal(int cId, String name, String address, String contact, InputStream photo, String birthDate, String gender, String aadharId, String identityMark,String crimeDetails ) {
        this.cId = cId;
        this.name = name;
        this.address = address;
        this.contact = contact;
        this.photo = photo;
        this.birthDate = birthDate;
        this.gender = gender;
        this.aadharId = aadharId;
        this.identityMark = identityMark;
        this.crimeDetails = crimeDetails;

    }

    public Criminal(String name, String address, String contact, InputStream photo, String birthDate, String gender, String aadharId, String identityMark,String crimeDetails) {
        this.name = name;
        this.address = address;
        this.contact = contact;
        this.photo = photo;
        this.birthDate = birthDate;
        this.gender = gender;
        this.aadharId = aadharId;
        this.identityMark = identityMark;
        this.crimeDetails = crimeDetails;

    }

    public int getId() {
        return cId;
    }

    public void setId(int cId) {
        this.cId = cId;
    }

    public String getName() {
        return name;
    }

    public void setId(String name) {
        this.name = name;
    }

    public String getAddress() {
        return name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public InputStream getPhoto() {
        return photo;
    }

    public void setPhoto(InputStream photo) {
        this.photo = photo;
    }

    public String getGender() {
        return gender;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAadharId() {
        return aadharId;
    }

    public void setAadharId(String aadharId) {
        this.aadharId = aadharId;
    }

    public String getIdentityMark() {
        return identityMark;
    }

    public void setIdentityMark(String identityMark) {
        this.identityMark = identityMark;
    }
    public String getCrimeDetails() {
        return crimeDetails;
    }

    public void setCrimeDetails(String crimeDetails) {
        this.crimeDetails = crimeDetails;
    }

    @Override
    public String toString() {
        return "Criminal{" +
                "cId=" + cId +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", contact='" + contact + '\'' +
                ", photo=" + photo +
                ", birthDate='" + birthDate + '\'' +
                ", gender='" + gender + '\'' +
                ", aadharId='" + aadharId + '\'' +
                ", identityMark='" + identityMark + '\'' +
                ", crimeDetails='" + crimeDetails + '\'' +
                '}';
    }
}
