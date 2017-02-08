package basics

/**
 * Created by cyber on 2017-02-08.
 */


fun main(args: Array<String>) {
    funWithUnit()
    funWithNothing()
}

fun funWithNothing() :Nothing {
    throw Exception("This fun throws an fun exception")
}

fun funWithUnit() :Unit {
    println("This fun works")
}
