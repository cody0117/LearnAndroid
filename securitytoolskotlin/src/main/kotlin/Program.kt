import com.rsk.Provider
import sun.security.jca.Providers

/**
 * Created by victor888 on 1/26/2017.
 */

fun main(args: Array<String>) {
    val providers = Provider()

    val allproviders = providers.getProvider()

    val it = allproviders.iterator() //never use it directly

    while (it.hasNext()) {
        val provider = it.next()
        println(provider.name)

        provider.forEach { key, value -> println("\t $key: $value") }
    }



//    listProviders()
}

private fun listProviders() {
    val providers = getProvider()

    val it = providers.iterator() //never use it directly

    while (it.hasNext()) {
        val provider = it.next()
        println(provider.name)

        provider.forEach { key, value -> println("\t $key: $value") }
    }
}