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
import Models.Student;
import Models.Subject;
import Models.TimeSlot;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import java.util.logging.Level;
import java.util.logging.Logger;

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
                PreparedStatement stmInsert = connection.prepareStatement(sqlInsert);
                stmInsert.setInt(1, model.getSessionId());
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
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException ex) {
                java.util.logging.Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public ArrayList<Session> filterSessionForLecturerTimeTable(String lecturerId, Date from, Date to) {
        ArrayList<Session> sessions = new ArrayList<>();
        String sql = "select ses.sessionID,ses.[date],ses.[index],ses.attanded, \n"
                + "l.lectureID,l.lectureName,l.username,g.groupID,g.groupName,\n"
                + "sub.subjectID,sub.subjectName,\n"
                + "r.roomName,g.groupName,ts.timeSlotID,ts.[description]\n"
                + "from [Session] ses\n"
                + "INNER JOIN Lecturer l ON ses.lectureID = l.lectureID\n"
                + "INNER JOIN Room r ON ses.roomID = r.roomID\n"
                + "INNER JOIN [Group] g ON g.groupID = ses.groupID\n"
                + "INNER JOIN [Subject] sub ON sub.subjectID = g.subjectID\n"
                + "INNER JOIN TimeSlot ts ON ts.timeSlotID = ses.timeSlotID\n"
                + "where l.lectureID = ?\n"
                + "AND ses.[date] >= ?\n"
                + "AND ses.[date] <= ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, lecturerId);
            stm.setDate(2, (java.sql.Date) from);
            stm.setDate(3, (java.sql.Date) to);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session session = new Session();
                Lecturer lecturer = new Lecturer();
                Room room = new Room();
                Group group = new Group();
                Subject subject = new Subject();
                TimeSlot timeSlot = new TimeSlot();

                session.setSessionId(rs.getInt("sessionID"));
                session.setDate(rs.getDate("date"));
                session.setIndex(rs.getInt("index"));
                session.setAttanded(rs.getBoolean("attanded"));

                lecturer.setLecturerId(rs.getString("lectureID"));
                lecturer.setLecturerName(rs.getString("lectureName"));

                room.setRoomName(rs.getString("roomName"));

                group.setGroupId(rs.getString("groupID"));
                group.setGroupName(rs.getString("groupName"));

                subject.setSubjectId(rs.getString("subjectID"));
                subject.setSubjectName(rs.getString("subjectName"));

                timeSlot.setId(rs.getInt("timeSlotID"));
                timeSlot.setDescription(rs.getString("description"));

                group.setSubject(subject);
                session.setGroup(group);
                session.setLecturer(lecturer);
                session.setRoom(room);
                session.setTimeSlot(timeSlot);

                sessions.add(session);

            }
            return sessions;
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public ArrayList<Session> filterSessionForStudentTimeTable(String studentId, Date from, Date to) {
        ArrayList<Session> sessions = new ArrayList<>();
        try {
            String sql = "select ses.sessionID,ses.[date],ses.[index],ses.attanded,\n"
                    + "                l.lectureID,l.lectureName,l.username,g.groupID,g.groupName,\n"
                    + "                sub.subjectID,sub.subjectName,\n"
                    + "                r.roomName,g.groupName,ts.timeSlotID,ts.[description],\n"
                    + "				s.studentID, s.studentName\n"
                    + "                from [Session] ses\n"
                    + "                INNER JOIN Lecturer l ON ses.lectureID = l.lectureID\n"
                    + "                INNER JOIN Room r ON ses.roomID = r.roomID\n"
                    + "                INNER JOIN [Group] g ON g.groupID = ses.groupID\n"
                    + "                INNER JOIN [Subject] sub ON sub.subjectID = g.subjectID\n"
                    + "                INNER JOIN TimeSlot ts ON ts.timeSlotID = ses.timeSlotID\n"
                    + "				INNER JOIN Student_Group sg ON  g.groupID = sg.groupID\n"
                    + "				INNER JOIN Student s ON s.studentID = sg.studentID\n"
                    + "                where s.studentID = ?\n"
                    + "                AND ses.[date] >= ?\n"
                    + "                AND ses.[date] <= ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, studentId);
            stm.setDate(2, (java.sql.Date) from);
            stm.setDate(3, (java.sql.Date) to);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session session = new Session();
                Lecturer lecturer = new Lecturer();
                Room room = new Room();
                Group group = new Group();
                Subject subject = new Subject();
                TimeSlot timeSlot = new TimeSlot();
                Student student = new Student();

                session.setAttanded(rs.getBoolean("attanded"));
                session.setIndex(rs.getInt("index"));
                session.setSessionId(rs.getInt("sessionID"));
                session.setDate(rs.getDate("date"));

                lecturer.setLecturerId(rs.getString("lectureID"));
                lecturer.setLecturerName(rs.getString("lectureName"));

                room.setRoomName(rs.getString("roomName"));

                group.setGroupId(rs.getString("groupID"));
                group.setGroupName(rs.getString("groupName"));

                subject.setSubjectId(rs.getString("subjectID"));
                subject.setSubjectName(rs.getString("subjectName"));

                timeSlot.setId(rs.getInt("timeSlotID"));
                timeSlot.setDescription(rs.getString("description"));

                student.setStudentId(rs.getString("studentID"));
                student.setStudentName(rs.getString("studentName"));

                group.setSubject(subject);
                session.setRoom(room);
                session.setGroup(group);
                session.setLecturer(lecturer);
                session.setTimeSlot(timeSlot);

                sessions.add(session);
            }
            return sessions;
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public int getNumberOfSlot(String subjectId) {
        try {
            int numOfSlot = 0;
            String sql = "select MAX(ses.[index]) numOfSlot from [session] ses\n"
                    + "INNER JOIN [Group] g ON ses.groupID = g.groupId\n"
                    + "where g.subjectId = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, subjectId);
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                numOfSlot = rs.getInt("numOfSlot");
            }
            return numOfSlot;
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
   
 
}
