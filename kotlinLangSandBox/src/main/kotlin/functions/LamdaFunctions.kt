package functions

/**
 * Created by victor888 on 2/10/2017.
 */
fun main(args: Array<String>) {


    val product = { x: Int, y: Int -> x * y } //Simple Lamda
    val sameProduct:(Int,Int) -> Int = {x,y -> x*y} //With Function Signature


    println("2*3 =${product(2,3)}")
    println("2*3 =${sameProduct(2,3)}")

    val numbers = listOf(17,1,32453,12,2)
    val n = numbers.count { x->x<10 }
    val g = numbers.count { it<10 } //Single pararmeter can use it, with same results
    println(n)
    println(g)

}