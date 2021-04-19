import UIKit
import Combine

let publisher = [1,-45,3,45,100].publisher

publisher
.max()
    .sink {
        print($0)
}

