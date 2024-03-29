/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package cotroller;

import dal.ReviewDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;
import model.Review;
import model.RoomType;

/**
 *
 * @author PC
 */
@WebServlet(name="review", urlPatterns={"/review"})
public class review extends HttpServlet {
   
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
        
         int id = (request.getParameter("id") == null) ? 0 : Integer.parseInt(request.getParameter("id"));
        int rating = (request.getParameter("rating") == null) ? 0 : Integer.parseInt(request.getParameter("rating"));
        String content = request.getParameter("content");
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("customerLogged");

        ReviewDAO reviewDAO = new ReviewDAO();
        boolean allow = reviewDAO.allowReview(acc.getAccountId(), id);
        if (allow) {
            RoomType rt = new RoomType();
            rt.setId(id);
            Review r = new Review(0, acc, rating, content, rt);
            boolean success = reviewDAO.insertRating(r);
            if (success) {
                response.sendRedirect("roomview?id=" + id + "&action=addrv&success=true");
            } else {
                response.sendRedirect("roomview?id=" + id + "&action=addrv&success=false");
            }
        } else {
            response.sendRedirect("roomview?id=" + id + "&action=addrv&success=false");
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
