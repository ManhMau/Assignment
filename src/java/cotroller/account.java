/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package cotroller;

import dal.AccountDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.ArrayList;
import model.Account;
import model.Detail;
import model.Food;

/**
 *
 * @author PC
 */
@WebServlet(name="Account", urlPatterns={"/Account"})
public class account extends HttpServlet {
   
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
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("customerLogged");
        AccountDAO accountDAO = new AccountDAO();
        ArrayList<Detail> details = accountDAO.findAllBooking(account, false);
        String action = request.getParameter("action");
        if (action == null) {
            action = "order";
        }
        if (action.equals("order")) {
            for (Detail detail : details) {
                ArrayList<Food> foods = accountDAO.findAllFood(account, detail.getBookingId(), false);
                detail.setFood(foods);
                LocalDate localdate1 = LocalDate.now();
                int date1 = localdate1.compareTo(detail.getInDate());
                int date2 = localdate1.compareTo(detail.getOutDate());
                if (date1 >= 0 && date2 <= 0) {
                    detail.setStatus("Đang sử dụng");
                }
                if (date1 < 0) {
                    detail.setStatus("Đang chờ");
                }
                if (date1 > 0 && date2 > 0) {
                    detail.setStatus("Đã sử dụng");
                }
            }
        }
        if (action.equals("order-food")) {
            if (request.getParameter("bookingId") != null) {
                int bookingId = Integer.parseInt(request.getParameter("bookingId"));
                ArrayList<Food> foods = accountDAO.findAllFood(account, bookingId, false);
                double total = 0;
                total = foods.stream().map((food) -> food.getPrice()).reduce(total, (accumulator, _item) -> accumulator + _item);
                request.setAttribute("bookingId", bookingId);
                request.setAttribute("total", total);
                request.setAttribute("foods", foods);
            }
        }
        request.setAttribute("action", action);
        request.setAttribute("details", details);
        request.getRequestDispatcher("account.jsp").forward(request, response);
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
