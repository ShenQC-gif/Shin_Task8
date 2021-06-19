//
//  ValueRepository.swift
//  Task8
//
//  Created by akio0911 on 2021/06/19.
//

import Foundation

class ValueRepository {
    private var value: Float = 0

    func save(value: Float) {
        self.value = value
    }

    func load() -> Float {
        value
    }
}
