/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers.Login;

import Models.Account;
import Models.Lecturer;
import Models.Role;
import Models.Student;
import dal.AccountDBContext;
import dal.LecturerDBContext;
import dal.StudentDBContext;
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
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("Views/login/Default.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        AccountDBContext accDB = new AccountDBContext();
        StudentDBContext stuDB = new StudentDBContext();
        LecturerDBContext lecDB = new LecturerDBContext();
        Account account = accDB.getAccount(username, password);
        if (account != null) {
            request.getSession().setAttribute("account", account);
            
            Student student = new Student();
            Lecturer lecturer = new Lecturer();
            
            for (Role role : account.getRoles()) {
                if (role.getRoleName().equals("lecturer")) {
                    lecturer = lecDB.getLecturerByAccount(account);
                    request.setAttribute("lecturer", lecturer);
                } if(role.getRoleName().equals("student")){
                    student = stuDB.getStudentByAcount(account);
                    request.setAttribute("student", student);
                }
            }
            request.getRequestDispatcher("Views/Home/Home.jsp").forward(request, response);
        } else {
            response.getWriter().println("Login fails");
        }

    }
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
