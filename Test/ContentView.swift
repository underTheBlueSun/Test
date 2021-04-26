//
//  ContentView.swift
//  Test
//
//  Created by underTheBlueSun on 2021/01/27.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var countRepo = CountRepo()

    var body: some View {
        VStack {
            Text("\(self.countRepo.count)").font(.largeTitle).onAppear(perform: { print("과학") })
            
            Button("숫자증가") {
                self.countRepo.count += 1
            }
        }
    }
}

class CountRepo: ObservableObject {
    @Published var count: Int = 0
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .environmentObject(KoreanViewModel())
//            .environmentObject(Store())
    }
}
