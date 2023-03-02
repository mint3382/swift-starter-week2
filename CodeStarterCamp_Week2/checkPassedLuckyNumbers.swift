//
//  checkPassedLuckyNumbers.swift
//  CodeStarterCamp_Week2
//
//  Created by minsong kim on 2023/03/01.
//

import Foundation
var newLuckyNumbers: Set<Int> = Set<Int>()

func pickLuckyNumbers() {
    while newLuckyNumbers.count < 6 {
        newLuckyNumbers.insert(Int.random(in: (1...45)))
    }
}

var passedLuckyNumbers: Dictionary<String, Set> = [String: Set<Int>]()

func saveLuckyNumbers(time: Int) {
    for count in 1...time {
        pickLuckyNumbers()
        passedLuckyNumbers["\(count)회차"] = newLuckyNumbers
    }
}

func getPassedLuckyNumbers(time: Int) {
    if let numbers = passedLuckyNumbers["\(time)회차"] {
        print("\(time)회차의 로또 당첨 번호는 ", terminator: "")
        print(numbers.map{ (number: Int) -> String in return String(number)}.joined(separator:", "), terminator: " 입니다.")
    } else {
        print("회차 정보가 없습니다.")
    }
}
