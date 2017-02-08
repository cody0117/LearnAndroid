package inheritance

 /**
 * Created by cyber on 2017-02-08.
 */

interface CustomerRepository{
    val isEmpty:Boolean
      get() = true
    fun store(obj:Customer) {

    }
    fun getByid(id:Int) :Customer
}
