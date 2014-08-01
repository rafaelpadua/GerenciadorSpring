package br.com.gerenciadorSpring.dao;

import br.com.gerenciadorSpring.infra.EMFactory;
import br.com.gerenciadorSpring.model.Usuario;
import javax.persistence.EntityManager;
import javax.persistence.Query;

public class LoginDao {

    private final EntityManager entityManager;

    public LoginDao() {
        this.entityManager = new EMFactory().getEntityManager();
    }

    public Usuario buscarUsuario(String login, String senha) {
        Query query = entityManager.createQuery("from Usuario where login=:login and senha=:senha")
                .setParameter("login", login)
                .setParameter("senha", senha);

        return (Usuario) query.getSingleResult();
    }
}
