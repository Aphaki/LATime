//
//  Service.swift
//  LATime
//
//  Created by Sy Lee on 2022/04/21.
//

import Foundation

class Service {
    
   @Published var model = Model(currentTimeDate: Date())
   
//    func moveDay(_ day: Int) {
//      guard let movedDay =
//        Calendar.current.date(byAdding: .day, value: day, to: model.currentTimeDate)
//        else { print("Service - moveDay() : Cannot move day")
//          return }
//        model.currentTimeDate = movedDay
//    }
    func reload() {
        model.currentTimeDate = Date()
    }

}
