package com.appointment_schedule.online_appointment_schedule_system.entity;



import javax.persistence.*;
import java.sql.Date;
import java.util.Objects;

@Entity
@Table(name = "appointment", schema = "the_jobs", catalog = "")
public class AppointmentEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "appid")
    private long appid;
    @Basic
    @Column(name = "user_name")
    private String user_name ;

    @Basic
    @Column(name = "category")
    private String category ;
    @Basic
    @Column(name = "schedule_date")
    private Date schedule_date;
    @Basic
    @Column(name = "time")
    private String time ;
    @Basic
    @Column(name = "consultant_name")
    private String consultant_name;

    @Basic
    @Column(name = "status")
    private String status;

    public AppointmentEntity() {
    }

    public AppointmentEntity(String user_name, String category, Date schedule_date, String time, String consultant_name, String status) {
        this.user_name = user_name;
        this.category = category;
        this.schedule_date = schedule_date;
        this.time = time;
        this.consultant_name = consultant_name;
        this.status = status;
    }

    public AppointmentEntity(long appid, String user_name, String category, Date schedule_date, String time, String consultant_name, String status) {
        this.appid = appid;
        this.user_name = user_name;
        this.category = category;
        this.schedule_date = schedule_date;
        this.time = time;
        this.consultant_name = consultant_name;
        this.status = status;
    }

    public long getAppid() {
        return appid;
    }

    public void setAppid(long appid) {
        this.appid = appid;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Date getSchedule_date() {
        return schedule_date;
    }

    public void setSchedule_date(Date schedule_date) {
        this.schedule_date = schedule_date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getConsultant_name() {
        return consultant_name;
    }

    public void setConsultant_name(String consultant_name) {
        this.consultant_name = consultant_name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
