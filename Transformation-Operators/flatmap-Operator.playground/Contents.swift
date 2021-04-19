import UIKit
import Combine

struct School {
    let name: String
    let noOfStudents: CurrentValueSubject<Int, Never>
    
    init(name: String, noOfStudents: Int) {
        self.name = name
        self.noOfStudents = CurrentValueSubject(noOfStudents)
    }
}

let citySchool = School(name: "Fountain Head School", noOfStudents: 100)

let school = CurrentValueSubject<School,Never>(citySchool)

school
    .flatMap {
        $0.noOfStudents
    }
    .sink {
    print($0)
}

let townSchool = School(name: "Town Head School", noOfStudents: 45)

school.value = townSchool


citySchool.noOfStudents.value += 1
townSchool.noOfStudents.value += 10


