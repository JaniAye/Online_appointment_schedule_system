package com.appointment_schedule.online_appointment_schedule_system.entity;



import javax.persistence.*;
import java.sql.Date;
import java.util.Objects;

@Entity
@Table(name = "user", schema = "the_jobs", catalog = "")
public class UserEntity {

    @Id
    @Column(name = "nic")
    private String nic;
    @Basic
    @Column(name = "name")
    private String name;
    @Basic
    @Column(name = "dob")
    private Date dob;
    @Basic
    @Column(name = "type")
    private String type;
    @Basic
    @Column(name = "emailOrPhone")
    private String emailOrPhone;

    public UserEntity() {
    }

    @Basic
    @Column(name = "password")
    private String password;

    public UserEntity(String nic, String name, Date dob, String type, String emailOrPhone, String password, String field) {
        this.nic = nic;
        this.name = name;
        this.dob = dob;
        this.type = type;
        this.emailOrPhone = emailOrPhone;
        this.password = password;
        this.field = field;
    }

    @Basic
    @Column(name = "field")
    private String field;

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getEmailOrPhone() {
        return emailOrPhone;
    }

    public void setEmailOrPhone(String emailOrPhone) {
        this.emailOrPhone = emailOrPhone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserEntity that = (UserEntity) o;
        return Objects.equals(nic, that.nic) && Objects.equals(name, that.name) && Objects.equals(dob, that.dob) && Objects.equals(type, that.type) && Objects.equals(emailOrPhone, that.emailOrPhone) && Objects.equals(password, that.password) && Objects.equals(field, that.field);
    }

    @Override
    public int hashCode() {
        return Objects.hash(nic, name, dob, type, emailOrPhone, password, field);
    }
}
