//
//  ButtonView.swift
//  LATime
//
//  Created by Sy Lee on 2022/04/21.
//

import SwiftUI

struct ButtonView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        HStack{
//            Text("Yesterday")
//                .padding()
//                .background(.blue)
//                .foregroundColor(.white)
//                .cornerRadius(10)
//                .onTapGesture {
//                    vm.moveDay(-1)
//                }
//            Text("Reload")
//                .padding()
//                .background(.blue)
//                .foregroundColor(.white)
//                .cornerRadius(10)
//                .onTapGesture {
//                    vm.reload()
//                }
            Text("Play/Stop")
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .onTapGesture {
                    vm.subscribeOnAndOff()
                }
//            Text("Tomorrow")
//                .padding()
//                .background(.blue)
//                .foregroundColor(.white)
//                .cornerRadius(10)
//                .onTapGesture {
//                    vm.moveDay(1)
//                }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
