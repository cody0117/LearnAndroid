import com.rsk.Provider
import sun.security.jca.Providers

/**
 * Created by victor888 on 1/26/2017.
 */

fun main(args: Array<String>) {

    var variable = "something"
    val variable2 ="something"
    //variable2 ="Something else" //Wont work due to val

    var myworks ="Put in the tab \t " + "With new line \n" +" with \n second line"
    println(myworks)

     var rawsString = """ Something greater than func string and int()"""
    println(rawsString)

    println("$rawsString has ${rawsString.length} numbers of length")
    //Use of dollars sign works really well

    var stringNullable :String? = null;
    var stringNullable2:String? = null; //nullable have to be in explicit type
    println(stringNullable?: "Is stringNullable really null then print -1") //=>-1


    printStars()
    println(saySomething())
    println(saySomething("What are ","you"))
    println(saySomething(secondWord = "John"))

    printStars()

     varargExample(1,2,3)
     varargExample("1","2","3","4")

    printStars()

//    listProviders()
//displayProviders()
       println("Is number 7 really are odd ${isodd(7)}");
       println("Is number 10 really are even ${isEven(10)}");




}

fun isEven(x: Int)= x%2==0



fun isodd(x: Int): Boolean {
return ( x%2==1)
}

fun varargExample (vararg name: Any) {

    println("Argument has ${name.size} element")
}
private fun printStars() {
    println("*******************")
}

private fun saySomething(firstword: String ="Hello", secondWord: String=" World"): String = "$firstword $secondWord"


private fun displayProviders() {
    val providers = Provider()

    val allproviders = providers.getProvider()

    val it = allproviders.iterator() //never use it directly

    while (it.hasNext()) {
        val provider = it.next()
        println(provider.name)

        provider.forEach { key, value -> println("\t $key: $value") }
    }
}

private fun listProviders() {
    val providers = getProvider()

    val it = providers.iterator() //never use it directly

    while (it.hasNext()) {
        val provider = it.next()
        println(provider.name)

        provider.forEach { key, value -> println("\t $key: $value") }
    }
}