package br.com.garage.DAO;        

import br.com.garage.model.Pessoa;
import br.com.garage.util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class PessoaDAOImpl {
    
    private Connection conn;
    
    public PessoaDAOImpl() throws Exception {
        try {
            this.conn = ConnectionFactory.getConnection();
            System.out.println("Conectado com sucesso!");            
        } catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }
    }
    
    public Integer cadastrar(Object object) throws ParseException, SQLException {
        PreparedStatement stmt = null;
        Pessoa pessoa = (Pessoa) object;
        ResultSet rs = null;
        Integer idPessoa = null;
        
        String sql = "insert into pessoa(nome_pessoa, cpf_cnpj_pessoa, "
                     + "rg_ie_pessoa, data_nascimento)" 
                     + "VALUES (?, ?, ?, ?) returning id_pessoa;";
        
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, pessoa.getNome());
            stmt.setString(2, pessoa.getCPFCNPJ());
            stmt.setString(3, pessoa.getRGIE());
            stmt.setDate(4, new java.sql.Date(new SimpleDateFormat("yyyy-mm-dd").parse(pessoa.getDataNascimento()).getTime()));
            
            rs = stmt.executeQuery();
            while (rs.next()) {
                idPessoa = rs.getInt("id_pessoa");
            }
        } catch(SQLException ex) {
            System.out.println("Problemas na DAO ao cadastrar Pessoa! Erro: " + ex.getMessage());
        } finally {
            try {
                ConnectionFactory.closeConnection(conn, stmt, rs);
            } catch(Exception ex) {
                System.out.println("Problemas ao fechar parâmetros de conexão! Erro: " + ex.getMessage());
            }
        }
        return idPessoa;
    }
    
}
