package inheritance

/**
 * Created by victor888 on 2/12/2017.
 */


class PersoninClassProperty{
  var name: String ="" //All of this is properity , with getter and settier already
  var age:Int = -1


  val canVote: Boolean //Cannt not be assign to it but can get by the rules
    get() = age >=16

}
fun main(args: Array<String>) {
 val me = PersoninClassProperty()
 me.name ="Victor Tong"
  me.age =15
  print(me.canVote)


}