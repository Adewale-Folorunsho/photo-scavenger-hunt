//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Favorite hiking location",
                 description: "Where do you feel at one with nature?"),
            Task(title: "First date",
                 description: "Where did you have your first good first date"),
            Task(title: "Favorite garden",
                 description: "Where do you think has the prettiest flowers?")
        ]
    }
}
