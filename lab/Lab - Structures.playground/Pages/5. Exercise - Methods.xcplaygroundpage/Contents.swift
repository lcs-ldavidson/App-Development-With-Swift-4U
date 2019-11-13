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
        print("\(title) by \(author) has \(pages) pages and costs $\(price).")
    }
}

var myBook = Book(title: "The legend of Drizzt", author: "R.A. Salvatore", pages: 1001, price: 19.99)
myBook.description()
/*:
 A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
 */
struct Post {
    var message: String
    var likes: Int = 0 {
        willSet {
            print("This post now has \(newValue) likes.")
        }
        didSet {
            print("This post did have \(oldValue) likes.")
        }
    }
    var numberOfComments: Int
    
    mutating func like() {
        likes += 1
    }
}

var goodPost = Post(message: "Alita: Battle Angel is a good movie.", likes: 3_541, numberOfComments: 54)

goodPost.like()
//: [Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
