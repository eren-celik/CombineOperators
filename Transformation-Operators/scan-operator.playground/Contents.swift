import UIKit

let publisher = (1...10).publisher

publisher.scan([]) { numbers, value -> [Int] in
    numbers + [value]
}.sink {
    print($0)
}



