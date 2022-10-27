/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controllers.Lecturer;

import Models.Attandance;
import Models.Session;
import dal.AttandanceDBContext;
import dal.SessionDBContext;
import java.util.ArrayList;

/**
 *
 * @author MrKhoaz
 */
public class NewClass {
    public static void main(String[] args) {
//        SessionDBContext db =  new SessionDBContext();
//        Session s = new Session();
//        s = db.getSessionById(4);
//        System.out.println(s.getLecturer());
        AttandanceDBContext db =  new AttandanceDBContext();
        ArrayList<Attandance> list  = new ArrayList<>();
        list = db.getAttandancesBySessionId(4);
        System.out.println(list.size());
    }
}
