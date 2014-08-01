
package br.com.gerenciadorSpring.dao;

import br.com.gerenciadorSpring.infra.EMFactory;
import javax.persistence.EntityManager;

public class QuestionarioDAO {

    private final EntityManager entityManager;

    public QuestionarioDAO() {
        this.entityManager = new EMFactory().getEntityManager();
    }
}
