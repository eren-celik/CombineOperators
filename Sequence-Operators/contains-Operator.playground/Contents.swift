import UIKit
import Combine

let publisher = ["A","B","C","D"].publisher

publisher.contains("F").sink {
    print($0)
}


