import UIKit
import Combine

/*
Challenge: Filter all the things

Create an example that publishes a collection of numbers from 1 through 100, and use filtering operators to:

1. Skip the first 50 values emitted by the upstream publisher.
2. Take the next 20 values after those first 50 values.
3. Only take even numbers.

The output of your example should produce the following numbers, one per line:
52 54 56 58 60 62 64 66 68 70 */

let numbers = (1...100).publisher

numbers.dropFirst(50)
    .prefix(20)
    .filter { $0 % 2 == 0 }
    .sink {
    print($0)
}



