fun AnotherOneMoving(x: Any): Unit {

    //use Shit + Ctrl + Up or down to move function around
}

fun movingAround(x: Any): Unit {
println(x)
    println("Something really happen") //Hit Shit Enter go to next line
    println("Something really happen")


}






fun main(args: Array<String>) {


    val a =64  //Hit Atl + Enter on the variable to make explicit type
    //Something u may just forgot the type
    val i = 64
    val b:Long =25
    val c:Float =2.5f
    val d:Double =60e5
    val anotherInt:Int =10101

    println("$a, $b , $c , $d") // Basic Syntax

    val e:Int
    e=a
    //e=anotherInt  //Cannt not be Re-assign



    val stringBuffer = StringBuffer("Test")
    stringBuffer.replace(1,1,"X")//Expected to be "XXest"


    println(stringBuffer);

    //stringBuffer = StringBuffer("Something Else") //Expect failed



}
