package by.academy.it.dao;

import by.academy.it.config.TestDaoConfig;
import by.academy.it.pojo.User;
import by.academy.it.util.TestSessionFactoryUtil;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.junit.After;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.transaction.Transactional;
import java.time.LocalDateTime;
import java.util.List;

import static by.academy.it.util.TestSessionFactoryUtil.sessionFactory;

@ContextConfiguration(classes = TestDaoConfig.class)
public class UserDaoTest {

    @Autowired
    private UserDao userDao;

    @Test
    public void addUser() {
        String email = "add-test@gmail.com";
        String password = "123";
        String nickname = "nickname";
        String gender = "man";
        String age = "age";
        String birthday = "22.02.1999";
        LocalDateTime time = LocalDateTime.now();

        User user = new User(email, time, password, time, nickname, gender, age, birthday, time);

        userDao.addUser(user);

        Session session = sessionFactory.getCurrentSession();
        Query<User> query = session.createQuery("from User where email = : paramEmail", User.class);
        query.setParameter("paramEmail", email);
        List<User> userList = query.list();

        Assertions.assertNotNull(userList.get(0).getId());
        Assertions.assertEquals(email, userList.get(0).getEmail());
        Assertions.assertEquals(time, userList.get(0).getLastEmailChangeDate());
        Assertions.assertEquals(password, userList.get(0).getPassword());
        Assertions.assertEquals(time, userList.get(0).getLastPasswordChangeDate());
        Assertions.assertEquals(nickname, userList.get(0).getNickname());
        Assertions.assertEquals(gender, userList.get(0).getGender());
        Assertions.assertEquals(age, userList.get(0).getAge());
        Assertions.assertEquals(birthday, userList.get(0).getBirthday());
        Assertions.assertEquals(time, userList.get(0).getDate());
        session.close();
    }
}