package utilities;

import com.github.javafaker.Faker;

import java.util.HashMap;
import java.util.Map;

public class KraftDataGenerator {

    /**
     * {
     *       "name": "alperen",
     *       "email": "alperen55pro@gmail.com",
     *       "password": "Test.1234567890"
     * }
     */

    public static Map<String,Object> createUser() {
        Map<String,Object> map = new HashMap<>();
        String username = new Faker().name().username();
        String email = new Faker().internet().emailAddress();
        String password = "Test.!12345" + new Faker().internet().password();
        map.put("name", username);
        map.put("email", email);
        map.put("password", password);
        return map;
    }
}
