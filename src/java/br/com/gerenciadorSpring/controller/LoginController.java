
package br.com.gerenciadorSpring.controller;

import br.com.gerenciadorSpring.model.Usuario;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("identifica")
    public String identificacao() {
        return "login/login";
    }

    @RequestMapping("home")
    public String logar(Usuario usuario, HttpSession session) {
        session.setAttribute("usuarioLogado", usuario.getLogin());
        return "home/home";
    }

    @RequestMapping("logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:identifica";
    }
}
