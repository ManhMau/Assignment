/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package cotroller;

import dal.RoomDAO;
import dal.RoomTypeDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Set;
import model.RoomType;

/**
 *
 * @author PC
 */
@WebServlet(name="Search", urlPatterns={"/Search"})
public class Search extends HttpServlet {
   
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
        RoomDAO roomDAO = new RoomDAO();
        ArrayList<RoomType> roomTypes = roomTypeDAO.getAllRoomType();
        Collections.sort(roomTypes, new Comparator<RoomType>() {
            @Override
            public int compare(RoomType t, RoomType t1) {
                return (t.getPeoplePerRoom() - t1.getPeoplePerRoom());
            }
        });
        LocalDate datein = null, dateOut = null;
        int peoplePerRoom = 0, type = 0;
        Set<Integer> ppn = new HashSet<>();
        roomTypes.forEach((r) -> {
            ppn.add(r.getPeoplePerRoom());
        });
        int page = 1;
        try {
            page = Integer.parseInt(request.getParameter("page"));
        } catch (NumberFormatException e) {
        }
        try {
            datein = LocalDate.parse(request.getParameter("indate"));
        } catch (Exception e) {
        }
        try {
            dateOut = LocalDate.parse(request.getParameter("outdate"));
        } catch (Exception e) {
        }
        try {
            peoplePerRoom = Integer.parseInt(request.getParameter("peopleperroom"));
        } catch (NumberFormatException e) {
        }
        try {
            type = Integer.parseInt(request.getParameter("type"));
        } catch (NumberFormatException e) {
        }
        ArrayList<RoomType> roomList = roomTypeDAO.getRoomByFilter(datein, dateOut, peoplePerRoom);
        HttpSession session = request.getSession();
        session.setAttribute("datein", datein);
        request.setAttribute("dateOut", dateOut);
        request.setAttribute("peoplePerRoom", peoplePerRoom);
        request.setAttribute("type", type);
        request.setAttribute("ppn", ppn);
        request.setAttribute("roomList", roomList);
        request.getRequestDispatcher("search.jsp").forward(request, response);    } 

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
