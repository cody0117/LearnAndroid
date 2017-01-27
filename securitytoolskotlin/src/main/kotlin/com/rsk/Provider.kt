package com.rsk

import java.security.Provider
import java.security.Security

/**
 * Created by victor888 on 1/26/2017.
 */
class Provider {
    fun getProvider():List<Provider> {

        val providers = Security.getProviders()
        val ListOfProviders = providers.asList();
        return ListOfProviders
    }
}