package br.com.gerenciadorSpring.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class IdentificacaoController {

    @RequestMapping("/identifica")
    public String identificacao() {
        return "login/login";
    }

    @RequestMapping(value = "/iniciar")
    public String criaSessao(String nome, String identificaSessao, HttpSession httpSession, Model model) {
        httpSession.setAttribute("nome", nome);
        httpSession.setAttribute("identificaSessao", identificaSessao);
        return "/questionario/questionario";
    }
/*
    @RequestMapping(value = "/buscar/{usuario}/{senha}", method = RequestMethod.GET)
    @ResponseBody
    public String buscarUsuario(@PathVariable String login, @PathVariable String senha) {

        LoginDao dao = new LoginDao();

        Usuario usuario = dao.buscarUsuario(login, senha);

        if (usuario == null) {
            return "/login/login";
        } else {
            return "/cadastro/cliente";
        }

    }
    
     * @RequestMapping(value = "salva/{id}/{opcao}/{escolha}", method = RequestMethod.GET)
     public @ResponseBody String salva(@PathVariable Integer id, @PathVariable Integer opcao, @PathVariable Boolean escolha,
     HttpSession httpSessio){

     String nomeUsuario = httpSessio.getAttribute("nome").toString();
     String identificaSessao = httpSessio.getAttribute("identificaSessao").toString();
     String json = "ERROR";
        
     QuestionarioDAO dao = new QuestionarioDAO();
        
     Pergunta pergunta = dao.carregaPergunta(id);
     Opcao op = dao.carregaOpcao(opcao);

     Resposta respondida = dao.respondida(identificaSessao, id);
        
     if(respondida != null){
     json = "RESPONDIDA";
     }else{
     Resposta resposta = new Resposta();
     resposta.setNomeUsuario(nomeUsuario);
     resposta.setIdentificacao(identificaSessao);
     resposta.setOpcao(op);
     resposta.setPergunta(pergunta);
     resposta = dao.salvaResposta(resposta);
            
     if(resposta.getId() > 0){
     json = "PONTO";
     }else{
     json = "ERROR";
     }
     }

     return json;
     }
     */
}