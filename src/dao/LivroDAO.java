package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import classes.Livro;

public class LivroDAO implements GenericDAO<Livro>{
		@Override
		public int insert(Livro l) {
			int chavePrimaria = -1;
			try(Connection connection = new ConnectionFactory().getConnection(); 
				PreparedStatement stmt = connection.prepareStatement(SQLs.INSERT_LIVRO.getSql(), Statement.RETURN_GENERATED_KEYS)){
				stmt.setString(1, l.getNome());
				stmt.setDouble(2, l.getValorUnitario());
				stmt.setString(3, l.getAutor());
				stmt.setInt(4, l.getAno());
				stmt.setInt(5, l.getNumPaginas());
				stmt.execute();
				ResultSet chaves = stmt.getGeneratedKeys();
				if (chaves.next())  
					return chavePrimaria= chaves.getInt(1);
			}catch(SQLException e){
				System.out.println("Excecao no codigo - Livro insert");
				e.printStackTrace();
			}catch(ClassNotFoundException e){
				e.printStackTrace();
				System.out.println("Classe nao encontrada - Livro insert!");
			}
			return chavePrimaria;
		}

		@Override
		public  List<Livro> listAll() {
			List<Livro> lista = new LinkedList<>();

			try(Connection connection = new ConnectionFactory().getConnection();
					PreparedStatement stmt = 
							connection.prepareStatement(SQLs.LISTALL_LIVRO.getSql())){
				ResultSet rs = stmt.executeQuery();
				while(rs.next()){
					String nome = rs.getString("nome");
					double valorUnitario = rs.getDouble("valorUnitario");
					String autor = rs.getString("autor");
					int ano = rs.getInt("ano");
					int numPaginas = rs.getInt("numPaginas");
					lista.add(new Livro(nome, valorUnitario, autor, ano, numPaginas));
				}
				return lista;
			}catch(SQLException e){ 
				System.out.println("Exce��o SQL - listAll Livro");
			}catch(Exception e){  
				System.out.println("Exce��o no c�digo - listAll Livro!");
			}
			return null;
		}

		@Override
		public int update(Livro obj) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int delete(Livro obj) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public Livro findByID(int id) {
			// TODO Auto-generated method stub
			return null;
		}
		
}