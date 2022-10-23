/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Attandance;
import model.Session;
import model.Student;

/**
 *
 * @author MrKhoaz
 */
public class AttandanceDBContext extends DBContext<Attandance> {

    public ArrayList<Attandance> getAttandancesBySessionId(int sessionId) {
        ArrayList<Attandance> attandances = new ArrayList<>();
        try {
            String sql = "select ses.sessionID, std.studentID,std.studentName, \n"
                    + "ISNULL(att.present,0) Present,ISNULL(att.[description],'') [Description] \n"
                    + "from [Session] ses \n"
                    + "INNER JOIN [Group] gr ON ses.groupID = gr.groupID \n"
                    + "INNER JOIN Student_Group sg ON gr.groupID = sg.groupID\n"
                    + "INNER JOIN Student std ON sg.studentID = std.studentID\n"
                    + "LEFT JOIN Attandance att ON ses.sessionID = att.sessionID AND att.studentID = std.studentID\n"
                    + "WHERE ses.sessionID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                Attandance attandance =  new Attandance();
                Student student  =  new Student();
                Session session = new Session();
                attandance.setStudent(student);
                attandance.setSession(session);
                attandance.setPresent(rs.getBoolean("present"));
                attandance.setDescription(rs.getString("description"));
                student.setStudentId(rs.getString("studentID"));
                student.setStudentName(rs.getString("studentName"));
                session.setSessionId(sessionId);
                attandances.add(attandance);
                
            }

        } catch (Exception e) {
        }

        return attandances;
    }

    @Override
    public void insert(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Attandance get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Attandance> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}