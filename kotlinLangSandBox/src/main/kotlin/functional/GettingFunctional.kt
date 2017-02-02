package functional

/**
 * Created by victor888 on 2/2/2017.
 */
fun operation(x: Int, y: Int, op:(Int,Int)-> Int): Int {
    return op(x,y)
}

fun operation(x: Int,op:(Int) -> Unit) {
    
}

fun route(path: String, vararg action:(String,String)-> String)
{

}
fun UnaryOperation(x:Int, op:(Int)->Int) {
op(x)
}

fun toSum(x: Int , y: Int) = x+y

fun main(args: Array<String>) {

    println(toSum(1, 2)).
}