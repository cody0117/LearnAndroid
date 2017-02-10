package functions

/**
 * Created by cyber on 2017-02-10.
 */
//functor is Default function for a class

class Average {
    public fun invoke(vararg value:Double) :Double{
        var sum =0.0
        for (x in value)
        {
            sum+= x
        }
        return sum/value.count()
    }
}

fun main(args: Array<String>) {
    val average = Average()
    println(average(1.0, 3.0, 4.9))
}