/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cotroller;

import dal.FoodDAO;
import java.io.IOException;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Food;
import model.FoodCategory;

/**
 *
 * @author Benjamin
 */
@WebServlet(name = "Food", urlPatterns = {"/FoodManagament"})
public class FoodManagement extends HttpServlet {

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
        FoodDAO foodDAO = new FoodDAO();
        int page = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
        int record = request.getParameter("view") != null ? Integer.parseInt(request.getParameter("view")) : 24;
        int foodId = (request.getParameter("foodCategory") != null)
                ? (request.getParameter("foodCategory").equals("all") ? 0 : Integer.parseInt(request.getParameter("foodCategory"))) : 0;
        int totalNum = foodDAO.countAll(foodId);
        int totalPage = totalNum / record;
        totalPage += (totalNum % record != 0) ? 1 : 0;
        String link = "FoodManagament?";
        if (request.getQueryString() != null) {
            if (!request.getQueryString().split("page")[0].isEmpty()) {
                link = "FoodManagament?" + request.getQueryString().split("&page")[0] + "&";
            }
        }

        ArrayList<model.Food> foods = foodDAO.findAll(foodId, page, record);
        ArrayList<FoodCategory> categories = foodDAO.findAllFoodCategory();
        request.setAttribute("totalNum", totalNum);
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("link", link);
        request.setAttribute("page", page);
        request.setAttribute("view", record);
        request.setAttribute("foodCategory", request.getParameter("foodCategory"));
        request.setAttribute("foods", foods);
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("foodcrud.jsp").forward(request, response);
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
        request.setCharacterEncoding("UTF-8");
        String foodPreviewImage = request.getParameter("foodPreviewImage");
        String foodName = request.getParameter("foodName");
        String foodQuantity = request.getParameter("foodQuantity");
        String foodPrice = request.getParameter("foodPrice");
        String foodCategoryId = request.getParameter("foodCategoryId");
        String foodId = request.getParameter("foodId");
        String action = request.getParameter("action");
        Food f = new Food();
        FoodDAO d = new FoodDAO();
        if (action != null && foodName.length() > 0) {
            int quantity = Integer.parseInt(foodQuantity);
            double price = Double.parseDouble(foodPrice);
            f.setFoodCategory(new FoodCategory(Integer.parseInt(foodCategoryId), ""));
            f.setFoodImage(foodPreviewImage);
            f.setFoodName(foodName);
            f.setQuantity(quantity);
            f.setPrice(price);
            if (action.equals("update")) {
                f.setFoodId(Integer.parseInt(foodId));
                if (quantity >= 0 && price >= 0 && d.updateFood(f)) {
                    request.setAttribute("alert", "Cập nhật sản phẩm thành công");
                } else {
                    request.setAttribute("alert", "Cập nhật sản phẩm thất bại");
                }
            }
            if (action.equals("add")) {
                if (quantity >= 0 && price >= 0 && d.insertFood(f)) {
                    request.setAttribute("alert", "Thêm sản phẩm thành công");
                } else {
                    request.setAttribute("alert", "Thêm sản phẩm thất bại");
                }
            }
        }
        processRequest(request, response);
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