import UIKit
import Combine

["A","B",nil,"C"].publisher.replaceNil(with: "*")
    .sink {
        print($0)
}
