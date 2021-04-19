import UIKit
import Combine

let numbers = (1...10).publisher

numbers.dropFirst(8)
    .sink {
        print($0)
}
