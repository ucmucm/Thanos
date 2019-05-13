package mn.ooo.thanos.services;

import mn.ooo.thanos.model.UserInfo;

import java.util.Optional;

public interface UserInfoService {

    Optional<UserInfo> findByUsername(final String username);
    Optional<UserInfo> findByEmailAddress(final String emailAddress);
    String findPasswordByEmailAddress(final String emailAddress);
    void save(final UserInfo userInfo);

}
