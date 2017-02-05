package basics
import basics.utils.someUtiils
import org.intellij.lang.annotations.Language

//1.1 -- Check out some of the convention from Jvaa
//-- Lower camelCase for names
//-- Method and Properties lower camelCase
//-- Semicolons  are optional(and only required in a single place)
// -- Types in Uppercase
//package following reserve notation com.victortong.kotlincouse.whatever.whatever
//Package do not have to match the folder name
//Multiple class per file allowed






/**
 * Created by victor888 on 2/2/2017.
 */
fun main(args: Array<String>) {

  someUtiils("Something interesting")
  someUtiils("Something interesting")

  @Language("JSON")
  var string = "{\"name\":\"dahi\"}"

  var somethingelse ="something"

  println(string)

//Ctrl+ Shit move Line again,nice

}