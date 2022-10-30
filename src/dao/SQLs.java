package dao;

public enum SQLs {
    LOGIN("SELECT * FROM usuario WHERE email = ? AND senha = ?"),
    INSERT_PRODUTO("INSERT INTO produto(nome, valorUnitario) VALUES (?, ?)"),
    INSERT_LIVRO("INSERT INTO livro(nome, valorUnitario, autor, ano, numPaginas) VALUES (?, ?, ?, ?, ?)"),
    LISTALL_LIVRO("SELECT * FROM livro"),
    INSERT_VESTUARIO("INSERT INTO vestuario(nome, valorUnitario, categoria, genero, tamanho) VALUES(?, ?, ?, ?, ?)"),
	LISTALL_VESTUARIO("SELECT * FROM vestuario");
    private final String sql;
    SQLs(String sql){
        this.sql = sql; 
    }
    public String getSql() {
        return sql;
    }    
}

