import UIKit
import Combine


let isReady = PassthroughSubject<Void, Never>()
let taps = PassthroughSubject<Int, Never>()

taps.drop(untilOutputFrom: isReady).sink {
    print($0)
}

(1...10).forEach { n in
    taps.send(n)
    
    if n == 3 {
        isReady.send()
    }
    
}
//DropWhile

let numbers = (1...10).publisher

numbers
    .drop(while: { $0 % 3 == 0 })
    .sink{
        print($0)
    }





