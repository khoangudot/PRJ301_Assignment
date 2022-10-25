/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Models.Attandance;
import Models.Group;
import Models.Lecturer;
import Models.Room;
import Models.Session;
import Models.Subject;
import Models.TimeSlot;
import com.sun.istack.internal.logging.Logger;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.logging.Level;

/**
 *
 * @author MrKhoaz
 */
public class SessionDBContext extends DBContext<Session> {

    @Override
    public void insert(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Session get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Session> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Session getSessionById(int sessionId) {
        try {
            String sql = "Select ses.sessionID,ses.[date], ses.[index], ses.attanded, \n"
                    + "g.groupID,g.groupName,s.subjectID,s.subjectName,\n"
                    + "l.lectureID,l.lectureName,r.roomID,r.roomName,\n"
                    + "ts.timeSlotID,ts.[description]\n"
                    + "from [Session] ses \n"
                    + "INNER JOIN [Group] g ON ses.groupID = g.groupID\n"
                    + "INNER JOIN Room r ON ses.roomID = r.roomID\n"
                    + "INNER JOIN Lecturer l ON ses.lectureID = l .lectureID\n"
                    + "INNER JOIN TimeSlot ts ON ses.timeSlotID = ts.timeSlotID\n"
                    + "INNER JOIN [Subject] s ON g.subjectID = s.subjectID\n"
                    + "where ses.sessionID =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sessionId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Session session = new Session();
                session.setSessionId(rs.getInt("sessionID"));
                session.setDate(rs.getDate("date"));
                session.setIndex(rs.getInt("index"));
                session.setAttanded(rs.getBoolean("attanded"));
                Group group = new Group();
                session.setGroup(group);
                group.setGroupId(rs.getString("groupID"));
                group.setGroupName(rs.getString("groupName"));
                Lecturer lecturer = new Lecturer();
                session.setLecturer(lecturer);
                lecturer.setLecturerId(rs.getString("lectureID"));
                lecturer.setLecturerName(rs.getString("lectureName"));
                Room room = new Room();
                session.setRoom(room);
                room.setRoomId(rs.getString("roomID"));
                room.setRoomName(rs.getString("roomName"));
                TimeSlot timeSlot = new TimeSlot();
                session.setTimeSlot(timeSlot);
                timeSlot.setId(rs.getInt("timeSlotID"));
                timeSlot.setDescription(rs.getString("description"));
                Subject subject = new Subject();
                group.setSubject(subject);
                subject.setSubjectId(rs.getString("subjectID"));
                subject.setSubjectName(rs.getString("subjectName"));
                return session;
            }
        } catch (SQLException e) {
            java.util.logging.Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public void UpdateAttandance(Session model) {
        try {
            connection.setAutoCommit(false);
            String sqlUpdate = "UPDATE [dbo].[Session]\n"
                    + "   SET [attanded] = 1\n"
                    + " WHERE sessionID = ?";
            PreparedStatement stmUpdate = connection.prepareStatement(sqlUpdate);
            stmUpdate.setInt(1, model.getSessionId());
            stmUpdate.executeUpdate();
            //remove old attandance
            String sqlDelete = "DELETE FROM [dbo].[Attandance]\n"
                    + "      WHERE sessionID = ?";
            PreparedStatement stmDelete = connection.prepareStatement(sqlDelete);
            stmDelete.setInt(1, model.getSessionId());
            stmDelete.executeUpdate();
            //Add new attandance
            for (Attandance attandance : model.getAttandances()) {
                String sqlInsert = "INSERT INTO [dbo].[Attandance]\n"
                        + "           ([sessionID]\n"
                        + "           ,[studentID]\n"
                        + "           ,[present]\n"
                        + "           ,[description]\n"
                        + "           ,[RecordTime])\n"
                        + "     VALUES\n"
                        + "           (?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,GETDATE())";
                PreparedStatement stmInsert =  connection.prepareStatement(sqlInsert);
                stmInsert.setInt(1,model.getSessionId());
                stmInsert.setString(2, attandance.getStudent().getStudentId());
                stmInsert.setBoolean(3, attandance.isPresent());
                stmInsert.setString(4, attandance.getDescription());
                stmInsert.executeUpdate();
            }
            connection.commit();
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException ex) {
                java.util.logging.Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
            java.util.logging.Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        finally{
            try {
                connection.setAutoCommit(true);
            } catch (SQLException ex) {
                java.util.logging.Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
               
    }
}
