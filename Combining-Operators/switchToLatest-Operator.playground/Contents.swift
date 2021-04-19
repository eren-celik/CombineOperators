import UIKit
import Combine

let publisher1 = PassthroughSubject<String, Never>()
let publisher2 = PassthroughSubject<String, Never>()

let publishers = PassthroughSubject<PassthroughSubject<String, Never>,Never>()


publishers.switchToLatest().sink {
    print($0)
}

publishers.send(publisher1)

publisher1.send("Publisher 1 - Value 1")
publisher1.send("Publisher 1 - Value 2")

publishers.send(publisher2) // switching to publisher 2

publisher2.send("Publisher 2 - Value 1")

publisher1.send("Publisher 1 - Value 3")




