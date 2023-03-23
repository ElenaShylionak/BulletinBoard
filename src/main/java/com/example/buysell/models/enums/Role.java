package com.example.buysell.models.enums;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority { //наследуемся от GrantedAuthority
    ROLE_USER, ROLE_ADMIN;

    @Override
    public String getAuthority() {
        return name(); //у GrantedAuthority единственный метод - возвращаем роль в строком виде.
    }
}

