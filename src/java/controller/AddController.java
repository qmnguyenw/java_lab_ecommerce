/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CountDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class AddController extends HttpServlet {

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

    }

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
        try {
            CountDAO countDAO = new CountDAO();
            HttpSession session = request.getSession();
            if (session.isNew()) {
                countDAO.addVisit();
            }
            //get visit number
            request.setAttribute("visit", countDAO.getVisit());
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", e);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
        request.getRequestDispatcher("add.jsp").forward(request, response);
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
        try {
            String name = request.getParameter("name").trim();
            String image_url = request.getParameter("image_url").trim();
            String price = request.getParameter("price").trim();

            List<String> message = new ArrayList<>();

            ProductDAO productDAO = new ProductDAO();

            if (name.isEmpty()) {
                message.add("Name field cannot be empty.");
            } else {
                if (!name.matches("[a-zA-Z0-9 ]{1,}")) {
                    message.add("Name not match requirements.");
                }
            }
            if (image_url.isEmpty()) {
                message.add("Image field cannot be empty.");
            }
            if (price.isEmpty()) {
                message.add("Price field cannot be empty.");
            }

            if (message.size() > 0) {
                request.setAttribute("message", message);
                doGet(request, response);
            } else {
                productDAO.addProduct(name, image_url, Double.parseDouble(price));
                String success = "Done Add";
                request.setAttribute("success", success);
                response.sendRedirect("home");
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", e);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
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
