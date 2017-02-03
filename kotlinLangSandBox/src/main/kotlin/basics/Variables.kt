package basics

/**
 * Created by cyber on 2017-02-02.
 */
fun main(args: Array<String>) {
    var streetNumber: Int = 10 // Alt + enter for explicit type
    var streetName = "High Street"
    val zip = "E11 P1"
    //Immutable Code have some advantage because of async function and
  //And do not have to maintain those state


    streetName ="Pudding Lane"

    val myLong = 10L  // No more explicit type, I can make it as 10L for specific Long Type
    val myFloat = 100F
    val myHex = 0x0F
    val myBinary =0b01

    val myInt =100 //Everything is an object in kotlin
    val myLongAgain: Long = myInt.toLong() //Can do explicit type on demand helps a lot but no implicit convertion

    //String

    val myChar ='A'
    val myString = "My Stirng"

   val escapeCharacters = "A new line \n"

    val rawString = "Hello" +
                    "This is a second line"+
                    "And this is an other line"




  val multiplelines = """
        This is a string
        and this is an other liner
        """
    val year = 10
    val message ="A decade is $year years"

    val name = "Mary"
    val anOtherMessage ="Length of name of $name ${name.length}"

    println(anOtherMessage)
}