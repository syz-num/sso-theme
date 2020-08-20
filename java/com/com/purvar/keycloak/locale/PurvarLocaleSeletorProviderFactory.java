package com.purvar.keycloak.locale;

import org.keycloak.Config.Scope;
import org.keycloak.locale.LocaleSelectorProvider;
import org.keycloak.locale.LocaleSelectorProviderFactory;
import org.keycloak.models.KeycloakSession;
import org.keycloak.models.KeycloakSessionFactory;
/**
 * @author songyazhu
 * @date 2020年8月19日
 */
public class PurvarLocaleSeletorProviderFactory implements LocaleSelectorProviderFactory{


	@Override
	public LocaleSelectorProvider create(KeycloakSession session) {
		// TODO Auto-generated method stub
		return new PurvarLocaleSeletorProvider(session);
	}
	@Override
	public void init(Scope config) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postInit(KeycloakSessionFactory factory) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void close() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getId() {
		// TODO Auto-generated method stub
		return "default";
	}



}
