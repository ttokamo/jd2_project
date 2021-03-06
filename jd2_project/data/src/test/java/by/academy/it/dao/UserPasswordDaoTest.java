package by.academy.it.dao;

import by.academy.it.config.TestDaoConfig;
import by.academy.it.pojo.UserPassword;
import by.academy.it.util.TestSessionFactoryUtil;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;

import java.time.LocalDateTime;
import java.util.List;

import static by.academy.it.util.TestSessionFactoryUtil.sessionFactory;

@ContextConfiguration(classes = TestDaoConfig.class)
public class UserPasswordDaoTest {
    @Autowired
    private UserPasswordDao userPasswordDao;

    @Test
    void addUserData() {
        LocalDateTime time = LocalDateTime.now();
        String id = "1";
        String password = "0000";
        UserPassword userPassword = new UserPassword(id, password, time);

        userPasswordDao.addUserData(userPassword);

        Session session = sessionFactory.openSession();
        Query<UserPassword> query = session.createQuery("from UserPassword where userId = : paramId", UserPassword.class);
        query.setParameter("paramId", id);
        List<UserPassword> listId = query.list();

        Assertions.assertEquals(id, listId.get(0).getUserId());
        Assertions.assertEquals(password, listId.get(0).getPassword());
        Assertions.assertEquals(time, listId.get(0).getDate());
        session.close();
    }
}