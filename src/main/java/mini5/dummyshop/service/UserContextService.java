package mini5.dummyshop.service;

import org.springframework.stereotype.Service;

import mini5.dummyshop.dto.UserInfo;

@Service
public class UserContextService {
    private static final ThreadLocal<UserInfo> userContext = new ThreadLocal<>();

    // 컨텍스트 설정 (인터셉터에서 호출)
    public void setContext(String sessionId, Long userId, String username) {
        UserInfo userInfo;
        if (userId != null) {
            // 로그인 사용자 sessionId 제거
            userInfo = UserInfo.authenticated(userId, username);
        } else {
            // 비로그인 사용자 sessionId 유지, userId 제거
            userInfo = UserInfo.anonymous(sessionId);
        }

        userContext.set(userInfo);
    }

    // 현재 사용자 정보 조회 (전역 ModelAttribute)
    public UserInfo getCurrentUser() {
        UserInfo user = userContext.get();
        if (user != null) {
            return user;
        }

        // 컨텍스트가 없는 경우 (예외 상황)
        throw new IllegalStateException("UserContext가 설정되지 않았습니다. 인터셉터 설정을 확인하세요.");
    }

    public String getSessionId() {
        return getCurrentUser().getSessionId();
    }

    public Long getUserId() {
        return getCurrentUser().getUserId();
    }

    public boolean isLoggedIn() {
        return getCurrentUser().isLoggedIn();
    }

    public String getUsername() {
        return getCurrentUser().getUsername();
    }

    // 컨텍스트 정리 (반드시 필요!)
    public void clear() {
        userContext.remove();
    }

}
