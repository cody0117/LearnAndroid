package basics

/**
 * Created by cyber on 2017-02-02.
 */
fun main(args: Array<String>) {

    ranges()

}

private fun kotlinLoops() {
    val capitals = listOf("London", "Paris", "Rome", "Madrid")
    for (captial in capitals) {
        println(captial)
    }

    var i = 100
    while (i > 0) {
        i--
    }

    do {
        var x = 10
        x--
        println("here is what happen in the do while loop " + x)
    } while (x > 10)

    loop@ for (i in 1..100) {
        for (j in 1..100) {
            if (j % i == 0)
                continue
            // or
            break@loop

            //I can do something like this to break out the loop
            //break out and go to this label loop@
        }
    }
}

private fun rangSample() {
    for (a in 1..1000) {
        println(a)
    }

    val numbers = 1..100
    for (it in numbers) {
        println("From for loops " + it)
    }

    for (a in 100 downTo 1) {
        println(" A from 100 to 1  -> " + a)
    }

    for (b in 100 downTo 1 step 5) {
        println("This is 100 to 1 in steps 5 -> " + b)
    }
}

fun ranges() {
    val a: IntRange = 1..10
    val b: IntRange = 1..10
    val rangeTo = 1.rangeTo(10)// Same thing for extension method
    val rangeTo1: IntProgression = 1.rangeTo(10).reversed() //Only goes 1..10
    // for (x in rangeTo1) println(x)
    rangeTo1.forEach { println(it) }  //-> this make more sense
    println("The sum rangTo1 is  = ${rangeTo1.sum()}")

    val downTo = 10.downTo(1).forEach {println("DownTo  from 10 to 1 = " +it) }

    var downTo1 = 10 downTo 1

    val m = 8
    val n =-3
    val c =IntRange(Math.min(m,n),Math.max(m,n))
    c.forEach { println("-3 to 8 == "+it) }

    val d= 10.downTo(1) step 2
    d.forEach { print("$it \t") }
}
