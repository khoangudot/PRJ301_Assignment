/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Lecturer;
import Models.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MrKhoaz
 */
public class LecturerDBContext extends DBContext<Lecturer> {

    @Override
    public void insert(Lecturer model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Lecturer model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Lecturer model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Lecturer get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Lecturer> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Lecturer getLecturerById(String lecturerId) {

        try {
            String sql = "Select lectureID,lectureName from Lecturer where lectureID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, lecturerId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Lecturer lecturer = new Lecturer();
                lecturer.setLecturerId(rs.getString("lectureID"));
                lecturer.setLecturerName(rs.getString("lectureName"));
                return lecturer;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LecturerDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public Lecturer getLecturerByUsername(String username) {
        try {
            String sql = "Select l.username,l.lectureID,l.lectureName from Account a \n"
                    + "INNER JOIn Lecturer l  ON a.username = l.username\n"
                    + "WHERE l.username = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Lecturer lecturer = new Lecturer();
                lecturer.setLecturerId(rs.getString("lectureID"));
                lecturer.setLecturerName(rs.getString("lectureName"));
                return lecturer;
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
