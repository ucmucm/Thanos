package mn.ooo.thanos.repositories;

import mn.ooo.thanos.model.UserInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserInfoRepository extends JpaRepository<UserInfo, Integer> {

    boolean existsByUserId(final String userId);

    Optional<UserInfo> findByUsername(final String username);

    Optional<UserInfo> findByEmailAddress(final String emailAddress);

    String findPasswordByEmailAddress(final String emailAddress);
}
