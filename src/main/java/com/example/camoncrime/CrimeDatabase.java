package com.example.camoncrime;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class CrimeDatabase {
    Connection con;
    private static String basePath = "D:/CamOnCrime/src/main/webapp/data/crime/";
    private static String imagesPathSuffix = "/images";
    private static String videosPathSuffix = "/videos";

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
            pt.setBytes(10, crime.getCrimePhoto1());
            pt.setBytes(11, crime.getCrimePhoto2());
            pt.setBytes(12, crime.getCrimePhoto3());
            pt.setBytes(13, crime.getCrimePhoto4());
            pt.setBytes(14, crime.getCrimeVideo());

            
            pt.executeUpdate();

            FileUtils.copyMediaToFile(crime.getCrimePhoto1(), getImageFileName(crime.getCaseNumber(), 1));
            FileUtils.copyMediaToFile(crime.getCrimePhoto2(), getImageFileName(crime.getCaseNumber(), 2));
            FileUtils.copyMediaToFile(crime.getCrimePhoto3(), getImageFileName(crime.getCaseNumber(), 3));
            FileUtils.copyMediaToFile(crime.getCrimePhoto4(), getImageFileName(crime.getCaseNumber(), 4));
            FileUtils.copyMediaToFile(crime.getCrimeVideo(), getVideoFileName(crime.getCaseNumber(), 1));

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
            pt.setBytes(7, crime.getCrimePhoto1());
            pt.setBytes(8, crime.getCrimePhoto2());
            pt.setBytes(9, crime.getCrimePhoto3());
            pt.setBytes(10, crime.getCrimePhoto4());
            pt.setBytes(11, crime.getCrimeVideo());
            pt.setString(12, crime.getCaseNumber());

            pt.executeUpdate();

            FileUtils.copyMediaToFile(crime.getCrimePhoto1(), getImageFileName(crime.getCaseNumber(), 1));
            FileUtils.copyMediaToFile(crime.getCrimePhoto2(), getImageFileName(crime.getCaseNumber(), 2));
            FileUtils.copyMediaToFile(crime.getCrimePhoto3(), getImageFileName(crime.getCaseNumber(), 3));
            FileUtils.copyMediaToFile(crime.getCrimePhoto4(), getImageFileName(crime.getCaseNumber(), 4));
            FileUtils.copyMediaToFile(crime.getCrimeVideo(), getVideoFileName(crime.getCaseNumber(), 1));

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return true;
    }

    private static String createImagesPath(String caseNumber) {
        return basePath + caseNumber + imagesPathSuffix;
    }

    private static String createVideosPath(String caseNumber) {
        return basePath + caseNumber + videosPathSuffix;
    }

    private static File getImageFileName(String caseNumber, int i) {
        return new File(createImagesPath(caseNumber) + "/image-" + i +".jpg");
    }

    private static File getVideoFileName(String caseNumber, int i) {
        return new File(createVideosPath(caseNumber) + "/video-" + i +".mp4");
    }


}
