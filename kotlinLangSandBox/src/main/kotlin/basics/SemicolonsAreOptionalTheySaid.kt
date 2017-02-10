package basics

/**
 * Created by cyber on 2017-02-10.
 */
fun main(args: Array<String>) {
    while (false) {}; println("Semicolons are required")
  //vs
    while (false){

    };println("Semicolons are optionals?")
}
// Kotlin's FAQ: Are semicolons required?
//a) Semicolons are required
//b) Semicolons are required
//and then compile error
//c) Semicolons are required
//Semicolons are optional
//d) Compile error