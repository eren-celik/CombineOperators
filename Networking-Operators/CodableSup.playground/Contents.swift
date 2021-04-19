import UIKit
import Combine

struct Post: Codable {
    let title: String
    let body: String
}

func getPosts() -> AnyPublisher<[Post], Error> {
    
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
        fatalError("Invalid URL")
    }
    
    return URLSession.shared.dataTaskPublisher(for: url).map { $0.data }
    .decode(type: [Post].self, decoder: JSONDecoder())
    .eraseToAnyPublisher()
    
}

let cancellable = getPosts().sink(receiveCompletion: { _ in }, receiveValue: { print($0) })





