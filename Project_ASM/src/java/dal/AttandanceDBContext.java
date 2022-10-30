/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import Models.Attandance;
import Models.Group;
import Models.Lecturer;
import Models.Room;
import Models.Session;
import Models.Student;
import Models.TimeSlot;
import com.oracle.wls.shaded.org.apache.xml.utils.AttList;
import java.sql.Timestamp;
import java.util.Date;

/**
 *
 * @author MrKhoaz
 */
public class AttandanceDBContext extends DBContext<Attandance> {

    public ArrayList<Attandance> getAttandancesBySessionId(int sessionId) {
        ArrayList<Attandance> attandances = new ArrayList<>();
        try {
            String sql = "select ses.sessionID, std.studentID,std.studentName,std.image, \n"
                    + "ISNULL(att.present,0) present,ISNULL(att.[description],'') [Description],att.RecordTime \n"
                    + "from [Session] ses \n"
                    + "INNER JOIN [Group] gr ON ses.groupID = gr.groupID \n"
                    + "INNER JOIN Student_Group sg ON gr.groupID = sg.groupID\n"
                    + "INNER JOIN Student std ON sg.studentID = std.studentID\n"
                    + "LEFT JOIN Attandance att ON ses.sessionID = att.sessionID AND att.studentID = std.studentID\n"
                    + "WHERE ses.sessionID = ?";

            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sessionId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Attandance attandance = new Attandance();
                Student student = new Student();
                Session session = new Session();
                attandance.setStudent(student);
                attandance.setSession(session);
                attandance.setPresent(rs.getBoolean("present"));
                attandance.setDescription(rs.getString("description"));
                Timestamp timestamp = rs.getTimestamp("RecordTime");
                if (timestamp != null) {
                    java.util.Date recordTime = new Date(timestamp.getTime());
                    attandance.setRecordTime(recordTime);
                }

                student.setStudentId(rs.getString("studentID"));
                student.setStudentName(rs.getString("studentName"));
                student.setImage(rs.getString("image"));
                session.setSessionId(sessionId);
                attandances.add(attandance);

            }

        } catch (SQLException e) {
            Logger.getLogger(AttandanceDBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return attandances;
    }

    public ArrayList<Attandance> getStudentAttend(String studentId, String subjectId) {
        ArrayList<Attandance> studentAttandances = new ArrayList<>();
        try {

            String sql = "Select att.studentID, s.studentName, g.subjectID,\n"
                    + "ses.sessionID,ses.[index], ses.[date] , ses.timeSlotID, slot.[description],ses.attanded,\n"
                    + "r.roomName,r.roomID,ses.lectureID,g.groupName,g.groupID,att.present,att.[description] AS [comment], att.RecordTime\n"
                    + "from  Attandance att\n"
                    + "INNER join [Session] ses ON att.sessionID =ses.sessionID\n"
                    + "INNER JOIN [Group] g ON g.groupID = ses.groupID\n"
                    + "Inner JOIN Student s ON att.studentID =  s.studentID\n"
                    + "INNER JOIN TimeSlot slot ON ses.timeSlotID = slot.timeSlotID\n"
                    + "INNER JOIN Room r ON ses.roomID = r.roomID\n"
                    + "WHERE att.studentID =? "
                    + "AND  g.subjectID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, studentId);
            stm.setString(2, subjectId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Attandance attandance = new Attandance();
                Session session = new Session();
                Student student = new Student();
                Group group = new Group();
                TimeSlot timeSlot = new TimeSlot();
                Room room = new Room();
                Lecturer lecturer = new Lecturer();

                room.setRoomId(rs.getString("roomId"));
                room.setRoomName(rs.getString("roomName"));

                student.setStudentId(rs.getString("studentID"));
                student.setStudentName(rs.getString("studentName"));

                timeSlot.setId(rs.getInt("timeSlotID"));
                timeSlot.setDescription(rs.getString("description"));

                group.setGroupId(rs.getString("groupID"));
                group.setGroupName(rs.getString("groupName"));

                lecturer.setLecturerId(rs.getString("lectureID"));

                session.setAttanded(rs.getBoolean("attanded"));
                session.setDate(rs.getDate("date"));
                session.setIndex(rs.getInt("index"));
                session.setRoom(room);
                session.setSessionId(rs.getInt("sessionID"));
                session.setTimeSlot(timeSlot);
                session.setGroup(group);
                session.setLecturer(lecturer);
                attandance.setDescription(rs.getString("comment"));
                attandance.setPresent(rs.getBoolean("present"));
                Timestamp timestamp = rs.getTimestamp("RecordTime");
                if (timestamp != null) {
                    java.util.Date recordTime = new Date(timestamp.getTime());
                    attandance.setRecordTime(recordTime);
                }
                attandance.setSession(session);
                studentAttandances.add(attandance);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AttandanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return studentAttandances;
    }

    public int getNumOfAbsent(String studentId, String subjectId) {
       
        try {
             int numOfAbsent = 0;
            String sql = "Select COUNT(att.present) as NumOfAbsent\n"
                    + "from  Attandance att\n"
                    + "INNER join [Session] ses ON att.sessionID =ses.sessionID\n"
                    + "INNER JOIN [Group] g ON g.groupID = ses.groupID\n"
                    + "Inner JOIN Student s ON att.studentID =  s.studentID\n"
                    + "INNER JOIN TimeSlot slot ON ses.timeSlotID = slot.timeSlotID\n"
                    + "INNER JOIN Room r ON ses.roomID = r.roomID\n"
                    + "WHERE att.studentID =? AND  g.subjectID =? AND att.present = 0";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, studentId);
            stm.setString(2, subjectId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
              numOfAbsent = rs.getInt("NumOfAbsent");
            }
            return numOfAbsent;
        } catch (SQLException ex) {
            Logger.getLogger(AttandanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
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
