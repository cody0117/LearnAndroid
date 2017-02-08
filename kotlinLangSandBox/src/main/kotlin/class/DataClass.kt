package `class`

data class Personlocal(val name:String,val age: Int? =null) {
}

/**
 * Created by victor888 on 2/8/2017.
 */
fun main(args: Array<String>) {

  val persons = listOf(Personlocal("Alice",39),Personlocal("Bob",21))

  val oldest = persons.maxBy { it.age ?: 0 }

  println("The oldest person is $oldest");

}