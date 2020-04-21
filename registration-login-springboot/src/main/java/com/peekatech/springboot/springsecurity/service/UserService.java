package com.peekatech.springboot.springsecurity.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.peekatech.springboot.springsecurity.model.User;
import com.peekatech.springboot.springsecurity.web.dto.UserRegistrationDto;

public interface UserService extends UserDetailsService {

    User findByEmail(String email);

    User save(UserRegistrationDto registration);
}
