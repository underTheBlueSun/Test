//
//  KoreanView.swift
//  ANP
//
//  Created by underTheBlueSun on 2021/04/24.
//
import SwiftUI

struct KoreanView: View {
    @EnvironmentObject var koreanViewModel: KoreanViewModel

    @State private var selectedGrade = UserDefaults.standard.string(forKey: "Grade") ?? ""
    
    let grades = ["3학년", "4학년", "5학년", "6학년"]
    
    
    var body: some View {

        NavigationView {
            List {
                VStack {
                    Text("\(koreanViewModel.count)").font(.largeTitle)
                    
                    Button("숫자증가") {
                        koreanViewModel.count += 1
                    }
                }
                
                TextField("학교명", text: $koreanViewModel.test1)
                Text(koreanViewModel.test1)
                Text(koreanViewModel.test2)
            } // list
//            .onAppear(perform: { print("list") })
            .navigationBarTitle("홈", displayMode: .inline)
            .navigationBarColor(backgroundColor: .systemTeal, tintColor: .white)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Menu {
                        ForEach(grades, id: \.self) { grade in
                            Button(action: {
//                                UserDefaults.standard.set(grade, forKey: "Grade")
//                                selectedGrade = UserDefaults.standard.string(forKey: "Grade") ?? ""
                                koreanViewModel.test1  = selectedGrade
                                koreanViewModel.test2  = "3333"
                                koreanViewModel.fetchData()
                            }, label: {
                                Text(grade).foregroundColor(.white)
                            })
//                            .onAppear(perform: { print("button") })
                        }
                    } // menu
                    label: {
                        Text(selectedGrade).foregroundColor(.white)
                        Image(systemName: "gearshape.fill").font(.title2).foregroundColor(.white)
                    }
//                    .onAppear(perform: { print("menu") })
                } // toolbaritem
            } // toolbar

        } // NavigationView
        .onAppear(perform: { print("NavigationView") })
        .navigationViewStyle(StackNavigationViewStyle())

    }
}

struct KoreanView_Previews: PreviewProvider {
    static var previews: some View {
        KoreanView()
            .environmentObject(KoreanViewModel())
//            .environmentObject(Store())
    }
}
