package `class`

/**
 * Created by victor888 on 2/6/2017.
 */
fun main(args: Array<String>) {

  val customer = CustomerWithProperty(10, "Victor")
  val customer2 = CustomerWithProperty(20, "Ann")

  val customerWithInitBlock = CustomerWithInitBlock(12, "Victor")

  val customerWithInitBlockSecondyConstructor = CustomerWithInitBlockSecondyConstructor(10,
      "Victor")
  println(customerWithInitBlock.initName)
  println(customerWithInitBlockSecondyConstructor.initName)
  println("${customer.initID}  ${customer.initName}")
  println("${customer2.initID}  ${customer2.initName}")

}

class CustomerWithInitBlockSecondyConstructor(var initID: Int, var initName: String) {
  init {
    initName = initName.toUpperCase()
  }

  constructor(email: String) : this(0, "Victor") {

  }

}

class CustomerWithInitBlock(var initID: Int, var initName: String) {
  init {
    initName = initName.toUpperCase() //No change to Uppsercase wihtout Assign Value
  }
}

class CustomerWithProperty(var initID: Int = 0, var initName: String = "") {//This is constructor
  //Using VAR to make property
  //Works with default argument
}

class CustomerWithoutProperty(initID: Int, initName: String) {//This is constructor
  //Using VAR to make property
}
