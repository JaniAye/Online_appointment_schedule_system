package com.appointment_schedule.online_appointment_schedule_system.dao;

import com.appointment_schedule.online_appointment_schedule_system.entity.UserEntity;
import com.appointment_schedule.online_appointment_schedule_system.util.HibernateUtil;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;

import javax.persistence.NoResultException;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


public class UserDao {

    /**
     * Save User
     * @param user
     */
    public void saveUser(UserEntity user) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            Serializable save = session.save(user);

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    /**
     * Update User
     * @param user
     */
    public void updateUser(UserEntity user) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.update(user);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    /**
     * Delete User
     * @param id
     */
    public void deleteUser(int id) {

        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();

            // Delete a user object
            UserEntity user = session.get(UserEntity.class, id);
            if (user != null) {
                session.delete(user);
                System.out.println("user is deleted");
            }

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    /**
     * Get User By ID
     * @param id
     * @return
     */
    public UserEntity getUser(int id) {

        Transaction transaction = null;
        UserEntity user = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            user = session.get(UserEntity.class, id);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return user;
    }

    public UserEntity getUserNic(UserEntity user) {

        Transaction transaction = null;
        UserEntity user2 = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();

            String sqlQuery = "SELECT * FROM user WHERE type = 'consultant' AND field = :consultantField ORDER BY RAND() LIMIT 1";
            SQLQuery<UserEntity> query = session.createNativeQuery(sqlQuery, UserEntity.class);

            query.setParameter("consultantField", user.getField());

            // Execute the query
            user2 = query.uniqueResult();


            // commit transaction
            transaction.commit();
        }catch (NoResultException e) {
            // Handle the case where no data is found
            // For example, show an alert or log a message
            System.out.println("No data found for the given criteria.");
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return user2;
    }
    public String getDob(String name) {
        System.out.println("name ::: = " + name);
        Transaction transaction = null;
        UserEntity user2 = null;
     String age="";

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            transaction = session.beginTransaction();

            String sqlQuery = "SELECT  YEAR(CURRENT_DATE()) - YEAR(dob) - (DATE_FORMAT(CURRENT_DATE(), '%m%d') < DATE_FORMAT(dob, '%m%d')) AS age FROM user WHERE type = 'user' AND name = :consultanname ";
            NativeQuery query = session.createNativeQuery(sqlQuery);

            query.setParameter("consultanname", name);

            age = ""+query.uniqueResult();

            // commit transaction
            transaction.commit();
        }catch (NoResultException e) {

            System.out.println("No data found for the given criteria.");
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return age;
    }

    public UserEntity getLogin(UserEntity user){

        Transaction transaction = null;
        UserEntity userRet = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            String hql = "FROM UserEntity WHERE emailOrPhone = :email AND password = :password";
            Query<UserEntity> query = session.createQuery(hql, UserEntity.class);
            query.setParameter("email", user.getEmailOrPhone());
            query.setParameter("password", user.getPassword());

            userRet = query.uniqueResult();
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return userRet;
    }

    /**
     * Get all Users
     * @return
     */
    @SuppressWarnings("unchecked")
    public List<UserEntity> getAllUser() {

        Transaction transaction = null;
        List<UserEntity> listOfUser = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object

            listOfUser = session.createQuery("from User").getResultList();

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfUser;
    }



}