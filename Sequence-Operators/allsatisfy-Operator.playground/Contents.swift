import UIKit
import Combine

let publisher = [12,2,14,4,6,8].publisher

publisher.allSatisfy { $0 % 2 == 0 }.sink { allEven in
    print(allEven)
}

