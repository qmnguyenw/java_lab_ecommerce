/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CountDAO;
import dao.ProductDAO;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
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
public class SearchController extends HttpServlet {

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
        try {
            ProductDAO productDAO = new ProductDAO();
            String keyword = request.getParameter("keyword");
            if (keyword != null && !keyword.isEmpty()) {
                String currentPage = request.getParameter("index");
                int index = 0;
                //check index page
                if (currentPage == null) {
                    index = 1;
                } else if (!currentPage.matches("\\d+")) {
                    index = 0;
                } else {
                    index = Integer.parseInt(currentPage);
                }
                
                request.setAttribute("index", index);

                List<Product> listProduct = productDAO.listSearchProductWithPaging(index, keyword);
                int maxPage = productDAO.numberPageOfSearchProduct(keyword);
                request.setAttribute("listProduct", listProduct);
                request.setAttribute("maxPage", maxPage);

                CountDAO countDAO = new CountDAO();
                HttpSession session = request.getSession();
                if (session.isNew()) {
                    countDAO.addVisit();
                }
                //get visit number
                request.setAttribute("visit", countDAO.getVisit());

                request.setAttribute("active", "0");
            } else {
                response.sendRedirect("home");
            }
        } catch(Exception e) {
            e.printStackTrace();
            request.setAttribute("error", e);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
        request.getRequestDispatcher("search.jsp").forward(request, response);
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
