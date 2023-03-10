/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package cotroller;

import dal.AccountDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author PC
 */
@WebServlet(name="Login", urlPatterns={"/Login"})
public class Login extends HttpServlet {
   
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
        String action = request.getParameter("action");
        request.setAttribute("action", action);
        request.getRequestDispatcher("login.jsp").forward(request, response);
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
         String email = request.getParameter("email");
        String password = request.getParameter("password");
        String login = request.getParameter("login");
        String register = request.getParameter("register");
        AccountDAO accountDAO = new AccountDAO();
        if (email != null && password != null) {
            Account account = new Account();
            account.setName(email);
            account.setPassword(password);
            if (login != null) {
                Account a = accountDAO.getAccount(account);
                if (a != null) {
                    HttpSession session = request.getSession();
                    session.setAttribute("customerLogged", a);
                    String remember = request.getParameter("remember");
                    if (remember != null && remember.equals("on")) {
                        Cookie id = new Cookie("id", String.valueOf(a.getAccountId()));
                        id.setMaxAge(604800);
                        Cookie username = new Cookie("username", a.getName());
                        username.setMaxAge(604800);
                        response.addCookie(id);
                        response.addCookie(username);
                    }
                    response.sendRedirect("Home");
                    return;
                } else {
                    request.setAttribute("username", account.getName());
                   request.setAttribute("alert", "<label style='color:red'> T??i kho???n kh??ng t???n t???i ho???c sai m???t kh???u</label>. <a href='Login?action=register'>????ng k?? ngay</a>");
                }
            }
            if (register != null) {
                String re_password = request.getParameter("re_password");
                if (re_password.equals(password)) {
                    account.setRole(1);
                    Account acc = accountDAO.getAccountByName(account);
                    if (acc != null) {
                        request.setAttribute("alert", "T??i kho???n ???? t???n t???i, vui l??ng nh???p m???t kh???u ????? ????ng nh???p");
                    } else {
                        if (accountDAO.accountRegister(account) != 0) {
                            request.setAttribute("alert", "????ng k?? th??nh c??ng. ????ng nh???p ngay");
                        } else {
                            request.setAttribute("alert", "C?? l???i x???y ra");
                        }
                    }
                } else {
                    request.setAttribute("username", email);
                    request.setAttribute("password", password);
                    request.setAttribute("alert", "<label style='color:red'>M???t kh???u nh???p l???i kh??ng kh???p v???i m???t kh???u. Vui l??ng nh???p l???i!</label>");
                }
            }
        
        processRequest(request, response);
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
