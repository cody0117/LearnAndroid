package functions

import java.util.*

/**
 * Created by victor888 on 2/9/2017.
 *
 */
fun main(args: Array<String>) {
  extendion_function()
  createAnyNullTypeFunction()

}

fun createAnyNullTypeFunction() {
  val somenull: Nothing? = null
  somenull.printnull()

  val someValue = "12"
  someValue.printnull()
}


fun extendion_function() {
  val ztoaProgression = 'z' downTo 'a' // downTo keyboard are coming from extension method
  // ToDo: need to figure out why extension method are infix
//  public infix fun Char.downTo(to: Char): CharProgression {
//    return CharProgression.fromClosedRange(this, to, -1)
//  }

  val mylist = arrayListOf<Int>(1, 2, 3)
  println(mylist)
  mylist.swap(0,2)
  println(mylist)



}

fun Any?.printnull()
{
  if (this ==null) println("Object is null")
  else println("Object is ${this.toString()}")
}
private fun <E> ArrayList<E>.swap(index: Int, index2: Int) {

  val Temp = this[index]
  this[index] = this[index2]
  this[index2]= Temp
}
