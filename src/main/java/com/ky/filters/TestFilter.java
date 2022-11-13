package com.ky.filters;

import javax.servlet.*;
import java.io.IOException;

public class TestFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
        System.out.println("Filter init successfully");
    }

    public void destroy() {
        System.out.println("Filter destroyed successfully");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        chain.doFilter(request, response);
    }
}
