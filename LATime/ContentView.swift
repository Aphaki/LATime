//
//  ContentView.swift
//  LATime
//
//  Created by Sy Lee on 2022/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        VStack {
            Text("LosAngeles Time")
                .font(.largeTitle)
            Text(vm.dateStr)
                .font(.title2)
                .padding()
            ButtonView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
