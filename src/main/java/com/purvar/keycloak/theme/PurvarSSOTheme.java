package com.purvar.keycloak.theme;

import org.keycloak.locale.LocaleSelectorProvider;
import org.keycloak.models.RealmModel;
import org.keycloak.models.UserModel;

import java.util.Locale;

public class PurvarSSOTheme implements LocaleSelectorProvider {

    @Override
    public Locale resolveLocale(RealmModel realmModel, UserModel userModel) {
        return Locale.CHINESE;
//        return null;
    }

    @Override
    public void close() {

    }
}
