package map

import java.util.*

/**
 * Created by victor888 on 2/11/2017.
 */

fun main(args: Array<String>) {
  val binaryReps = TreeMap<Char, String>()
  for (c in 'A'..'F') {
    val binary = Integer.toBinaryString(c.toInt())
    binaryReps[c] = binary
  }

  binaryReps.forEach { t, u -> println("$t,$u")  }
  //TreeMap ensure the keys are sorted by their naturla ordering (by its key), or by comparator
}