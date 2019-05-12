package mn.ooo.thanos.model;

import lombok.Data;

@Data
public class UserInfo {

    public enum Gender {
        Male("Male"),
        Female("Female");

        private final String name;

        Gender(String name) {
            this.name = name;
        }

    }

    private String userName;
    private int age;

}
