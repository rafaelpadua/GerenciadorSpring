/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.gerenciadorSpring.infra;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author osvaldogusmao
 */
public class EMFactory {

    private final EntityManagerFactory factory;

    public EMFactory() {
        this.factory = Persistence.createEntityManagerFactory("TestePU");
    }

    public EntityManager getEntityManager() {
        return this.factory.createEntityManager();
    }
}
