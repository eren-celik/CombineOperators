import UIKit
import Combine

func getPosts() -> AnyPublisher<Data, URLError> {
    
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
        fatalError("Invalid URL")
    }
    
    return URLSession.shared.dataTaskPublisher(for: url).map { $0.data }
    .eraseToAnyPublisher()
    
}

let cancellable = getPosts().sink(receiveCompletion: { _ in }, receiveValue: { print($0) })





