package mn.ooo.thanos.services.impl;

import lombok.RequiredArgsConstructor;
import mn.ooo.thanos.model.UserInfo;
import mn.ooo.thanos.repositories.UserInfoRepository;
import mn.ooo.thanos.services.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    private UserInfoRepository userInfoRepository;

    @Override
    public Optional<UserInfo> findByUsername(final String username) {
        return userInfoRepository.findByUsername(username);
    }

    @Override
    public Optional<UserInfo> findByEmailAddress(final String emailAddress) {
        return userInfoRepository.findByEmailAddress(emailAddress);
    }

    @Override
    public String findPasswordByEmailAddress(final String emailAddress) {
        return userInfoRepository.findPasswordByEmailAddress(emailAddress);
    }

    @Override
    public void save(final UserInfo userInfo) {
        userInfoRepository.save(userInfo);
    }
}
