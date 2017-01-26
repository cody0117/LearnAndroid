/**
 * Created by victor888 on 1/26/2017.
 */

val name:String ="Kelvin"
val name2 = "Kelvin"
var name3 = "Kelvin"
//All vaild


fun main(args: Array<String>) {

    print("hello world")

    print("My name is $name")//string template

}

fun min(a:Int, b:Int): Int{
    return if (a<b) a else b  //"If" is not a statement but a expression
}

//What is statment vs expression
//Expression: Something which evaluates to a value. Example: 1+2/x
//Statement: A line of code which does something. Example: GOTO 100


class Person(val name: String)

class Person2 { //No Getter and No Setters
    val name:String? = ""
    val numberofChild:Int? = 0
}

