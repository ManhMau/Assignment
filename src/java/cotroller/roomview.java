/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package cotroller;

import dal.ReviewDAO;
import dal.RoomTypeDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Review;
import model.RoomType;

/**
 *
 * @author PC
 */
@WebServlet(name="roomview", urlPatterns={"/roomview"})
public class roomview extends HttpServlet {
   
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
        RoomTypeDAO roomTypeDAO = new RoomTypeDAO();
        ReviewDAO reviewDAO = new ReviewDAO();
        int id;
        String action, success;
        try {
            id = Integer.parseInt(request.getParameter("id"));
        } catch (NumberFormatException e) {
            response.sendRedirect("room");
            return;
        }
        action = (request.getParameter("action") == null) ? "" : request.getParameter("action");
        success = (request.getParameter("success") == null) ? "" : request.getParameter("success");
        RoomType roomType = roomTypeDAO.getRoomTypeByID(id);
        if (roomType == null) {
            response.sendRedirect("room");
            return;
        }
        ArrayList<Integer> ratings = new ArrayList<>();
        for (int i = 5; i >= 1; i--) {
            ratings.add(reviewDAO.getRatingByType(i, id));
        }
        ArrayList<Review> reviewList = reviewDAO.getReviewByRoomType(id);
        request.setAttribute("action", action);
        request.setAttribute("success", success);
        request.setAttribute("roomType", roomType);
        request.setAttribute("reviewList", reviewList);
        request.setAttribute("ratings", ratings);
        request.setAttribute("id", id);
        request.getRequestDispatcher("roomview.jsp").forward(request, response);
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
        processRequest(request, response);
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
