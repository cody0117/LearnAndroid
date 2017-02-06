package basics


/**
 * Created by cyber on 2017-02-02.
 */
fun main(args: Array<String>) {

    nullAbility()
    if_statment()
    val myString = "Not Empty"
//  if (myString != "")  //This is basiclly a statement
//  {
//    println("Not empty")
//  } else if (myString.startsWith("N")) {
//    println("Is empty")
//  } else {
//
//  }

    var result = if (myString != "") { //This is call  expression bcause it returns a value
//    println("Not Empty at all")
        println("Not Empty")  // -> Not Empty
        20
    } else {
//    print("Is Empty")
        "Empty  "
    }


    when (result) {
        20 -> {
            print("String  is  Not Empyty " + result
                    //No break statment, it kind of break out
            )
        }
        is String -> {
            print("When " + result)
        }
        is Int -> {
            print("When " + result
            )

        }
    }
}

fun if_statment() {


    //There is no ?:
    var temp = 20
    var feel = if (temp < 10)
        "cold"
    else if (temp > 20)
        "warm"
    else "OK"
    println("\nThis is how it feel today $feel");
    println("This is how it feel today ${if (temp > 20) "warm" else "OK"}")
}

fun nullAbility() {
    var y: String? = null
    var len = y?.length ?: -1

    print("The length $len ")

}


