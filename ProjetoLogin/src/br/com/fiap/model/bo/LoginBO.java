package br.com.fiap.model.bo;

public class LoginBO {

	public boolean validaLogin (String login, String senha){
		
		if(login.equals("Alexandre") && senha.equals("12345")){

			return true;
		}else{
			return false;
		}
		
	}
}
