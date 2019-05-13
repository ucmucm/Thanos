package mn.ooo.thanos.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Entity
@Table(name = "UserInfo")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserInfo {

    public enum Gender {
        Male("Male"),
        Female("Female"),
        Unknown("Unknown");

        private final String name;

        Gender(String name) {
            this.name = name;
        }

    }

    @Id
    @GeneratedValue
    private int userId;

    private String emailAddress;
    private String password;
    private String username;
    private int age;

}
