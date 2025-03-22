package io.github.emelent.plain

data class Person (
    val name: String,
    val age: Int
)


fun describe(person: Person): String {
    return "${person.name} ${person.age}"
}

fun greet(greeter: Person, recipient: Person): String {
    return "${greeter.name}: Hello ${recipient.name}"
}