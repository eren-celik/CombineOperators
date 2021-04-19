import UIKit

let publisher = [1,2,3,4,5,6].publisher

publisher.reduce(0) { accumulator, value in
    print("accumulator: \(accumulator) and the value is \(value)")
    return accumulator + value
}.sink {
    print($0)
}
