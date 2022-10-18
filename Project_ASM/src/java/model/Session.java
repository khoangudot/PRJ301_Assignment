/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author MrKhoaz
 */
public class Session {
    private int sessionId;
    private Group group;
    private Room room;
    private Date date;
    private TimeSlot timeSlot;
    private int index;
    private Lecturer lecturer;
    private boolean  attanded;
    ArrayList<Attandance> attandances =  new ArrayList<>();

    public int getSessionId() {
        return sessionId;
    }

    public void setSessionId(int sessionId) {
        this.sessionId = sessionId;
    }

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public TimeSlot getTimeSlot() {
        return timeSlot;
    }

    public void setTimeSlot(TimeSlot timeSlot) {
        this.timeSlot = timeSlot;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public Lecturer getLecturer() {
        return lecturer;
    }

    public void setLecturer(Lecturer lecturer) {
        this.lecturer = lecturer;
    }

    public boolean isAttanded() {
        return attanded;
    }

    public void setAttanded(boolean attanded) {
        this.attanded = attanded;
    }

    public ArrayList<Attandance> getAttandances() {
        return attandances;
    }

    public void setAttandances(ArrayList<Attandance> attandances) {
        this.attandances = attandances;
    }
    
}
