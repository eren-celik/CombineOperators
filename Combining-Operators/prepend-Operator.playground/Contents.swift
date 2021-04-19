import UIKit

let numbers = (1...5).publisher
let publisher2 = (500...510).publisher

numbers.prepend(100,101)
    .prepend(-1,-2)
    .prepend([45,67])
    .prepend(publisher2)
    .sink {
    print($0)
}
