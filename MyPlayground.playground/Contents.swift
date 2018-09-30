
struct Person {
    let firstName: String
    let lastName: String
    
    func sayHello() {
        print("Hello there! My name is \(firstName) \(lastName).")
    }
}

let tim = Person(firstName: "Tim", lastName: "Schotte")
tim.sayHello()
