package basics


/**
 * Created by cyber on 2017-02-02.
 */
fun main(args: Array<String>) {

    //nullAbility()
    //if_statment()
    //flowBasedTyping()
   //s  for_loop()
    //whenSwitchStatment()
}

fun for_loop() {
   for (a in 1..10) print("$a \t")
  println()

  val intArray = intArrayOf(1, 2, 3, 4, 5)
  for ((index,value2) in intArray.withIndex()) print( "Index = $index, Value =  $value2 \n")
   //Destruction is very useful for all sort of things

  val capitals = mapOf("Paris" to " France", "London" to "UK") //Do a pair

  capitals.forEach { t, u -> print("$t, is the capital of  $u \n" ) }
}

private fun whenSwitchStatment() {
  var result = dealWithString()


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

private fun dealWithString(): Any {
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
  return result
}

fun flowBasedTyping() {
  var s:String? ="hjk" //get data from api, can be null

  if (s.isNullOrEmpty()) {
    println(s?.length)
  }

  var x: Cloneable  = intArrayOf(1,2,3)
  //Try to print its length
  //x.size  //Cannt call x.size in here

   if (x is IntArray){

     println("The Int Array Size is ${x.size}")
     println("The Int Array Size is ${(x as IntArray).size}")
     //Save yourself some typing and error free
   } //That is why I do not have to do any cast in here


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
    var y: String? = "Foo" // "Foo"
    var len = y?.length ?: -1
    print("The length $len ")
    print(y!!) //disable nullable checking for compiler

}


