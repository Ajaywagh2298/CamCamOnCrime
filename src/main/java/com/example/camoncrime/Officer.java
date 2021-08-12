package com.example.camoncrime;

public class Officer {
    int o_id;
    String officer_id;
    String name;
    String email;
    String username;
    String password;
    String city;
    String district;
    String post_code;

    public Officer() {
    }

    public Officer(int o_id,String officer_id, String name, String email,String username, String password,String city,String district, String post_code) {
       this.o_id = o_id;
        this.officer_id = officer_id;
        this.name = name;
        this.email = email;
        this.username = username;
        this.password = password;
        this.city = city;
        this.district = district;
        this.post_code = post_code;
    }

    public Officer(String officer_id, String name, String email,String username, String password,String city,String district, String post_code) {
        this.officer_id = officer_id;
        this.name = name;
        this.email = email;
        this.username = username;
        this.password = password;
        this.city = city;
        this.district = district;
        this.post_code = post_code;
    }


    public Officer(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public int getId() {
        return o_id;
    }

    public void setId(int o_id) {
        this.o_id = o_id;
    }
    public String getOfficerID() {
        return officer_id;
    }

    public void setOfficerID(String officer_id) {
        this.officer_id = officer_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getPost_code() {
        return post_code;
    }

    public void setPost_code(String post_code) {
        this.post_code = post_code;
    }

    @Override
    public String toString() {
        return "Officer{" +
                "o_id=" + o_id +
                ", officer_id='" + officer_id + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", city='" + city + '\'' +
                ", district='" + district + '\'' +
                ", post_code='" + post_code + '\'' +
                '}';
    }
}
