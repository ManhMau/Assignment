/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package cotroller;

import dal.BookingDAO;
import dal.FoodDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import model.Account;
import model.Food;
import model.ListFood;
import utils.CartList;

/**
 *
 * @author PC
 */
@WebServlet(name="addToCart", urlPatterns={"/addToCart"})
public class addToCart extends HttpServlet {
   
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
        if (session.getAttribute("customerLogged") != null) {
            BookingDAO dao = new BookingDAO();
            Account account = (Account) session.getAttribute("customerLogged");
            int bookingSizeInDate = dao.getBookingId(account).size();
            if (bookingSizeInDate == 0) {
                response.getWriter().write("dateout");
            } else {
                boolean isCart = session.getAttribute("carts") != null;
                FoodDAO foodDAO = new FoodDAO();
                String quantity = request.getParameter("quantity");
                String foodId = request.getParameter("foodId");
                String action = request.getParameter("action");
                String directTo = request.getParameter("directTo");
                CartList carts = new CartList();
                Map<Integer, ListFood> cartList = new HashMap<>();
                ListFood list = new ListFood();
                if (foodId != null && action != null) {
                    int fid = Integer.parseInt(foodId);
                    if (isCart) {
                        carts = (CartList) session.getAttribute("carts");
                        cartList = carts.getCarts();
                        if (cartList.containsKey(fid)) {
                            ListFood listFood = cartList.get(fid);
                            if (action.equals("increase")) {
                                if (listFood.getQuantity() < listFood.getFood().getQuantity()) {
                                    listFood.increase();
                                }
                            } else if (action.equals("decrease")) {
                                if (listFood.getQuantity() > 1) {
                                    listFood.decrease();
                                }
                            } else if (action.equals("setQuantity") && quantity != null) {
                                int qt = Integer.parseInt(quantity);
                                if (qt > 0) {
                                    listFood.setQuantity(qt);
                                }
                            } else if (action.contains("remove")) {
                                cartList.remove(fid);
                            } else {
                                listFood.increase();
                                response.getWriter().write("success");
                            }
                        } else {
                            Food food = foodDAO.findById(fid);
                            list.setFood(food);
                            list.increase();
                            cartList.put(fid, list);
                            carts.setCarts(cartList);
                            response.getWriter().write("success");
                        }
                    } else {
                        Food food = foodDAO.findById(fid);
                        list.setFood(food);
                        list.increase();
                        cartList.put(fid, list);
                        carts.setCarts(cartList);
                        response.getWriter().write("success");
                    }
                    session.setAttribute("carts", carts);
                }
                if (action != null && action.equals("buynow")) {
                    carts = (CartList) session.getAttribute("carts");
                    int bookingId = Integer.parseInt(request.getParameter("bookingId"));
                    if (foodDAO.insertFoodOrder(carts, bookingId)) {
                        session.removeAttribute("carts");
                        response.sendRedirect("Cart?buy=true");
                        return;
                    } else {
                        response.sendRedirect("Cart?buy=false");
                        return;
                    }
                }
                if (directTo != null) {
                    response.sendRedirect(directTo);
                }
            }
        } else {
            response.sendRedirect("Login");
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
