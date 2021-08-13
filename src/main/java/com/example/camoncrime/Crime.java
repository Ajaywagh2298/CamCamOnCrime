package com.example.camoncrime;

public class Crime {
    int crimeID;
    String caseNumber;
    String caseName;
    String crimeType;
    String date;
    String time;
    String crimeDetails;
    String suspectivePersonName;
    String address;
    String witness;
    byte[] crimePhoto1;
    byte[] crimePhoto2;
    byte[] crimePhoto3;
    byte[] crimePhoto4;
    byte[] crimeVideo;

   public Crime(){

    }

    public  Crime(int crimeID, String caseNumber, String caseName, String crimeType, String date, String time, String crimeDetails, String suspectivePersonName, String address, String witness, byte[] crimePhoto1, byte[] crimePhoto2, byte[] crimePhoto3, byte[] crimePhoto4, byte[] crimeVideo){
      this.crimeID = crimeID;
      this.caseNumber = caseNumber;
      this.caseName = caseName;
      this.crimeType = crimeType;
      this.date = date;
      this.time = time;
      this.crimeDetails = crimeDetails;
      this.suspectivePersonName = suspectivePersonName;
      this.address = address;
      this.witness = witness;
      this.crimePhoto1 = crimePhoto1;
      this.crimePhoto2 =  crimePhoto2;
      this.crimePhoto3 = crimePhoto3;
      this.crimePhoto4 = crimePhoto4;
      this.crimeVideo = crimeVideo;
    }

    public  Crime(String caseNumber, String caseName, String crimeType, String date, String time, String crimeDetails, String suspectivePersonName, String address, String witness, byte[] crimePhoto1, byte[] crimePhoto2, byte[] crimePhoto3, byte[] crimePhoto4, byte[] crimeVideo){
        this.caseNumber = caseNumber;
        this.caseName = caseName;
        this.crimeType = crimeType;
        this.date = date;
        this.time = time;
        this.crimeDetails = crimeDetails;
        this.suspectivePersonName = suspectivePersonName;
        this.address = address;
        this.witness = witness;
        this.crimePhoto1 = crimePhoto1;
        this.crimePhoto2 =  crimePhoto2;
        this.crimePhoto3 = crimePhoto3;
        this.crimePhoto4 = crimePhoto4;
        this.crimeVideo = crimeVideo;
    }
    public int getCrimeID() {
        return crimeID;
    }

    public void setCrimeID(int crimeID) {
        this.crimeID = crimeID;
    }

    public String getCaseNumber() {
        return caseNumber;
    }

    public void setCaseNumber(String caseNumber) {
        this.caseNumber = caseNumber;
    }

    public String getCaseName() {
        return caseName;
    }

    public void setCaseName(String caseName) {
        this.caseName = caseName;
    }

    public String getCrimeType() {
        return crimeType;
    }

    public void setCrimeType(String crimeType) {
        this.crimeType = crimeType;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getCrimeDetails() {
        return crimeDetails;
    }

    public void setCrimeDetails(String crimeDetails) {
        this.crimeDetails = crimeDetails;
    }

    public String getSuspectivePersonName() {
        return suspectivePersonName;
    }

    public void setSuspectivePersonName(String suspectivePersonName) {
        this.suspectivePersonName = suspectivePersonName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public byte[] getCrimePhoto1() {
        return crimePhoto1;
    }

    public void setCrimePhoto1(byte[] crimePhoto1) {
        this.crimePhoto1 = crimePhoto1;
    }

    public byte[] getCrimePhoto2() {
        return crimePhoto2;
    }

    public void setCrimePhoto2(byte[] crimePhoto2) {
        this.crimePhoto2 = crimePhoto2;
    }

    public byte[] getCrimePhoto3() {
        return crimePhoto3;
    }

    public void setCrimePhoto3(byte[] crimePhoto3) {
        this.crimePhoto3 = crimePhoto3;
    }

    public byte[] getCrimePhoto4() {
        return crimePhoto4;
    }

    public void setCrimePhoto4(byte[] crimePhoto4) {
        this.crimePhoto4 = crimePhoto4;
    }

    public byte[] getCrimeVideo() {
        return crimeVideo;
    }

    public void setCrimeVideo(byte[] crimeVideo) {
        this.crimeVideo = crimeVideo;
    }

    public String getWitness() {
        return witness;
    }

    public void setWitness(String witness) {
        this.witness = witness;
    }

    @Override
    public String toString() {
        return "Crime{" +
                "crimeID=" + crimeID +
                ", caseNumber='" + caseNumber + '\'' +
                ", caseName='" + caseName + '\'' +
                ", crimeType='" + crimeType + '\'' +
                ", date='" + date + '\'' +
                ", time='" + time + '\'' +
                ", crimeDetails='" + crimeDetails + '\'' +
                ", suspectivePersonName='" + suspectivePersonName + '\'' +
                ", address='" + address + '\'' +
                ", witness='" + witness + '\'' +
                ", crimePhoto1=" + crimePhoto1 +
                ", crimePhoto2=" + crimePhoto2 +
                ", crimePhoto3=" + crimePhoto3 +
                ", crimePhoto4=" + crimePhoto4 +
                ", crimeVideo=" + crimeVideo +
                '}';
    }
}
