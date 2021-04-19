import UIKit
import Combine


let publisher = ["A","B","C","D"].publisher

publisher.first().sink {
    print($0)
}

publisher.first(where: { "Cat".contains($0) }).sink {
    print($0)
}

print("Last Publisher")

publisher.last().sink {
    print($0)
}
