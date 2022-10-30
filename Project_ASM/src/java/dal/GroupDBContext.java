/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Group;
import Models.Student;
import Models.Subject;
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
public class GroupDBContext extends DBContext<Group> {

   public ArrayList<Group> getGroupOfStudent(String studentId) {
        try {
            ArrayList<Group> groups = new ArrayList<>();
            String sql = "select g.groupID,g.groupName,sub.subjectID,sub.subjectName,g.sem,g.[year],\n"
                    + "s.studentID, s.studentName\n"
                    + "from [group] g \n"
                    + "LEFT JOIN Student_Group sg ON g.groupID = sg.groupID\n"
                    + "LEFT JOIN Student s ON s.studentID =  sg.studentID\n"
                    + "LEFT JOIN [Subject] sub ON g.subjectID = sub.subjectID\n"
                    + "\n"
                    + "WHERE s.studentID =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            
            stm.setString(1, studentId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Group group = new Group();
                Student student = new Student();
                Subject subject = new Subject();
                
                student.setStudentId(studentId);
                student.setStudentName(rs.getString("studentName"));
                
                subject.setSubjectId(rs.getString("subjectID"));
                subject.setSubjectName(rs.getString("subjectName"));
                
                
                group.setGroupId(rs.getString("groupID"));
                group.setGroupName(rs.getString("groupName"));
                group.setSubject(subject);
                group.setSem(rs.getString("sem"));
                group.setYear(rs.getInt("year"));
                groups.add(group);
               
            }
             return groups;
        } catch (SQLException ex) {
            Logger.getLogger(GroupDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    
    @Override
    public void insert(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Group get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Group> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
