//: [Previous](@previous)
import Foundation
/*:
 ## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description() {
        print("The book '\(title)' was written by \(author). It is \(pages) pages long and costs $\(price).")
    }
}

let book = Book(title: "Thank You For Arguing", author: "Jay Heinrichs", pages: 319, price: 12.99)
book.description()
/*:
 A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
 */
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like() {
        likes += 1
    }
}

var elonTweet = Post(message: "Gamestonk!!", likes: 252, numberOfComments: 51)
print(elonTweet.likes) //252
elonTweet.like()
print(elonTweet.likes) //253
//: [Next](@next)
