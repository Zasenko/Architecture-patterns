//
//  MVPModel.swift
//  Patterns
//
//  Created by Dmitry Zasenko on 07.12.22.
//

import Foundation

struct MVPModel {}

extension MVPModel: PresenterModel {
    
    //Model  получает уведомление от Presenter, обрабатывает и возвращает результат
    func getHast(_ string: String) -> String {
        return string.hashValue.description
    }
}
