



fun main(args: Array<String>) {


    val a:Int =64
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
    

}/**
 * Created by victor888 on 2/2/2017.
 */
