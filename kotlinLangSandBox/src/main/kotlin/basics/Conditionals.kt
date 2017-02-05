package basics


/**
 * Created by cyber on 2017-02-02.
 */
fun main(args: Array<String>) {
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
      print("String  Not Empyty "+ result
      //No break statment, it kind of break out
      )
    }
    is String-> {
      print("When " + result)
    }
    is Int ->  {
      print("When " +result
      )

    }
  }
}


