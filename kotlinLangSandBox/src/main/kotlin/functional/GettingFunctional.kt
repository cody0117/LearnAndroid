package functional

/**
 * Created by victor888 on 2/2/2017.
 */
fun operation(x: Int, y: Int, op: (Int, Int) -> Int): Int {
    return op(x, y)
}


fun route(path: String, vararg action: (String, String) -> String) {

}

fun UnaryOperation(x: Int, op: (Int) -> Int) {
    op(x)
}

fun Sumit(x: Int, y: Int) = x + y

fun Multiplyit(x: Int,y:Int) = x*y

fun main(args: Array<String>) {

    println(operation(12, 25,::Multiplyit)) //passing into function work really well

    val sumLamda :(Int,Int)-> Int ={x,y -> x+y}

}