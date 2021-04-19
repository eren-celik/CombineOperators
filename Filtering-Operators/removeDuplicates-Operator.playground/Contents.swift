import UIKit
import Combine

let words = "apple apple apple fruit fruit apple apple mango watermelon apple".components(separatedBy: " ").publisher

words
    .removeDuplicates()
    .sink {
    print($0)
}
