/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

//import static control.Main.sessionFactory;
import controlers.HibernateUtil;
import entity.Temp;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author 1795545
 */
public class DAO_Temp2 {

    static Session session = null;
    static SessionFactory sessionFactory = null;

    public static void insert(Temp temp) {
        sessionFactory = HibernateUtil.getSessionFactory();
        session = sessionFactory.openSession();

        session.beginTransaction();

        session.save(temp);
        session.getTransaction().commit();
        session.close();
    }

    public static void update(Temp temp) {

        sessionFactory = HibernateUtil.getSessionFactory();
        session = sessionFactory.openSession();
        session.beginTransaction();
        session.update(temp);
        session.getTransaction().commit();
        session.close();

    }

    public static void delete(Temp temp) {
        sessionFactory = HibernateUtil.getSessionFactory();
        session = sessionFactory.openSession();
        session.beginTransaction();

        session.delete(temp);

        session.getTransaction().commit();

        session.close();
        System.out.println("1 ligne de Temp supprime");

    }

    public static String afficher() {
        //Session session = sessionFactory.getCurrentSession();
        /*Configuration configuration = new Configuration().configure();
        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
        applySettings(configuration.getProperties());
        SessionFactory sessionFactory = configuration.buildSessionFactory(builder.build());*/
        //sessionFactory = sessionFactory = HibernateUtil.getSessionFactory();
        //sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
        //session = sessionFactory.openSession();
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Temp");

        List<Temp> resultat = query.list();
        String result = "";

        for (Temp enregistrement : resultat) {

            result += enregistrement.getId() + " - " + enregistrement.getCelsius() + " - " + enregistrement.getFarenheit();

        }
        session.close();
        return result;
    }

}
