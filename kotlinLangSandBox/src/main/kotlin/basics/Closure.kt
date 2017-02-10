package basics

/**
 * Created by cyber on 2017-02-10.
 */
fun main(args: Array<String>) {
    var sum =0
    val numbers = listOf(7, 1, 3, 4)

     numbers.forEach { sum+=it }
    println(sum)
}