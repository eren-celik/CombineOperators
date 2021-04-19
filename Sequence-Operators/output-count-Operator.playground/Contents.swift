import UIKit
import Combine

let publisher = ["A","B","C","D"].publisher

publisher.output(at: 2).sink {
    print($0)
}

print("Output(in)")

publisher.count().output(in: (0...2)).sink {
    print($0)
}
