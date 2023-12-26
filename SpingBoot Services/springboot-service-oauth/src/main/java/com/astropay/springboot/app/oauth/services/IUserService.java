package com.astropay.springboot.app.oauth.services;

import com.astropay.springboot.app.oauth.users.models.entity.Usuario;

public interface IUserService {

	public Usuario findByUsername(String username);

	public Usuario update(Usuario usuario, Long id);

}
