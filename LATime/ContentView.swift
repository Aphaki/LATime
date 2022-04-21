//
//  ContentView.swift
//  LATime
//
//  Created by Sy Lee on 2022/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = ViewModel()
    
    var body: some View {
        VStack {
            Text("LosAngeles Time")
                .font(.largeTitle)
            Text(vm.dateStr)
                .font(.title2)
                .padding()
            HStack{
                Text("Yesterday")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .onTapGesture {
                        vm.moveDay(-1)
                    }
                Text("Reload")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .onTapGesture {
                        vm.reload()
                    }
                Text("Tomorrow")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .onTapGesture {
                        vm.moveDay(1)
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
