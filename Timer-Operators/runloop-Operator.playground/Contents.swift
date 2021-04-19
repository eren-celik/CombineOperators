import UIKit
import Combine


let runLoop = RunLoop.main

let subscription = runLoop.schedule(after: runLoop.now, interval: .seconds(2) , tolerance: .milliseconds(100)) {
    
    print("Timer fired")
    
}

runLoop.schedule(after: .init(Date(timeIntervalSinceNow: 3.0))) {
    subscription.cancel()
}

