import UIKit
import Combine

let numbers = (1...5000).publisher

numbers.ignoreOutput().sink(receiveCompletion: { print($0) }, receiveValue: { print($0) })
