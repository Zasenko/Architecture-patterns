//
//  MVVMModel.swift
//  Patterns
//
//  Created by Dmitry Zasenko on 14.12.22.
//

import Foundation

class MVVMModel {}

extension MVVMModel: MVVMModelProtocol {
    func getHash(_ string: String) -> String {
        return string.hashValue.description
    } 
}
