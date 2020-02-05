//Pass in args with ./gradlew run --args='run'
//Pass in args with java -jar chainsaw.jar arg1 arg2 -- make alias

fun main(args: Array<String>) {
    try {
        when(args[0]) {
            "install", "i" -> println("Install")
            "uninstall", "rm" -> println("Uninstall thing")
        }
    } catch(e: IndexOutOfBoundsException) {
        println("Need Inputs")
    }
}