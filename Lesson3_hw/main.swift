//
//  main.swift
//  Lesson3_hw
//
//  Created by Владимир on 13.04.2021.
//

import Foundation

enum EngineActivityStatus: String {
    case running = "Двигатель запущен"
    case notRunning = "Двигатель не запущен"
}

enum WindowPosition: String {
    case opened = "Окна открыты"
    case closed = "Окна закрыты"
    
}

enum FullnessOfTheCargoCompartment: String {
    case filledInAt25Per = "Заполнен на 25%"
    case filledInAt50Per = "Заполнен на 50%"
    case filledInAt75Per = "Заполнен на 75%"
    case filledInAt100Per = "Заполнен полностью"
    
}

enum PositionTrailer: String {
    case connected = "Прицеп соединен"
    case disconnected = "Прицеп разъединен"
    
}
//---------------Структура SportCar

struct SportCar {
    
    let carBrand: String
    let yearOfRelease: Int
    let trunkVolume: Double
    let maxSpeed: Int
    var engineActivityStatus: EngineActivityStatus
    var windowPosition: WindowPosition
    
    mutating func changeWindowPosition(_ action: WindowPosition) {
        windowPosition = action
    }
    
    mutating func changeEngineActivityStatus(_ action: EngineActivityStatus) {
        engineActivityStatus = action
    }
    
    init(carBrand: String, yearOfRelease: Int, trunkVolume: Double, maxSpeed: Int, engineActivityStatus: EngineActivityStatus, windowPosition: WindowPosition) {
        self.yearOfRelease = yearOfRelease
        self.carBrand = carBrand
        self.trunkVolume = trunkVolume
        self.maxSpeed = maxSpeed
        self.engineActivityStatus = engineActivityStatus
        self.windowPosition = windowPosition
    }
    
    init(yearOfRelease: Int) {
        self.yearOfRelease = yearOfRelease
        self.carBrand = "Porsche"
        self.trunkVolume = 85
        self.maxSpeed = 320
        self.engineActivityStatus = .notRunning
        self.windowPosition = .opened
    }
    
    func printSportCar() {
        print("Год выпуска - \(self.yearOfRelease)")
        print("Марка авто - \(self.carBrand)")
        print("Объем багажника - \(self.trunkVolume)")
        print("Максимальная скорость - \(self.maxSpeed)")
        print("Состояние двигателя - \(self.engineActivityStatus.rawValue)")
        print("Положение окон - \(self.windowPosition.rawValue)")
    }
}

var myCarOne = SportCar(carBrand: "Aston Martin", yearOfRelease: 2012, trunkVolume: 100, maxSpeed: 310, engineActivityStatus: .notRunning, windowPosition: .closed)

myCarOne.changeWindowPosition(.opened)
print(myCarOne.windowPosition)

myCarOne.printSportCar()

var myCarTwo = SportCar(yearOfRelease: 2008)

myCarTwo.changeEngineActivityStatus(.running)
print(myCarTwo.engineActivityStatus)

myCarTwo.printSportCar()

//---------------Структура TrunkCar

struct TrunkCar {
    
    let carBrand: String
    let yearOfRelease: Int
    let trunkVolume: Double
    var engineActivityStatus: EngineActivityStatus
    var fullnessOfTheCargoCompartment: FullnessOfTheCargoCompartment
    var positionTrailer: PositionTrailer
    
    
    mutating func changePositionTrailer(_ action: PositionTrailer) {
        positionTrailer = action
    }
    
    mutating func changeFullnessOfTheCargoCompartment(_ action: FullnessOfTheCargoCompartment) {
        fullnessOfTheCargoCompartment = action
    }
    
    init(carBrand: String, yearOfRelease: Int, trunkVolume: Double, engineActivityStatus: EngineActivityStatus, fullnessOfTheCargoCompartment: FullnessOfTheCargoCompartment, positionTrailer: PositionTrailer) {
        self.yearOfRelease = yearOfRelease
        self.carBrand = carBrand
        self.trunkVolume = trunkVolume
        self.engineActivityStatus = engineActivityStatus
        self.fullnessOfTheCargoCompartment = fullnessOfTheCargoCompartment
        self.positionTrailer = positionTrailer
        
    }
    
    init(carBrand: String) {
        self.carBrand = carBrand
        self.yearOfRelease = 2005
        self.trunkVolume = 85000
        self.engineActivityStatus = .running
        self.fullnessOfTheCargoCompartment = .filledInAt50Per
        self.positionTrailer = .disconnected
        
    }
    
    func printTrunkCar() {
        print("Год выпуска - \(self.yearOfRelease)")
        print("Марка авто - \(self.carBrand)")
        print("Объем грузового отсека - \(self.trunkVolume)")
        print("Состояние двигателя - \(self.engineActivityStatus.rawValue)")
        print("Объем загрузки грузового отсека - \(self.fullnessOfTheCargoCompartment.rawValue)")
        print("Состояние прицепа - \(positionTrailer.rawValue)")
        
    }
}

var myTrunkCarOne = TrunkCar(carBrand: "Ford", yearOfRelease: 2014, trunkVolume: 75000, engineActivityStatus: .notRunning, fullnessOfTheCargoCompartment: .filledInAt75Per, positionTrailer: .disconnected)

myTrunkCarOne.changePositionTrailer(.connected)
print(myTrunkCarOne.positionTrailer)

myTrunkCarOne.printTrunkCar()

var myTrunkCarTwo = TrunkCar(carBrand: "Howo")

myTrunkCarTwo.changeFullnessOfTheCargoCompartment(.filledInAt100Per)
print(myTrunkCarTwo.fullnessOfTheCargoCompartment)

myTrunkCarTwo.printTrunkCar()
