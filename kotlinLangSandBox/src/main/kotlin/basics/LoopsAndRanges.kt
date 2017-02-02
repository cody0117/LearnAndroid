package basics

/**
 * Created by cyber on 2017-02-02.
 */
fun main(args: Array<String>) {
    for (a in 1..1000 ) {
        println(a)
    }

    val numbers = 1..100
    for (it in numbers) {
        println("From for loops "+ it)
    }

    for (a in 100 downTo 1) {
        println(" A from 100 to 1  -> "+ a)
    }

    for (b in 100 downTo 1 step 5) {
        println("This is 100 to 1 in steps 5 -> " +b)
    }

    val capitals = listOf("London","Paris","Rome","Madrid")
    for (captial in capitals) {
        println(captial)
    }

    var i = 1--
    while (i>0) {
        i--
    }
    

}