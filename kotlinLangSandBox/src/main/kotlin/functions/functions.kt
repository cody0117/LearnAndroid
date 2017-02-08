package functions

import java.util.Arrays.asList

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
  basicFunctionToExtensionMethod()

  defaultParmsAndNameArgument()

  //More than 5 parms, use data object that we solve the problem
  //

  varArgsSpreadOperator()

  println("4 *3  = ${triple(4)}")

  passVarargsIntoArray()


}

private fun varArgsSpreadOperator() {
  functionTakeUnlimitedArgs("1")  //Undefine number of Args beforehead
  functionTakeUnlimitedArgs("1", "And 2", " And 3")
  playWithSpreadOperator()
}

private fun defaultParmsAndNameArgument() {
  println("All 3 parms = " + sumWithDefaultParms(1, 4, 0))
  println("Default with 0 = " + sumWithDefaultParms(1, 4))
  //DefaultParms is so good that I dont have to create punch of overload function

  println("Parms name in action 0,10,0 = " + sumWithDefaultParms(i1 = 10))
  //Names Parms in action

  printDetails("Victor", phone = "852-8888888")
}

private fun basicFunctionToExtensionMethod() {
  var number4 = functionReturnAFour()
  takingString("Some Value")
  sum(2, 4)
  2.sumInShortForm(5)
}

private fun passVarargsIntoArray() {
  val argIntArray = intArrayOf(6, 7, 8, 9, 10)
  println("Sum this up should equal 15 == " + sumItUp(1, 2, 3, 4, 5, *argIntArray))
  //Goal is pass args into array
}

fun sumItUp(vararg values: Int): Int {
  var result = 0
  values.forEach { f -> result += f }
  return result
}

fun triple(x: Int) = x * 3 //This is no return and return type in here
//kotlin is very smart with this

fun playWithSpreadOperator() {
  val varargs = arrayOf(1, 2, 3) //Something passing in by vararg
  val b = asList(0, *varargs) //if we already have an arrray, we can  use this too
  println("The spread operator would work? $b")

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

fun printDetails(name: String = "", email: String = "", phone: String = "") {
  println("Name $name, Email : $email Phone $phone")
}

fun sumWithDefaultParms(i: Int = 0, i1: Int = 10, i2: Int = 0): Int {
  return i + i1 + i2
}

fun Int.sumInShortForm(i: Int): Int = this + i

fun sum(x: Int, y: Int): Int {
  return x + y
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
fun throwingException(): Nothing {
  throw Exception("This function throw Exception")
}
