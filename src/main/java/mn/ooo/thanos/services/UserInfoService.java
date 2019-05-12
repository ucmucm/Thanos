package mn.ooo.thanos.services;

import org.springframework.stereotype.Service;

public interface UserInfoService {
    boolean findByUsername(final String username);
}
