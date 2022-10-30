package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import classes.Livro;
import classes.Vestuario;

public class VestuarioDAO implements GenericDAO<Vestuario>{

	@Override
	public int insert(Vestuario v) {
		int chavePrimaria = -1;
		try(Connection connection = new ConnectionFactory().getConnection(); 
			PreparedStatement stmt = connection.prepareStatement(SQLs.INSERT_VESTUARIO.getSql(), Statement.RETURN_GENERATED_KEYS)){
			//INSERT_VESTUARIO("INSERT INTO(nome, valorUnitario, categoria, genero, tamanho) VALUES(?, ?, ?, ?, ?)");
			stmt.setString(1, v.getNome());
			stmt.setDouble(2, v.getValorUnitario());
			stmt.setString(3, v.getCategoria());
			stmt.setString(4, v.getGenero() );
			stmt.setString(5, v.getTamanho());
			stmt.execute();
			ResultSet chaves = stmt.getGeneratedKeys();
			if (chaves.next())  
				return chavePrimaria= chaves.getInt(1);
		}catch(SQLException e){
			System.out.println("Excecao no codigo - Vestuario insert");
			e.printStackTrace();
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			System.out.println("Classe nao encontrada - Vestuario insert!");
		}
		return chavePrimaria;
	}

	@Override
	public  List<Vestuario> listAll() {
		List<Vestuario> lista = new LinkedList<>();

		try(Connection connection = new ConnectionFactory().getConnection();
				PreparedStatement stmt = 
						connection.prepareStatement(SQLs.LISTALL_VESTUARIO.getSql())){
			ResultSet rs = stmt.executeQuery();
			while(rs.next()){
				String nome = rs.getString("nome");
				double valorUnitario = rs.getDouble("valorUnitario");
				String categoria = rs.getString("categoria");
				String genero = rs.getString("genero");
				String tamanho = rs.getString("tamanho");
				lista.add(new Vestuario(nome, valorUnitario, categoria, genero, tamanho));
			}
			return lista;
		}catch(SQLException e){ 
			System.out.println("Exce��o SQL - listAll Vestuario");
		}catch(Exception e){  
			System.out.println("Exce��o no c�digo - listAll Vestuario!");
		}
		return null;
	}

	@Override
	public int update(Vestuario obj) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Vestuario obj) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Vestuario findByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}
		
		
}