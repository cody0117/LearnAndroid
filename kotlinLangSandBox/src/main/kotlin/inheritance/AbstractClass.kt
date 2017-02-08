package inheritance

/**
 * Created by cyber on 2017-02-08.
 */

abstract class StoredEntity{
    val isActive = true
    abstract fun status(): String  {
     return isActive.toString()
    }
}

class Employee:StoredEntity() {
    override fun status(): String {
        throw UnsupportedOperationException("not implemented")
    }
}

fun main(args: Array<String>) {
    val se = Employee()
    se.isAtive
    se.status()
}