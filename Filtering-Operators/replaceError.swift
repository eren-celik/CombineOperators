import UIKit
import Combine


enum ErrorType: Error {
  case failed
}

var publisher = PassthroughSubject<Int, Error>()

publisher
  .replaceError(with: 100)
    .sink(receiveCompletion: { print($0) }, receiveValue: { print($0) })

publisher.send(1)
publisher.send(2)
publisher.send(completion: .failure(ErrorType.failed))
