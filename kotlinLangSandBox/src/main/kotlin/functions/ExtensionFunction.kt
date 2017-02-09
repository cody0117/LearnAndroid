package functions

/**
 * Created by victor888 on 2/9/2017.
 *
 */
fun main(args: Array<String>) {
  extendion_function()
}

fun extendion_function() {
  val ztoaProgression = 'z' downTo 'a' // downTo keyboard are coming from extension method
  // ToDo: need to figure out why extension method are infix
//  public infix fun Char.downTo(to: Char): CharProgression {
//    return CharProgression.fromClosedRange(this, to, -1)
//  }
}
