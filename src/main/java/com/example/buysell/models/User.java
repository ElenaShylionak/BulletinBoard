package com.example.buysell.models;

import com.example.buysell.models.enums.Role;
import jakarta.persistence.*;
import lombok.Data;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "users")
@Data
public class User implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "email", unique = true) //уникальность unique = true
    private String email;
    @Column(name = "numberPhone", unique = true)
    private String numberPhone;
    @Column(name = "name")
    private String name;
    @Column(name = "active") //нужно, если нужно подтвержение по почте, пока не подтвердит аккаунт будет равен false
    private boolean active;
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER) //cascade = CascadeType.ALL - чтобы удалять товар, когда удаляем пользователя
    @JoinColumn(name = "image_id") //аватар
    private Image avatar;
    @Column(name = "password", length = 1000) //длина пароля
    private String password;

    //создается отдельная таблица - в ней храниться id и роль
    @ElementCollection(targetClass = Role.class, fetch = FetchType.EAGER) //загрузка ролей fetch = FetchType.EAGER
    @CollectionTable(name = "user_role",
            joinColumns = @JoinColumn(name = "user_id"))
    @Enumerated(EnumType.STRING) // преоьбразуем Enum в тип STRING
    private Set<Role> roles = new HashSet<>(); //список ролей
    private LocalDateTime dateOfCreated; //дата создания пользователя

    @PrePersist   //инициализация даты создания пользователя
    private void init() {
        dateOfCreated = LocalDateTime.now();
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return roles;
    }

    @Override
    public String getUsername() { // можно по имени, можно по почте . у меня  Username - return email
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() { //тип активности
        return active;
    }
}