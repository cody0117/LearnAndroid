package basics

/**
 * Created by cyber on 2017-02-10.
 */
fun main(args: Array<String>) {

    val numbers = listOf(1, 4, 7)
    var maxValue = max(numbers,{x,y ->x<y})
    println(maxValue)
}
//less:(T,T)->Boolean  //This is Argument
fun <T> max(collection:Collection<T>, less:(T,T)->Boolean): T? {
    var max:T? = null
    for (x in collection)
        if (max == null|| less(max,x))
            max=x
    return max


}
