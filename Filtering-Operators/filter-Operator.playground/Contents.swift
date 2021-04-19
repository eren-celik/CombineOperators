import UIKit
import Combine

let numbers = (1...20).publisher

numbers.filter { $0 % 2 == 0 }
    .sink {
        print($0)
}
