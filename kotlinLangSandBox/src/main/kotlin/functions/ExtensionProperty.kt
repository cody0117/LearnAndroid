package functions

/**
 * Created by victor888 on 2/9/2017.
 */

//This is a extension property
val String?.isEmpty : Boolean
     get() {
       return (this==null||this.length ==0 )
     }
//There is no default value for this

fun main(args: Array<String>) {

  val nullValue: String? = null
  val someString: String? = "Some String"
  println("Is nullVale really a nullValue? ${nullValue.isEmpty}")
  println("Is $someString really a nullValue? ${someString.isEmpty}")

}