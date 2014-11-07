package fr.treeptik.entity;
 
import java.io.Serializable;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class User implements UserDetails, Serializable {
 

	private static final long serialVersionUID = 1L;

	// ========================================= properties ========================================= //
 
	/**
	 * Id of the User.
	 */
	private int idUser;
 
	/**
	 * 
	 */
	private Collection<? extends GrantedAuthority> authorities;
 
	/**
	 * 
	 */
	private String j_password;
 
	/**
	 * 
	 */
	private String j_username;
 
	/**
	 * 
	 */
	private boolean credentialsNonExpired;
 
	/**
	 * 
	 */
	private boolean enabled;
 
	/**
	 * 
	 */
	private boolean accountNonLocked;
 
	/**
	 * 
	 */
	private boolean accountNonExpired;
 
	/**
	 * 
	 */
	private String j_roleAuthorities;	
 
	// ========================================= Getters and setters ========================================= //
 
	/**
	 * @return the idUser
	 */
	public final int getIdUser() {
		return idUser;
	}
 
	/**
	 * @param pidUser the pidUser to set
	 */
	public final void setIdUser(final int pidUser) {
		this.idUser = pidUser;
	}
 
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public final String toString() {
		return "User [idUser=" + idUser + "]";
	}
 
	public final Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}
 
	public final String getPassword() {
		return j_password;
	}
 
	public final String getUsername() {
		return j_username;
	}
 
	public final boolean isAccountNonExpired() {
		return accountNonExpired;
	}
 
	public final boolean isAccountNonLocked() {
		return accountNonLocked;
	}
 
	public final boolean isCredentialsNonExpired() {
		return credentialsNonExpired;
	}
 
	public final boolean isEnabled() {
		return enabled;
	}
 
	/**
	 * @return the j_password
	 */
	public String getJ_password() {
		return j_password;
	}
 
	/**
	 * @param j_password the j_password to set
	 */
	public void setJ_password(String j_password) {
		this.j_password = j_password;
	}
 
	/**
	 * @return the j_username
	 */
	public String getJ_username() {
		return j_username;
	}
 
	/**
	 * @param j_username the j_username to set
	 */
	public void setJ_username(String j_username) {
		this.j_username = j_username;
	}
 
	/**
	 * @return the j_RoleAuthorities
	 */
	public String getJ_roleAuthorities() {
		return j_roleAuthorities;
	}
 
	/**
	 * @param j_RoleAuthorities the j_RoleAuthorities to set
	 */
	public void setJ_RoleAuthorities(String j_roleAuthorities) {
		this.j_roleAuthorities = j_roleAuthorities;
	}
 
	/**
	 * @param authorities the authorities to set
	 */
	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}
 
	/**
	 * @param credentialsNonExpired the credentialsNonExpired to set
	 */
	public void setCredentialsNonExpired(boolean credentialsNonExpired) {
		this.credentialsNonExpired = credentialsNonExpired;
	}
 
	/**
	 * @param enabled the enabled to set
	 */
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
 
	/**
	 * @param accountNonLocked the accountNonLocked to set
	 */
	public void setAccountNonLocked(boolean accountNonLocked) {
		this.accountNonLocked = accountNonLocked;
	}
 
	/**
	 * @param accountNonExpired the accountNonExpired to set
	 */
	public void setAccountNonExpired(boolean accountNonExpired) {
		this.accountNonExpired = accountNonExpired;
	}
 
	// ========================================= constructor(s) ========================================= //
 
	/**
	 * @param idUser
	 * @param authorities
	 * @param j_password
	 * @param j_username
	 * @param credentialsNonExpired
	 * @param enabled
	 * @param accountNonLocked
	 * @param accountNonExpired
	 * @param j_roleAuthorities
	 */
	public User(int idUser, Collection<? extends GrantedAuthority> authorities, String j_password, String j_username, boolean credentialsNonExpired, boolean enabled, boolean accountNonLocked,
			boolean accountNonExpired, String j_roleAuthorities) {
		super();
		this.idUser = idUser;
		this.authorities = authorities;
		this.j_password = j_password;
		this.j_username = j_username;
		this.credentialsNonExpired = credentialsNonExpired;
		this.enabled = enabled;
		this.accountNonLocked = accountNonLocked;
		this.accountNonExpired = accountNonExpired;
		this.j_roleAuthorities = j_roleAuthorities;
	}
 
	/**
	 * 
	 */
	public User() {
		// empty constructor.
	}
 
}

