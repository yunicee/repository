package test;

import com.specialty.pojo.User;
import com.specialty.service.LoginService;
import com.specialty.service.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.util.DigestUtils;
import org.springframework.web.context.support.XmlWebApplicationContext;

import java.util.UUID;

public class MyTest {
    @Test
    public void uuidTest(){
        UUID uuid = UUID.randomUUID();
        String uuidstr = uuid.toString();
        uuidstr = uuidstr.replace("-","");
        System.out.println(uuidstr);
    }

    @Test
    public void Md5Test(){
        System.out.println(DigestUtils.md5DigestAsHex("username".getBytes()).equals("5f4dcc3b5aa765d61d8327deb882cf99"));
        //5f4dcc3b5aa765d61d8327deb882cf99
    }

    @Test
    public void mybatisTest(){
       User user = new User();
       user.setSex(0);
       user.setUserId(10008);
       ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
       UserService userService = (UserService) ac.getBean("userServiceImpl");
        System.out.println(userService.update(user));
    }
}
