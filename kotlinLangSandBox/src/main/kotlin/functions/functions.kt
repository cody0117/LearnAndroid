package functions


/**
 * Created by victor888 on 2/6/2017.
 * Summary
 * Functions are declared using Keyword Fun
 * Unit is Void , Nothing is really Nothing
 * Default Parameters
 * Unlimited Parameters
 * Single Expression Function do not need function block
 */
fun main(args: Array<String>) {
  hello()
  //throwingException()
  var number4 = functionReturnAFour()
  takingString("Some Value")
   sum(2,4)
  2.sumInShortForm(5)

  println("All 3 parms = "+sumWithDefaultParms(1, 4, 0))
  println("Default with 0 = "+ sumWithDefaultParms(1, 4))
  //DefaultParms is so good that I dont have to create punch of overload function

  println("Parms name in action 0,10,0 = " + sumWithDefaultParms(i1 = 10))
  //Names Parms in action

  printDetails("Victor",phone = "852-8888888")

  //More than 5 parms, use data object that we solve the problem
  //

  functionTakeUnlimitedArgs("1")  //Undefine number of Args beforehead
  functionTakeUnlimitedArgs("1","And 2"," And 3")

  playWithSpreadOperator()


}

fun playWithSpreadOperator() {
  var list = listOf(1,2,3)
  //val someOtherList = listOf<Int>(0,*list)
//Todo Figure out what is Spread Operator
// println(someOtherList)
}

fun functionTakeUnlimitedArgs(vararg s: String) {
  reallyPrintingString(*s) //Refractor for other functions
}

private fun reallyPrintingString(vararg s: String) { //s: Array<out String> change to
  for (string in s) {
    println(string)
  }
}

fun printDetails(name: String="", email: String ="", phone: String="") {
  println("Name $name, Email : $email Phone $phone")
}

fun sumWithDefaultParms(i: Int=0, i1: Int=10, i2: Int=0): Int {
 return i + i1 + i2
}

fun Int.sumInShortForm(i: Int): Int = this +i

fun sum(x: Int, y: Int): Int {
  return x+y
}

fun takingString(unit: Any) {
  println(unit)
}

fun hello() {
  println("Helllo")

}

fun functionReturnAFour(): Int {
  return 4
}

//Read as input : output
fun throwingException() :Nothing {
  throw Exception("This function throw Exception")
}
