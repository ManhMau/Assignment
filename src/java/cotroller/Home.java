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
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Set;
import model.Review;
import model.RoomType;

/**
 *
 * @author PC
 */
@WebServlet(name="Home", urlPatterns={"/Home"})
public class Home extends HttpServlet {
   
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
        ArrayList<RoomType> roomTypes = roomTypeDAO.getAllRoomType();
        ReviewDAO reviewDAO = new ReviewDAO();
        Collections.sort(roomTypes, new Comparator<RoomType>() {
            @Override
            public int compare(RoomType t, RoomType t1) {
                return (t.getPeoplePerRoom() - t1.getPeoplePerRoom());
            }
        });
        Set<Integer> ppn = new HashSet<>();
        roomTypes.forEach((r) -> {
            ppn.add(r.getPeoplePerRoom());
        });
        ArrayList<Review> reviewList = reviewDAO.getFiveStarReview();
        request.setAttribute("roomTypes", roomTypes);
        request.setAttribute("reviewList", reviewList);
        request.setAttribute("ppn", ppn);
        request.getRequestDispatcher("home.jsp").forward(request, response);

        
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
