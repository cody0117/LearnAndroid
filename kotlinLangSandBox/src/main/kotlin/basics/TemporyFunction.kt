package basics

/**
 * Created by cyber on 2017-02-10.
 */
fun main(args: Array<String>) {
    val increaseBy = fun Int.(value:Int) = this+ value

    println(3.increaseBy(10)) //Wont able to use in other files
}