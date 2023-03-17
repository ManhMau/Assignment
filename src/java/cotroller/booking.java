/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package cotroller;

import dal.BookingDAO;
import dal.RoomDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import model.Account;
import model.Booking;
import model.Room;

/**
 *
 * @author PC
 */
@WebServlet(name="booking", urlPatterns={"/booking"})
public class booking extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet booking</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet booking at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         int id = (request.getParameter("id") == null) ? 0 : Integer.parseInt(request.getParameter("id"));
        int rid = (request.getParameter("rid") == null) ? 0 : Integer.parseInt(request.getParameter("rid"));
        LocalDate datein = LocalDate.parse(request.getParameter("datein"));
        LocalDate dateout = LocalDate.parse(request.getParameter("dateout"));
        String notice = request.getParameter("notice");
        if (datein.isBefore(LocalDate.now()) || dateout.isBefore(datein)) {
            response.sendRedirect("roomview?id=" + rid + "&action=Booking&success=false");
            return;
        }

          RoomDAO roomDAO = new RoomDAO();
        BookingDAO bookingDAO = new BookingDAO();
        Room room = roomDAO.getFreeRoom(datein, dateout, id);
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("customerLogged");
        if(acc == null){
            response.sendRedirect("login.jsp");
            return;
        }
        if (room == null) {
            response.sendRedirect("roomview?id=" + rid + "&action=Booking&success=false");
        } else {
            bookingDAO.insertBooking(new Booking(0, room, acc, datein, dateout, notice));
            response.sendRedirect("roomview?id=" + rid + "&action=Booking&success=true");
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
