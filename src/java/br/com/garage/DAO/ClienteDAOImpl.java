package br.com.garage.DAO;

import br.com.garage.model.Cliente;
import br.com.garage.util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ClienteDAOImpl {
    
    private Connection conn;
    
    public ClienteDAOImpl() throws Exception {
        try {
            this.conn = ConnectionFactory.getConnection();
            System.out.println("Conectado com sucesso!");
        } catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }
    }
    
    public Boolean cadastrar(Object object) throws SQLException {
        
        Cliente cliente = (Cliente) object;
        PreparedStatement stmt = null;
        String sql = "insert into cliente(email_cliente, senha_cliente, "+
               "obs_cliente, id_pessoa) VALUES (?, ?, ?, ?);";
        
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getEmail());
            stmt.setString(2, cliente.getSenha());
            stmt.setString(3, cliente.getObservacao());
            
            try {
                PessoaDAOImpl daoPessoa = new PessoaDAOImpl();
                stmt.setInt(4, daoPessoa.cadastrar(cliente));                
            } catch (Exception ex) {
                System.out.println("Problemas ao cadastrar Pessoa em: " + ex.getMessage());
            }
            stmt.execute();
            return true;
        } catch (SQLException ex) {
            System.out.println("Problemas na DAO do cliente ao cadastrar. Erro: " + ex.getMessage());
            return false;
        } finally {
            try {
                ConnectionFactory.closeConnection(conn, stmt);
            } catch (Exception ex) {
                System.out.println("Problemas ao fechar parâmetros de conexão! Erro: " + ex.getMessage());
            }
        }
    }     
}
