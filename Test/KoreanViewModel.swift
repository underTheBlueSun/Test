
//  KoreanViewModel.swift
//  ANP
//
//  Created by underTheBlueSun on 2021/04/24.
//
import SwiftUI
//import RealmSwift
class KoreanViewModel: ObservableObject {
    
    @Published var openNewPage = false
    @Published var test1 = "국어"
    @Published var test2 = "111"
    @Published var count: Int = 0
//    var openNewPage = false
//    var test1 = "국어"
//    var test2 = "111"
//    var count: Int = 0
    
    func fetchData() {
//        self.test2 = test1 + "1111"
        self.test2 = test1 + "1학기 국어"
    }
    
    
    
}
