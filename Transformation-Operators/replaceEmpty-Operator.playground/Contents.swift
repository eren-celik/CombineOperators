import UIKit
import Combine

let empty = Empty<Int, Never>()

empty
    .replaceEmpty(with: 1)
    .sink(receiveCompletion: { print($0) }, receiveValue: { print($0) })


