//
//  Repository.swift
//  Task8
//
//  Created by ちいつんしん on 2021/06/21.
//

import Foundation

class ValueRepository {

    private var value: Float = 0

    func save(value: Float){
        self.value = value
    }

    func load() -> Float{
        value
    }

}
