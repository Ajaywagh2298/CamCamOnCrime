package com.example.camoncrime;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CriminalDatabase {
    Connection con;
    private static String basePath = "D:/CamOnCrime/src/main/webapp/data/criminal/";
    private static String imagesPathSuffix = "/images";
    public CriminalDatabase(Connection con) {
        this.con = con;
    }

    //for register Officer
    public boolean saveCriminal(Criminal criminal) {
        boolean set = false;
        try {
            String query = "insert into criminal_t(name, address, contact, photo, birth_date, gender, adhar_id,identity_mark,crimeDetails) values(?,?,?,?,?,?,?,?,?)";

            updateCriminal(criminal, query);
            set = true;
            FileUtils.copyMediaToFile(criminal.getPhoto(), getImageFileName(criminal.getName(), 1));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return set;
    }


    public boolean editCriminal(Criminal criminal) {
        try {
            String query = "update criminal_t set name=?, address=?, contact=?, photo=?,birth_date=?,gender=?,adhar_id=?,identity_mark=?,crimeDetails=? where adhar_id=?";
            updateCriminal(criminal, query);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return true;
    }

    private void updateCriminal(Criminal criminal, String query) throws SQLException, IOException {
        PreparedStatement pt = this.con.prepareStatement(query);
        pt.setString(1, criminal.getName());
        pt.setString(2, criminal.getAddress());
        pt.setString(3, criminal.getContact());
        pt.setBytes(4, criminal.getPhoto());
        pt.setString(5, criminal.getBirthDate());
        pt.setString(6, criminal.getGender());
        pt.setString(7, criminal.getAadharId());
        pt.setString(8, criminal.getIdentityMark());
        pt.setString(9, criminal.getCrimeDetails());

        pt.executeUpdate();
        FileUtils.copyMediaToFile(criminal.getPhoto(), getImageFileName(criminal.getName(), 1));
    }

    private static String createImagesPath(String caseName) {
        return basePath + caseName + imagesPathSuffix;
    }
    private static File getImageFileName(String caseName, int i) {
        return new File(createImagesPath(caseName) + "/image-" + i +".jpg");
    }

}
