import UIKit
import Combine

let numbers = (1...10).publisher
let publisher = (100...110).publisher

numbers.append(11,12)
.append(13,14)
.append(publisher)
    .sink {
    print($0)
}


