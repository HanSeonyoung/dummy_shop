package mini5.dummyshop.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserInfo {
    private String sessionId;
    private Long userId;
    private String username;
    private boolean isLoggedIn;

    // 비로그인 사용자용
    public static UserInfo anonymous(String sessionId) {
        return UserInfo.builder()
                .sessionId(sessionId) // UserContext 내부용
                .userId(null) // DB에는 null?
                .username("Guest")
                .isLoggedIn(false)
                .build();
    }

    // 로그인 사용자용 - sessionId 제거
    public static UserInfo authenticated(Long userId, String username) {
        return UserInfo.builder()
                .sessionId(null) // DB에 저장안함 // TODO: 사용자 세션 정보 필요시 수정 userContextService/setConext
                .userId(userId) // DB 저장용
                .username(username)
                .isLoggedIn(true)
                .build();
    }
}
