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
            String query = "insert into crime_t() values(?,?,?,?,?,?,?,?,?,?,?,?,?)";

            updateCrime(crime, query);
            set = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }


    public boolean editCrime(Crime crime){
        try {
            String query = "update crime_t set crimeType=?, data=?, time=?, suspectivePersonName=?,address=?,witness=?,crimePhoto1=?,crimePhoto2=?,crimePhoto3=?,crimePhoto4=?,crimeVideo=? where caseNumber=?";
            updateCrime(crime, query);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return true;
    }

    private void updateCrime(Crime crime, String query) throws SQLException {
        PreparedStatement pt = this.con.prepareStatement(query);
        pt.setString(1, crime.getCaseNumber());
        pt.setString(2, crime.getCrimeType());
        pt.setString(3, crime.getDate());
        pt.setString(4, crime.getTime());
        pt.setString(5, crime.getCrimeDetails());
        pt.setString(6, crime.getSuspectivePersonName());
        pt.setString(7, crime.getAddress());
        pt.setString(8, crime.getWitness());
        pt.setBlob(9, crime.getCrimePhoto1());
        pt.setBlob(10, crime.getCrimePhoto2());
        pt.setBlob(11, crime.getCrimePhoto3());
        pt.setBlob(12, crime.getCrimePhoto4());
        pt.setBlob(13, crime.getCrimeVideo());

        pt.executeUpdate();
    }
}
