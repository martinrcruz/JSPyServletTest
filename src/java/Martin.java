/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author martin
 */
public class Martin extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            out.print("");

            String MRnombreServ;
            int MRclave1Serv, MRclave2Serv;

            MRnombreServ = (String) request.getParameter("MRnombre");
            MRclave1Serv = Integer.parseInt(request.getParameter("MRclave1"));
            MRclave2Serv = Integer.parseInt(request.getParameter("MRclave2"));

            if (MRclave1Serv == MRclave2Serv) {
                out.println("");

                if (MRclave1Serv % 2 == 0 && MRclave2Serv % 2 == 0) {
                    out.println(MRnombreServ);
                    out.println("                    <form action=\"Rios.jsp\" id=\"signupForm2\" method=\"get\">\n"
                            + "                        <input type=\"hidden\" id=\"MRnombreServ\"  name=\"MRnombreServ\" value=\" " + MRnombreServ + "\">\n"
                            + "                        <input type=\"hidden\" id=\" " + MRclave1Serv + " name=\" " + MRclave1Serv + " value=\" " + MRclave1Serv + "\">\n"
                            + "                        <input type=\"hidden\" id=\" " + MRclave2Serv + " name=\" " + MRclave2Serv + " value=\" " + MRclave2Serv + " \">\n"
                            + "\n"
                            + "                        <pre><h3>Ingrese los datos solicitados a continuacion.</h3>\n"
                            + "                        <p id=\"parrafo\"> Apellido:  <br><input type=\"text\" name=\"MRapellidoServ\" id=\"MRapellidoServ\" value=\"\" size=\"25\" maxlength=\"20\"  required=\"\"/></p></pre>\n"
                            + "\n"
                            + "\n"
                            + "\n"
                            + "                        <input type=\"submit\" value=\"CONFIRMAR\" class=\"btn-success\" id=\"botonCase1\"/>\n"
                            + "                        <input type=\"reset\" value=\"LIMPIAR\" class=\"btn-warning\" id=\"botonCase2\">\n"
                            + "                    </form>");
                    out.println("");
                    out.println("");
                    out.println("");
                    out.println("");

                } else {
                    out.print("        <div>\n"
                            + "            <h1> ERROR (CLAVES INCORRECTAS): LAS CLAVES NO SON PARES</h1>\n"
                            + "            <a href=\"index.html\" style=\"text-decoration: none; font-family: sans-serif; background-color: lightgreen; padding: 5px; text-align: center;\"> VOLVER AL MENU PRINCIPAL </a> \n"
                            + "        </div>\n"
                            + "        ");
                }

            } else {
                out.println("        <div>\n"
                        + "            <h1> ERROR (CLAVES INCORRECTAS): LAS CLAVES NO SON IGUALES</h1>\n"
                        + "            <a href=\"index.html\" style=\"text-decoration: none; font-family: sans-serif; background-color: lightgreen; padding: 5px; text-align: center;\"> VOLVER AL MENU PRINCIPAL </a> \n"
                        + "        </div>\n"
                        + "        ");
                out.println("");
            }

        }
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
