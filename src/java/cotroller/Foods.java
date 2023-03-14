/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package cotroller;

import dal.FoodDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Food;
import model.FoodCategory;

/**
 *
 * @author PC
 */
@WebServlet(name="Foods", urlPatterns={"/Foods"})
public class Foods extends HttpServlet {
   
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
        FoodDAO foodDAO = new FoodDAO();
        int page = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
        int record = request.getParameter("view") != null ? Integer.parseInt(request.getParameter("view")) : 45;
        int foodId = (request.getParameter("foodCategory") != null) ? 
       (request.getParameter("foodCategory").equals("all") ? 0 : Integer.parseInt(request.getParameter("foodCategory"))) : 0;
        int totalNum = foodDAO.countAll(foodId);
        

        ArrayList<Food> foods = foodDAO.findAll(foodId, page, record);
        ArrayList<FoodCategory> categories = foodDAO.findAllFoodCategory();
        request.setAttribute("totalNum", totalNum);
        request.setAttribute("page", page);
        request.setAttribute("foodCategory", request.getParameter("foodCategory"));
        request.setAttribute("foods", foods);
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("restaurant.jsp").forward(request, response);
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
