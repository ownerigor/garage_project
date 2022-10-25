package br.com.garage.controller.Cliente;

import br.com.garage.DAO.ClienteDAOImpl;
import br.com.garage.model.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SalvarCliente", urlPatterns = {"/SalvarCliente"})
public class SalvarCliente extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        String mensagem = null;
        
        Cliente cliente = new Cliente();
        
        cliente.setNome(request.getParameter("nomepessoa"));
        cliente.setCPFCNPJ(request.getParameter("cpfcnpjpessoa"));
        cliente.setRGIE(request.getParameter("rgiepessoa"));
        cliente.setDataNascimento(request.getParameter("datanascimentopessoa"));        
        cliente.setEmail(request.getParameter("emailcliente"));
        cliente.setSenha(request.getParameter("senhacliente"));
        cliente.setObservacao(request.getParameter("obscliente"));
        
        try {
            ClienteDAOImpl dao = new ClienteDAOImpl();
            
            if (request.getParameter("idpessoa").equals("")) {
                if (dao.cadastrar(cliente)) {
                    mensagem = "Cliente " + cliente.getNome()+ " cadastrado com sucesso!";                    
                } else {
                    mensagem = "Problemas ao cadastrar cliente " + cliente.getNome() + "!";
                }
            } else {
                /* if (dao.alterar(cliente)) {
                    mensagem = "Cliente " + cliente.getNome() + " alteração realizada com sucesso!";
                } else {
                    mensagem = "Problemas ao alterar cliente " + cliente.getNome() + "!";
                } */
            } 
        } catch (Exception ex) {
            System.out.println("Problemas na controller ao cadastrar Cliente. Erro: " + ex.getMessage());
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
