package mn.ooo.thanos.services.impl;

import lombok.RequiredArgsConstructor;
import mn.ooo.thanos.model.UserInfo;
import mn.ooo.thanos.repositories.UserInfoRepository;
import mn.ooo.thanos.services.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    private UserInfoRepository userInfoRepository;

    @Override
    public boolean findByUsername(final String username){
        final List<UserInfo> list = userInfoRepository.findByUsername(username);
        return list.isEmpty() ? false : true;
    }
}
