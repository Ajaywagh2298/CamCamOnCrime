package com.example.camoncrime;
import java.sql.*;
public class OfficerDatabase {
    Connection con ;

    public OfficerDatabase(Connection con) {
        this.con = con;
    }

    //for register Officer
    public boolean saveOfficer(Officer officer){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into officer_t(officer_id, name, email, username, password, city, district, post_code) values(?,?,?,?,?,?,?,?)";

            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, officer.getOfficerID());
            pt.setString(2,officer.getName());
            pt.setString(3, officer.getEmail());
            pt.setString(4, officer.getUsername());
            pt.setString(5,officer.getPassword());
            pt.setString(6, officer.getCity());
            pt.setString(7, officer.getDistrict());
            pt.setString(8,officer.getPost_code());
            pt.executeUpdate();
            set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
    public Officer loginOfficer(String email, String pass){
        Officer offr = null;
        try{
            String query ="select * from officer_t where email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, pass);

            ResultSet rs = pst.executeQuery();

            if(rs.next()){
                offr = new Officer();
                offr.setId(rs.getInt("o_id"));
                offr.setOfficerID(rs.getString("officer_id"));
                offr.setName(rs.getString("name"));
                offr.setEmail(rs.getString("email"));
                offr.setUsername(rs.getString("username"));
                offr.setPassword(rs.getString("password"));
                offr.setCity(rs.getString("city"));
                offr.setDistrict(rs.getString("district"));
                offr.setPost_code(rs.getString("post_code"));


            }

        }catch(Exception e){
            e.printStackTrace();
        }
        return offr;
    }

    public boolean editOfficer(Officer officer){

        try{
            String query = "update officer_t set officer_id=?, name=?, email=?, username=?,password=?,city=?,district=?,post_code=? where o_id=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, officer.getOfficerID());
            pt.setString(2, officer.getName());
            pt.setString(3, officer.getEmail());
            pt.setString(4, officer.getUsername());
            pt.setString(5, officer.getPassword());
            pt.setString(6, officer.getCity());
            pt.setString(7, officer.getDistrict());
            pt.setString(8, officer.getPost_code());
            pt.setInt(9, officer.getId());

            pt.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();;
        }
        return true;
    }
}
