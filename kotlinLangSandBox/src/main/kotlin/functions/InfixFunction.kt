package functions

/**
 * Created by victor888 on 2/10/2017.
 */
fun main(args: Array<String>) {
  infix_function()
}


fun infix_function() {
  val letter = 'z' downTo  'a'
  // downTo is possible because of the infix function with extension method
  letter.forEach { x-> print(x) }

  val capital = mapOf("Paris" to "France", "Hong Kong" to "China")
  //"in" is infix function too
  capital.forEach { t, u -> println("$t,$u") }

  var a = 12
  var b = 15

  println((a averageWidth b))


}

infix fun  Int.averageWidth(b: Int): Int = (this +b)/2
