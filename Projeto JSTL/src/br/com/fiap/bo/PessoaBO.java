package br.com.fiap.bo;

import java.util.List;

import br.com.fiap.bean.PessoaBean;
import br.com.fiap.dao.PessoaDAO;

public class PessoaBO {
	
	public boolean insertPessoa(String nome, int idade, char sexo){
		
		PessoaBean pb = new PessoaBean(nome, idade, sexo);
		PessoaDAO pd = new PessoaDAO();
	
		if(pd.insert(pb) == true){
			return true;
		}else
			return false;
	}
	
	public List<PessoaBean> listaPessoa(){
		PessoaDAO pd = new PessoaDAO();
		return pd.select();
	}
	
}
