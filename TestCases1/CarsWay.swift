import Foundation

enum CarType {
    case economy
    case offRoad
    case sport
}

enum CarTransmissionMode {
    case park
    case reverse
    case neutral
    case drive
}

class CarsWay {
    var miles = 0
    var type: CarType
    var transmissionMode: CarTransmissionMode

     init (type: CarType, transmissionMode: CarTransmissionMode) {
        self.type = type
        self.transmissionMode = transmissionMode
    }

    func start(minutes: Int) {
        var speed = 0
        if self.type == .economy && self.transmissionMode == .drive {
            speed = 35
          }

        if self.type == .offRoad && self.transmissionMode == .drive {
            speed = 50
        }

        if self.type == .sport && self.transmissionMode == .drive {
            speed = 70
        }

        self.miles = speed * (minutes / 60)
    }
}
