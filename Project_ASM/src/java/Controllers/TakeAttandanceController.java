/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controllers;

import Models.Attandance;
import Models.Session;
import dal.AttandanceDBContext;
import dal.SessionDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author MrKhoaz
 */
public class TakeAttandanceController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int sessionId =  Integer.parseInt(request.getParameter("sessionId"));
        AttandanceDBContext attandanceDB = new AttandanceDBContext();
        ArrayList<Attandance> attandances =  attandanceDB.getAttandancesBySessionId(sessionId);
        request.setAttribute("attandances", attandances);
        
        SessionDBContext sessionDB =  new SessionDBContext();
        Session session =  sessionDB.getSessionById(sessionId);
        request.setAttribute("session", session);
        request.getRequestDispatcher("../Views/Lecturer/TakeAttandance.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
