package mn.ooo.thanos.helper;

import lombok.RequiredArgsConstructor;
import mn.ooo.thanos.model.UserInfo;
import mn.ooo.thanos.services.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Optional;

@Component
@RequiredArgsConstructor
public class SearchHelper {

    @Autowired
    private UserInfoService userInfoService;

    public boolean hasUserByUsername(final String username) {
        final Optional<UserInfo> userInfo = userInfoService.findByUsername(username);
        return userInfo.isPresent();
    }

    public boolean hasUserByEmailAddress(final String emailAddress) {
        final Optional<UserInfo> userInfo = userInfoService.findByEmailAddress(emailAddress);
        return userInfo.isPresent();
    }
}
