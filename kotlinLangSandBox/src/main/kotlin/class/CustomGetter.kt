package `class`

import java.util.*

//The goal make the customer getter and setter
/**
 * Created by victor888 on 2/8/2017.
 */
fun main(args: Array<String>) {
  println(Square(45, 45).isSquare)
  val randomRecetangle = randomRecetangle()
  println("The new randome Recetangle ${randomRecetangle.height}  and ${randomRecetangle.width}is ${randomRecetangle.isSquare}")
}

fun randomRecetangle() : Square {
  var random = Random()
  return Square(random.nextInt(5),random.nextInt(5))

}

class Square(var width: Int, var height: Int) {
  val isSquare:Boolean //this is property
  get()
   {
    return width == height
  }
}
