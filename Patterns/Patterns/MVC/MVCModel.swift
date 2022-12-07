//
//  MVCModel.swift
//  Patterns
//
//  Created by Dmitry Zasenko on 22.11.22.
//

import Foundation

protocol MVCModelProtocol {
    func hash(_ string: String) -> String
}

struct MVCModel: MVCModelProtocol {
    func hash(_ string: String) -> String {
        return string.hashValue.description
    }
}
