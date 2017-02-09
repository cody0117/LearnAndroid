package functions

/**
 * Created by victor888 on 2/9/2017.
 * The goal is encapulate the function, make the function not accessable outside
 * Just an fun within fun after all
 */
fun main(args: Array<String>) {

  var (x,y)=solve_quadratic_equation(1.0, 10.0, 16.0)
  //var (x,y ) is the destructure
  println("x is $x  y is $y")
}

fun solve_quadratic_equation(a: Double, b: Double, c: Double) :Pair<Double,Double > {
  fun calculate_discriminant(): Double { //This is the right way, since variable already define it
    return b*b-4*a*c
  }
  val root_disc = Math.sqrt(calculate_discriminant())

  return Pair((-b+root_disc)/(2*a),(-b-root_disc)/(2*a))
}
