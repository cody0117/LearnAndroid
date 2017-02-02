package basics

/**
 * Created by cyber on 2017-02-02.
 */
fun main(args: Array<String>) {
    val result = "Value"
    val whenValue = when(result) {
        "Value" ->
        {
            println("it is a value")
            println("Second statment")
            "Return from first when case"

        }
        is String -> {
            println("Excellent")
            "Remove that"

        }



        else -> {
            println("it come to this?")
        }


    }

    println(whenValue)
}