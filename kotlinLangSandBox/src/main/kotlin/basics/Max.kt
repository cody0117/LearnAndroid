package basics

/**
 * Created by victor888 on 2/8/2017.
 */
fun main(args: Array<String>) {
  println(max(25, 10))
}

fun max(i: Int, i1: Int):Int {
  return if (i>i1) i else i1
}
