package basics

/**
 * Created by cyber on 2017-02-02.
 */
fun main(args: Array<String>) {
    var streetNumber = 10
    var streetName = "High Street"
    val zip = "E11 P1"

    streetName ="Pudding Lane"

    val myLong = 10L
    val myFloat = 100F
    val myHex = 0x0F
    val myBinary =0b01

    val myInt =100
    val myLongAgain: Long = myInt.toLong() //Can do explicit type on demand helps a lot

    //String

    val myChar ='A'
    val myString = "My Stirng"

    val rawString = "Hello" +
            "This is a second line"+
            "And this is an other line"

    val multiplelines = """
        This is a string
        and this is an other line
        """
    val year = 10
    val message ="A decade is $year years"

    val name = "Mary"
    val anOtherMessage ="Length of name of $name ${name.length}"

    println(anOtherMessage)
}