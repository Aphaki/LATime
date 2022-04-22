//
//  ViewModel.swift
//  LATime
//
//  Created by Sy Lee on 2022/04/21.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    
    var service = Service()
    
    @Published var dateStr = "Loading.."
    
    var subscription = Set<AnyCancellable>()
    var isSubscript = true
    
    
    
    let dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.timeZone = TimeZone(identifier: "America/Los_Angeles")
        df.dateFormat = "yyyy-MM-dd [ HH:mm:ss ]"
        return df
    }()
    
    func dayToStrAndSubscribe() {
      let cancellable = service.$model
            .sink { completion in
                print("ViewModel - dateToStr() Subscribe completion : \(completion) ")
            } receiveValue: {[weak self] model in
                guard let returnedStr = self?.dateFormatter.string(from: model.currentTimeDate) else { return }
                self?.dateStr = returnedStr
            }
        cancellable.store(in: &subscription)
    }
//    func moveDay(_ day: Int) {
//        service.moveDay(day)
//    }
    func reload(){
        service.reload()
    }
    func subscribeOnAndOff() {
        isSubscript.toggle()
        if !isSubscript {
            subscription.removeAll()
        } else {
            dayToStrAndSubscribe()
        }
    }
    init() {
        dayToStrAndSubscribe()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {[weak self] timer in
            self?.reload()
        }
    }
}
