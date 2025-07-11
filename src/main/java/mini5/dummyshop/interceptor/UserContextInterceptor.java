package mini5.dummyshop.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mini5.dummyshop.service.UserContextService;

@Component
public class UserContextInterceptor implements HandlerInterceptor {
    @Autowired
    private UserContextService userContextService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        // Long userId = 1L; // TODO: 로그인이 인증된 경우에만 값 주입
        // String sessionId = request.getSession().getId();
        // String username = "Guest"; // 로그인 시 실제 사용자명

        HttpSession session = request.getSession();
        String sessionId = session.getId();
        Long userId = (Long) session.getAttribute("userId");
        String username = (String) session.getAttribute("username");

        userContextService.setContext(sessionId, userId, username);
        return true;
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
            Exception ex) {
        userContextService.clear();
    }

    // private String generateRequestId() {
    // return "REQ-" + System.currentTimeMillis();
    // }
}
