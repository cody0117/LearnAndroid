package inheritance

/**
 * Created by cyber on 2017-02-08.
 */
open class Person() {
    open fun validate(){

    }
}

class Customer: Person {
    override fun validate() {
        super.validate()
    }
    constructor():super(){

    }
}
