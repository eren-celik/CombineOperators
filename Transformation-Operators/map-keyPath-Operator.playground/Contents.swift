import UIKit
import Combine


struct Point {
    let x: Int
    let y: Int
}

let publisher = PassthroughSubject<Point, Never>()

publisher.map(\.x, \.y).sink { x, y in
    print("x is \(x) and y is \(y)")
}

publisher.send(Point(x: 2, y: 10))
