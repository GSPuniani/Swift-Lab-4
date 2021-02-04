//: [Previous](@previous)
import UIKit
/*:
 ## Exercise - Enumerations
 
 Define a `Suit` enum with four possible cases: `clubs`, `spades`, `diamonds`, and `hearts`.
 */
enum Suit {
    case clubs
    case spades
    case diamonds
    case hearts
}

/*:
 Imagine you are being shown a card trick and have to draw a card and remember the suit. Create a variable instance of `Suit` called `cardInHand` and assign it to the `hearts` case. Print out the instance.
 */
var cardInHand = Suit.hearts
print(cardInHand) //hearts
/*:
 Now imagine you have to put back the card you drew and draw a different card. Update the variable to be a spade instead of a heart.
 */
cardInHand = Suit.spades
print(cardInHand) //spades
/*:
 Imagine you are writing an app that will display a fun fortune (i.e. something like "You will soon find what you seek.") based on cards drawn. Write a function called `getFortune(cardSuit:)` that takes a parameter of type `Suit`. Inside the body of the function, write a switch statement based on the value of `cardSuit`. Print a different fortune for each `Suit` value. Call the function a few times, passing in different values for `cardSuit` each time.
 */
func getFortune(cardSuit: Suit) {
    switch cardSuit {
    case .clubs:
        print("Someone close to you will return a favor soon.")
    case .diamonds:
        print("There is a great deal of money involved in your near future.")
    case .hearts:
        print("A longtime wish of yours will come true soon.")
    case .spades:
        print("Tomorrow will be a fantastic day for you.")
    }
}

getFortune(cardSuit: .hearts)
getFortune(cardSuit: .diamonds)
getFortune(cardSuit: .spades)
getFortune(cardSuit: .clubs)
/*:
 Create a `Card` struct below. It should have two properties, one for `suit` of type `Suit` and another for `value` of type `Int`.
 */
struct Card {
    let suit: Suit
    let value: Value
    
    enum Value: Int {
        case ace = 1
        case two = 2
        case three = 3
        case four = 4
        case five = 5
        case six = 6
        case seven = 7
        case eight = 8
        case nine = 9
        case ten = 10
        case jack = 11
        case queen = 12
        case king = 13
    }
}

/*:
 How many values can playing cards have? How many values can `Int` be? It would be safer to have an enum for the card's value as well. Inside the struct above, create an enum for `Value`. It should have cases for `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Change the type of `value` from `Int` to `Value`. Initialize two `Card` objects and print a statement for each that details the card's value and suit.
 */
let queenHearts = Card(suit: .hearts, value: .queen)
let fiveSpades = Card(suit: .spades, value: .five)

print("The first card is of suit \(queenHearts.suit) and has a value of \(queenHearts.value.rawValue).")
print("The second card is of suit \(fiveSpades.suit) and has a value of \(fiveSpades.value.rawValue).")
