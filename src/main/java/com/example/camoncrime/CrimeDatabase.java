package com.example.camoncrime;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CrimeDatabase {
    Connection con;

    public CrimeDatabase(Connection con) {
        this.con = con;
    }

    //for register Officer
    public boolean saveCrime(Crime crime) {
        boolean set = false;
        try {
            String query = "insert into crime_t(caseNumber, caseName, crimeType, date, time, crimeDetails, suspectivePersonName, address, witness, crimePhoto1, crimePhoto2, crimePhoto3, crimePhoto4, crimeVideo) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, crime.getCaseNumber());
            pt.setString(2, crime.getCaseName());
            pt.setString(3, crime.getCrimeType());
            pt.setString(4, crime.getDate());
            pt.setString(5, crime.getTime());
            pt.setString(6, crime.getCrimeDetails());
            pt.setString(7, crime.getSuspectivePersonName());
            pt.setString(8, crime.getAddress());
            pt.setString(9, crime.getWitness());
            pt.setBlob(10, crime.getCrimePhoto1());
            pt.setBlob(11, crime.getCrimePhoto2());
            pt.setBlob(12, crime.getCrimePhoto3());
            pt.setBlob(13, crime.getCrimePhoto4());
            pt.setBlob(14, crime.getCrimeVideo());

            pt.executeUpdate();
            set = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }


    public boolean editCrime(Crime crime){
        try {
            String query = "update crime_t set crimeType=?, date=?, time=?, suspectivePersonName=?,address=?,witness=?,crimePhoto1=?,crimePhoto2=?,crimePhoto3=?,crimePhoto4=?,crimeVideo=? where caseNumber=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, crime.getCrimeType());
            pt.setString(2, crime.getDate());
            pt.setString(3, crime.getTime());
            pt.setString(4, crime.getSuspectivePersonName());
            pt.setString(5, crime.getAddress());
            pt.setString(6, crime.getWitness());
            pt.setBlob(7, crime.getCrimePhoto1());
            pt.setBlob(8, crime.getCrimePhoto2());
            pt.setBlob(9, crime.getCrimePhoto3());
            pt.setBlob(10, crime.getCrimePhoto4());
            pt.setBlob(11, crime.getCrimeVideo());
            pt.setString(12, crime.getCaseNumber());

            pt.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return true;
    }

}
